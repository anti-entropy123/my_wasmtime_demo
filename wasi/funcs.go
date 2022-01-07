package wasi

import (
	"fmt"
	"myDir/demo/consts"
	"myDir/demo/utils"
	"os"
	"os/exec"
	"reflect"
	"runtime"
	"strconv"
	"syscall"
	"unsafe"

	"github.com/bytecodealliance/wasmtime-go"
)

func getFdRead(
	store wasmtime.Storelike,
) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32, WasmI32, WasmI32, WasmI32},
			[]*wasmtime.ValType{WasmI32},
		),
		func(caller *wasmtime.Caller, params []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("FdRead!")
			fd := utils.GetFdHandle(params[0].I32())
			iovsCnt := params[2].I32()
			fmt.Println("iovsCnt is:", iovsCnt)
			memory := caller.GetExport("memory").Memory()
			baseAddr := memory.Data(store)
			iovsSH := &reflect.SliceHeader{
				Data: uintptr(utils.AddrOffset(baseAddr, params[1].I32())),
				Len:  int(iovsCnt),
				Cap:  int(iovsCnt),
			}
			iovsList := *(*[]Iovec)(unsafe.Pointer(iovsSH))
			totalCap := 0
			for _, iovec := range iovsList {
				totalCap += int(iovec.Len)
			}
			buf := make([]byte, totalCap)
			n, err := syscall.Read(fd, buf)
			if err != nil {
				fmt.Printf("syscall.Read fail, err=%+v\n", err)
				return nil, wasmtime.NewTrap(err.Error())
			}
			fmt.Println("buf length is: ", n)
			index := 0
			for i, iovec := range iovsList {
				fmt.Println("iovec ", i, iovec, "iovec size: ", unsafe.Sizeof(iovec))
				dataAddr := uintptr(baseAddr) + uintptr(iovec.Base)
				fmt.Printf("data Addr is %#08x\n", dataAddr)
				dataSH := &reflect.SliceHeader{
					Data: dataAddr,
					Len:  0,
					Cap:  int(iovec.Len),
				}
				data := *(*[]byte)(unsafe.Pointer(dataSH))
				right := utils.MinInt(index+int(iovec.Len), n)
				fmt.Println("right", right, index+int(iovec.Len), n)
				data = append(data, buf[index:right]...)
				index += int(iovec.Len)
				runtime.KeepAlive(dataSH)
				fmt.Println("content is", data)
			}
			*(*int)(utils.AddrOffset(baseAddr, params[3].I32())) = n
			fmt.Println("ret cnt ", *(*int)(utils.AddrOffset(baseAddr, params[3].I32())))
			return []wasmtime.Val{wasmtime.ValI32(int32(n))}, nil
		},
	)
}

func getFdWrite(store wasmtime.Storelike) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32, WasmI32, WasmI32, WasmI32},
			[]*wasmtime.ValType{WasmI32},
		),
		func(caller *wasmtime.Caller, params []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("FdWrite!")
			var (
				fd       = utils.GetFdHandle(params[0].I32())
				iovsCnt  = params[2].I32()
				memory   = caller.GetExport("memory").Memory()
				baseAddr = memory.Data(store)
				iovsSH   = &reflect.SliceHeader{
					Data: uintptr(utils.AddrOffset(baseAddr, params[1].I32())),
					Len:  int(iovsCnt),
					Cap:  int(iovsCnt),
				}
				iovsList = *(*[]Iovec)(unsafe.Pointer(iovsSH))
				data     = []byte{}
			)
			for _, iovs := range iovsList {
				fmt.Println("write iovs: ", iovs)
				if !(iovs.Len > 0) {
					continue
				}
				dataPtr := utils.AddrOffset(baseAddr, iovs.Base)
				sh := &reflect.SliceHeader{
					Data: uintptr(dataPtr),
					Len:  int(iovs.Len),
					Cap:  int(iovs.Len),
				}
				fmt.Println("part length: ", sh.Len)
				part := *(*[]byte)(unsafe.Pointer(sh))
				fmt.Printf("part is *%s*\n", part)
				data = append(data, part...)
			}
			n, err := syscall.Write(fd, data)
			if err != nil {
				fmt.Printf("syscall.Write fail, err=%+v\n", err)
				return nil, wasmtime.NewTrap(err.Error())
			}
			return []wasmtime.Val{wasmtime.ValI32(int32(n))}, nil
		},
	)
}

func getFdClose(
	store wasmtime.Storelike,
) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32},
			[]*wasmtime.ValType{WasmI32},
		),
		func(c *wasmtime.Caller, v []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("fdClose!")
			return []wasmtime.Val{wasmtime.ValI32(0)}, nil
		},
	)
}

func getFdSeek(
	store wasmtime.Storelike,
) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32, WasmI64, WasmI32, WasmI32},
			[]*wasmtime.ValType{WasmI32},
		),
		func(c *wasmtime.Caller, v []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("FdSeek!")
			return []wasmtime.Val{}, nil
		},
	)
}

func getProcExit(
	store wasmtime.Storelike,
) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32},
			[]*wasmtime.ValType{},
		),
		func(c *wasmtime.Caller, v []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("ProcExit!")
			return []wasmtime.Val{}, wasmtime.NewTrap("exit")
		},
	)
}

func getFdFdstatGet(
	store wasmtime.Storelike,
) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32, WasmI32},
			[]*wasmtime.ValType{WasmI32},
		),
		func(c *wasmtime.Caller, v []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("FdFdtatGet!")
			if len(v) != 2 {
				return nil, consts.NewBadParamsErr()
			}
			var (
				memory        = c.GetExport("memory").Memory()
				fd            = utils.GetFdHandle(v[0].I32())
				FdStatRetAddr = utils.AddrOffset(memory.Data(store), v[1].I32())
				file          = os.NewFile(uintptr(fd), "_temp_fd_for_fdstat_get")
				FdStatRet     = (*FdStat)(FdStatRetAddr)
			)
			fileStat, err := file.Stat()
			if err != nil {
				return nil, wasmtime.NewTrap(err.Error())
			}
			fmt.Printf("FileInfo.Sys(): %+v, %+v\n", fileStat.Sys(), reflect.TypeOf(fileStat.Sys()))
			*FdStatRet = *NewFdStat(fileStat)
			fmt.Printf("FdStatRet: %+v\n", (*FdStat)(FdStatRetAddr))
			return []wasmtime.Val{wasmtime.ValI32(0)}, nil
		},
	)
}

func getFdFdstatSetFlags(
	store wasmtime.Storelike,
) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32, WasmI32},
			[]*wasmtime.ValType{WasmI32},
		),
		func(c *wasmtime.Caller, v []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("FdFdstatSetFlags!")
			// TODO
			return []wasmtime.Val{wasmtime.ValI32(0)}, nil
		},
	)
}

func getFdPrestatGet(
	store wasmtime.Storelike,
) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32, WasmI32},
			[]*wasmtime.ValType{WasmI32},
		),
		func(c *wasmtime.Caller, v []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("FdPrestatGet!")
			if len(v) != 2 {
				return nil, consts.NewBadParamsErr()
			}
			var (
				memory  = c.GetExport("memory").Memory()
				fd      = utils.GetFdHandle(v[0].I32())
				bufAddr = utils.AddrOffset(memory.Data(store), v[1].I32())
			)
			fmt.Printf("the fd int is=%d\n", v[0].I32())
			pid := os.Getpid()
			cmd := exec.Command("ls", "-lh", "/proc/"+strconv.FormatInt(int64(pid), 10)+"/fd/"+strconv.FormatInt(int64(fd), 10))
			fmt.Println("exec cmd: ", cmd.String())
			out, err := cmd.CombinedOutput()
			if err != nil {
				fmt.Printf("exec fail, err=%+v\n", err)
				// return nil, wasmtime.NewTrap(err.Error())
			}
			fmt.Printf("current fd have:\n %s\n", string(out))
			fmt.Println("fd is", fd)
			file := os.NewFile(uintptr(fd), ".")
			fileStat, err := file.Stat()
			if err != nil {
				return []wasmtime.Val{wasmtime.ValI32(consts.Badf)}, nil
			}
			prestat := (*Prestat)(bufAddr)
			if fileStat.IsDir() {
				fmt.Printf("the fd=%d, is a dir, it's info=%+v\n", v[0].I32(), fileStat)
				// entries, err := file.Readdirnames(0)
				// if err != nil {
				// 	fmt.Printf("read dir content fail, err=%+v\n", err)
				// 	return nil, wasmtime.NewTrap(err.Error())
				// }
				// for i, entry := range entries {
				// 	fmt.Printf("[%d] dir entry name: %s\n", i, entry)
				// }
				prestat.tag = PREOPENTYPE_DIR
			} else {
				prestat.tag = Preopentype(1)
			}

			prestat.u.PrNameLen = int32(len(fileStat.Name()))
			return []wasmtime.Val{wasmtime.ValI32(0)}, nil
		},
	)
}

func getFdPrestatDirName(
	store wasmtime.Storelike,
) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32, WasmI32, WasmI32},
			[]*wasmtime.ValType{WasmI32},
		),
		func(c *wasmtime.Caller, v []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("FdPrestatDirName!")
			if len(v) != 3 {
				return nil, consts.NewBadParamsErr()
			}
			memory := c.GetExport("memory").Memory()
			fmt.Printf("the fd int is=%d\n", v[0].I32())
			fd := utils.GetFdHandle(v[0].I32())
			bufAddr := utils.AddrOffset(memory.Data(store), v[1].I32())
			bufSize := int(v[2].I32())
			fmt.Println("fd is", fd)
			file := os.NewFile(uintptr(fd), ".")
			fileStat, err := file.Stat()
			if err != nil {
				return nil, wasmtime.NewTrap(err.Error())
			}
			if len(fileStat.Name()) > bufSize {
				return nil, wasmtime.NewTrap("length more than buffer size")
			}
			bufferSH := &reflect.SliceHeader{
				Data: uintptr(bufAddr),
				Len:  0,
				Cap:  bufSize,
			}
			buffer := *(*[]byte)(unsafe.Pointer(bufferSH))
			buffer = append(buffer, []byte(fileStat.Name())...)
			fmt.Println("the first letter is: ", string([]byte{*(*byte)(bufAddr)}))
			return []wasmtime.Val{wasmtime.ValI32(0)}, nil
		},
	)
}

func getPathOpen(
	store wasmtime.Storelike,
) *wasmtime.Func {
	return wasmtime.NewFunc(
		store,
		wasmtime.NewFuncType(
			[]*wasmtime.ValType{WasmI32, WasmI32, WasmI32, WasmI32, WasmI32, WasmI64, WasmI64, WasmI32, WasmI32},
			[]*wasmtime.ValType{WasmI32},
		),
		func(c *wasmtime.Caller, v []wasmtime.Val) ([]wasmtime.Val, *wasmtime.Trap) {
			fmt.Println("PathOpen!")
			return []wasmtime.Val{wasmtime.ValI32(0)}, nil
		},
	)
}

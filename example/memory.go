package example

import (
	"fmt"
	"myDir/demo/utils"

	"github.com/bytecodealliance/wasmtime-go"
)

func ReadAndWriteMemory() {
	// Create our `Store` context and then compile a module and create an
	// instance from the compiled module all in one go.
	store := wasmtime.NewStore(wasmtime.NewEngine())
	wasm, err := wasmtime.Wat2Wasm(memoryWat)
	utils.Check(err)
	module, err := wasmtime.NewModule(store.Engine, wasm)
	utils.Check(err)
	instance, err := wasmtime.NewInstance(store, module, []wasmtime.AsExtern{})
	utils.Check(err)

	// Load up our exports from the instance
	memory := instance.GetExport(store, "memory").Memory()
	// sizeFn := instance.GetExport(store, "size").Func()
	// loadFn := instance.GetExport(store, "load").Func()
	// storeFn := instance.GetExport(store, "store").Func()

	// some helper functions we'll use below
	// call32 := func(f *wasmtime.Func, args ...interface{}) int32 {
	// 	ret, err := f.Call(store, args...)
	// 	utils.Check(err)
	// 	return ret.(int32)
	// }

	// call := func(f *wasmtime.Func, args ...interface{}) {
	// 	_, err := f.Call(store, args...)
	// 	utils.Check(err)
	// }

	// assertTraps := func(f *wasmtime.Func, args ...interface{}) {
	// 	_, err := f.Call(store, args...)
	// 	fmt.Printf("err=%+v\n", err)
	// 	_, ok := err.(*wasmtime.Trap)
	// 	if !ok {
	// 		panic("expected a trap")
	// 	}
	// }

	// Check the initial memory sizes/contents
	// buf := memory.UnsafeData(store)
	// fmt.Println(buf[0:4])
	// fmt.Println(buf[0x1000: 0x1004])
	// memory.size代表当前占用的wasm内存页; 每个页大小为2^16, 即65536字节
	// fmt.Println("memory.size: ", memory.Size(store))
	// fmt.Println("memory.DataSize", memory.DataSize(store))
	// assertTraps(loadFn, 0x20000)
	_, err = memory.Grow(store, 2)
	utils.Check(err)
	// Memory can fail to grow
	_, err = memory.Grow(store, 2)
	fmt.Printf("err=%+v\n", err)
}

var memoryWat string = `
(module
	(memory (export "memory") 2)

	(func (export "size") (result i32) (memory.size))
	(func (export "load") (param i32) (result i32)
	  (i32.load8_s (local.get 0))
	)
	(func (export "store") (param i32 i32)
	  (i32.store8 (local.get 0) (local.get 1))
	)

	(data (i32.const 0x1000) "\01\02\03\04")
)
`

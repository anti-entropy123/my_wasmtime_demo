package utils

import (
	"runtime"
	"syscall"
	"unsafe"
)

const sysType = runtime.GOOS

var fdTrans = map[int32]int32{
	1: int32(syscall.Stdout),
	0: int32(syscall.Stdin),
}

func Check(e error) {
	if e != nil {
		panic(e)
	}
}

func AddrOffset(base unsafe.Pointer, offset int32) unsafe.Pointer {
	return unsafe.Pointer((uintptr(base) + uintptr(offset*8)))
}

func GetFdHandle(linuxFd int32) syscall.Handle {
	fd := linuxFd
	if sysType == "windows" {
		windowsFd, exist := fdTrans[linuxFd]
		if exist {
			fd = windowsFd
		}
	}
	return syscall.Handle(fd)
}

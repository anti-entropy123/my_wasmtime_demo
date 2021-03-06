package wasi

import (
	"github.com/bytecodealliance/wasmtime-go"
)

var funcTable = map[string]func(store wasmtime.Storelike) *wasmtime.Func{
	"proc_exit":     getProcExit,
	"fd_write":      getFdWrite,
	"fd_read":       getFdRead,
	"fd_close":      getFdClose,
	"fd_seek":       getFdSeek,
	"fd_fdstat_get": getFdFdstatGet,
}

func GetWasmFunc(store wasmtime.Storelike, name string) *wasmtime.Func {
	if f, exist := funcTable[name]; exist {
		return f(store)
	} else {
		panic("not implemented func: " + name)
	}
}

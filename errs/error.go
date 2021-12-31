package errs

import "github.com/bytecodealliance/wasmtime-go"

func NewBadParamsErr() *wasmtime.Trap {
	return wasmtime.NewTrap("bad params")
}
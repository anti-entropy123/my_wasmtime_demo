package wasi

import "github.com/bytecodealliance/wasmtime-go"

var (
	WasmI32 *wasmtime.ValType = wasmtime.NewValType(wasmtime.KindI32)
	WasmI64 *wasmtime.ValType = wasmtime.NewValType(wasmtime.KindI64)
)

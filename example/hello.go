package example

import (
	"fmt"
	"myDir/demo/utils"

	"github.com/bytecodealliance/wasmtime-go"
)

func HelloFromWat() {
	// Almost all operations in wasmtime require a contextual `store`
	// argument to share, so create that first
	store := wasmtime.NewStore(wasmtime.NewEngine())
	// Compiling modules requires WebAssembly binary input, but the wasmtime
	// package also supports converting the WebAssembly text format to the
	// binary format.
	wasm, err := wasmtime.Wat2Wasm(helloWat)
	utils.Check(err)

	// Once we have our binary `wasm` we can compile that into a `*Module`
	// which represents compiled JIT code.
	module, err := wasmtime.NewModule(store.Engine, wasm)
	utils.Check(err)

	// Our `hello.wat` file imports one item, so we create that function
	// here.
	item := wasmtime.WrapFunc(store, func() {
		fmt.Println("Hello from Go!")
	})

	// Next up we instantiate a module which is where we link in all our
	// imports. We've got one import so we pass that in here.
	instance, err := wasmtime.NewInstance(store, module, []wasmtime.AsExtern{item})
	utils.Check(err)

	// After we've instantiated we can lookup our `run` function and call
	// it.
	run := instance.GetExport(store, "run").Func()
	_, err = run.Call(store)
	utils.Check(err)
}

var helloWat string = `
(module
(import "" "hello" (func $hello))
(func (export "run")
  (call $hello))
)
`

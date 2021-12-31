package handlers

import (
	"fmt"
	"myDir/demo/utils"
	"myDir/demo/wasi"

	"github.com/bytecodealliance/wasmtime-go"
)

func Load(filename string) {
	engine := wasmtime.NewEngine()
	wasiConfig := wasmtime.NewWasiConfig()
	wasiConfig.PreopenDir(".", "/")
	store := wasmtime.NewStore(engine)
	store.SetWasi(wasiConfig)
	module, err := wasmtime.NewModuleFromFile(store.Engine, filename)
	utils.Check(err)

	externs := []wasmtime.AsExtern{}
	for _, v := range module.Type().Imports() {
		externs = append(externs, wasi.GetWasmFunc(store, *v.Name()))
	}
	instance, err := wasmtime.NewInstance(store, module, externs)
	utils.Check(err)
	run := instance.GetExport(store, "_start").Func()
	_, err = run.Call(store)
	if err != nil && err.Error() != "exit" {
		fmt.Printf("LoadHelloWasm fail! err=%+v\n", err)
	}
}

func LoadHelloWasm() {
	Load("hello.wasm")
}

func LoadInputWasm() {
	Load("input.wasm")
}

func LoadReadFile() {
	Load("read_file.wasm")
}

func LoadSimpleInputWasm() {
	Load("simple_input.wat")
}

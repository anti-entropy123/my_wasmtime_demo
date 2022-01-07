package handlers

import (
	"fmt"
	"myDir/demo/utils"
	"myDir/demo/wasi"
	"path/filepath"

	"github.com/bytecodealliance/wasmtime-go"
)

const WASM_OBJECT_PATH = "wasm_object"

func Load(filename string) {
	engine := wasmtime.NewEngine()
	store := wasmtime.NewStore(engine)
	module, err := wasmtime.NewModuleFromFile(store.Engine, filepath.Join(WASM_OBJECT_PATH, filename))
	utils.Check(err)
	
	externs := []wasmtime.AsExtern{}
	for _, v := range module.Type().Imports() {
		externs = append(externs, wasi.GetWasmFunc(store, *v.Name()))
	}

	wasiConfig := wasmtime.NewWasiConfig()
	wasiConfig.PreopenDir(".", ".")
	store.SetWasi(wasiConfig)
	instance, err := wasmtime.NewInstance(store, module, externs)
	utils.Check(err)
	run := instance.GetExport(store, "_start").Func()
	_, err = run.Call(store)
	if err != nil && err.Error() != "exit" {
		fmt.Printf("load %s fail! err=%+v\n", filename, err)
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

func LoadFdStatWasm() {
	Load("fd_stat.wat")
}

func LoadSignal() {
	Load("handle_signal.wasm")
}
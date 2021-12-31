package example

import (
	"fmt"
	"io/ioutil"
	"myDir/demo/utils"

	"github.com/bytecodealliance/wasmtime-go"
)

var outFile = "std.txt"

func LinkWasi(filename string) {
	engine := wasmtime.NewEngine()
	// Create our module
	// wasm, err := wasmtime.Wat2Wasm(wasiWat)
	module, err := wasmtime.NewModuleFromFile(engine, filename)
	utils.Check(err)
	// module, err := wasmtime.NewModule(engine, wasm)
	// utils.Check(err)

	// Create a linker with WASI functions defined within it
	linker := wasmtime.NewLinker(engine)
	err = linker.DefineWasi()
	utils.Check(err)

	// Configure WASI imports to write stdout into a file, and then create
	// a `Store` using this wasi configuration.
	wasiConfig := wasmtime.NewWasiConfig()
	// wasiConfig.SetStdoutFile(outFile)
	store := wasmtime.NewStore(engine)
	store.SetWasi(wasiConfig)
	instance, err := linker.Instantiate(store, module)
	utils.Check(err)

	// Run the function
	nom := instance.GetExport(store, "_start").Func()
	_, err = nom.Call(store)
	fmt.Println("run link_wasi fail, err=", err)
	// utils.Check(err)
	out, err := ioutil.ReadFile(outFile)
	utils.Check(err)

	fmt.Println(string(out))
}

var wasiWat string = `
(module
    ;; Import the required fd_write WASI function which will write the given io vectors to stdout
    ;; The function signature for fd_write is:
    ;; (File Descriptor, *iovs, iovs_len, nwritten) -> Returns number of bytes written
    (import "wasi_unstable" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))

    (memory 1)
    (export "memory" (memory 0))

    ;; Write 'hello world\n' to memory at an offset of 8 bytes
    ;; Note the trailing newline which is required for the text to appear
    (data (i32.const 8) "hello world\n")

    (func $main (export "_start")
        ;; Creating a new io vector within linear memory
        (i32.store (i32.const 0) (i32.const 8))  ;; iov.iov_base - This is a pointer to the start of the 'hello world\n' string
        (i32.store (i32.const 4) (i32.const 12))  ;; iov.iov_len - The length of the 'hello world\n' string

        (call $fd_write
            (i32.const 1) ;; file_descriptor - 1 for stdout
            (i32.const 0) ;; *iovs - The pointer to the iov array, which is stored at memory location 0
            (i32.const 1) ;; iovs_len - We're printing 1 string stored in an iov - so one.
            (i32.const 20) ;; nwritten - A place in memory to store the number of bytes written
        )
        drop ;; Discard the number of bytes written from the top of the stack
    )
)
`

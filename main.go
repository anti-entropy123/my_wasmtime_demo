package main

import (
	"fmt"
	"myDir/demo/example"
	"myDir/demo/handlers"
	"sync"
)

func run(workload func(), concurrent int) {
	if concurrent <= 0 {
		concurrent = 1
	}
	wg := &sync.WaitGroup{}
	wg.Add(concurrent)

	for i := 0; i < concurrent; i++ {
		go handlers.Handle(wg, workload)
	}
	wg.Wait()
	fmt.Println("\nfinish!")
}

func main() {
	example.LinkWasi("read_file.wasm")
	// run(handlers.LoadReadFile, 1)
}

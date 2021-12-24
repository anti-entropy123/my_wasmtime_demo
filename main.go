package main

import (
	"fmt"
	"myDir/demo/example"
	"myDir/demo/handlers"
	"sync"
)

func main() {
	example.LinkWasi("input.wasm")
	num := 1
	wg := &sync.WaitGroup{}
	wg.Add(num)

	for i := 0; i < num; i++ {
		handlers.Handle(wg, handlers.LoadInputWasm)
	}
	wg.Wait()
	fmt.Println("\nfinish!")
}

package main

import (
	"fmt"
	"myDir/demo/handlers"
	"sync"
)

func main() {
	// example.LinkWasi("input.wasm")
	num := 10
	wg := &sync.WaitGroup{}
	wg.Add(num)

	for i := 0; i < num; i++ {
		go handlers.Handle(wg, handlers.LoadHelloWasm)
	}
	wg.Wait()
	fmt.Println("\nfinish!")
}

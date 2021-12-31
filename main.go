package main

import (
	"fmt"
	"myDir/demo/handlers"
	"sync"
)

func main() {
	num := 1
	wg := &sync.WaitGroup{}
	wg.Add(num)

	for i := 0; i < num; i++ {
		go handlers.Handle(wg, handlers.LoadSimpleInputWasm)
	}
	wg.Wait()
	fmt.Println("\nfinish!")
}

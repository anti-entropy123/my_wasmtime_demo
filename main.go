package main

import (
	"fmt"
	"myDir/demo/handlers"
)

func main() {
	// example.LinkWasi("simple_input.wat")
	handlers.LoadReadFile()
	// num := 1
	// wg := &sync.WaitGroup{}
	// wg.Add(num)

	// for i := 0; i < num; i++ {
	// 	handlers.Handle(wg, handlers.LoadInputWasm)
	// }
	// wg.Wait()
	fmt.Println("\nfinish!")
}

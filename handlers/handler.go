package handlers

import "sync"

func Handle(wg *sync.WaitGroup, f func()) {
	f()
	wg.Done()
}

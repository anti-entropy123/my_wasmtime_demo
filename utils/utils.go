package utils

import "unsafe"

func Check(e error) {
	if e != nil {
		panic(e)
	}
}

func AddrOffset(base unsafe.Pointer, offset int32) unsafe.Pointer {
	return unsafe.Pointer((uintptr(base) + uintptr(offset)))
}

func MinInt(a int, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func MaxInt(a int, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

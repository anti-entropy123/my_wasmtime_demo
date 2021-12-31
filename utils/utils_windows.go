package utils

import (
	"syscall"
)

var fdTrans = map[int32]int32{
	1: int32(syscall.Stdout),
	0: int32(syscall.Stdin),
}

func GetFdHandle(linuxFd int32) syscall.Handle {
	fd := linuxFd
	windowsFd, exist := fdTrans[linuxFd]
	if exist {
		fd = windowsFd
	}
	return syscall.Handle(fd)
}

package wasi

import (
	"io/fs"
)

type Iovec struct {
	Base int32
	Len  int32
}

type filetype uint8

const (
	unknown         filetype = 1 << iota // 0000 0001
	blockDevice                          // 0000 0010
	characterDevice                      // 0000 0100
	directory                            // 0000 1000
	regularFile                          // 0001 0000
	socketDgram                          // 0010 0000
	socketStream                         // 0100 0000
	symbolicLink                         // 1000 0000
)

func NewFiletypeByMode(fileMode fs.FileMode) filetype {
	var fileType filetype
	if fileMode&fs.ModeDevice > 0 {
		fileType |= blockDevice
	}
	if fileMode&fs.ModeCharDevice > 0 {
		fileType |= characterDevice
	}
	if fileMode.IsDir() {
		fileType |= directory
	}
	if fileMode.IsRegular() {
		fileType |= regularFile
	}
	if fileMode&fs.ModeSocket > 0 {
		fileType |= socketDgram
	}
	if fileMode&fs.ModeSymlink > 0 {
		fileType |= symbolicLink
	}
	return fileType
}

type fdflag uint16

const (
	_append fdflag = iota
)

type right uint8

type FdStat struct {
	fileType           filetype
	fdFlags            fdflag
	fsRightsBase       right
	fsRightsInheriting right
}

func NewFdStat(fileInfo fs.FileInfo) *FdStat {
	return &FdStat{
		fileType:           NewFiletypeByMode(fileInfo.Mode()),
		fdFlags:            0,
		fsRightsBase:       0,
		fsRightsInheriting: 0,
	}
}

# My Demo Wasm Runtime

## 环境准备

* 下载[wasi-sdk](https://github.com/WebAssembly/wasi-sdk/releases/tag/wasi-sdk-14), 将其中的bin目录路径加入PATH(方便使用其中的clang编译器), 将其中的`wasi-sysroot`目录拷贝至`/usr/wasi-sysroot`.

## 当前开发进度

|              | wasmtime | wasmer | wasmtime-go | demo |
| ------------ | :------: | :----: | :---------: | :--: |
| hello        |    ✅     |   ✅    |      ✅      |  ✅   |
| simple_input |    ✅     |   ✅    |      ✅      |  ✅   |
| input        |    ✅     |   ✅    |      ❌      |  ❌   |
| read_file    |    ✅     |   ❌    |      ❌      |  ❌   |
| signal       |    ❌     |   ❌    |      ❌      |  ❌   |


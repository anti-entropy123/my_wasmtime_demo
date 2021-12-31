(module
    ;; Import the required fd_write WASI function which will write the given io vectors to stdout
    ;; The function signature for fd_write is:
    ;; (File Descriptor, *iovs, iovs_len, nwritten) -> Returns number of bytes written
    (import "wasi_unstable" "fd_fdstat_get" (func $fd_fdstat_get (param i32 i32) (result i32)))
    (memory 1)
    (export "memory" (memory 0))

    ;; Write 'hello world\n' to memory at an offset of 8 bytes
    ;; Note the trailing newline which is required for the text to appear
    (data (i32.const 8) "hello ")

    (func $main (export "_start")
        (call $fd_fdstat_get
            (i32.const 0)
            (i32.const 0)
        )
        drop
    )
)
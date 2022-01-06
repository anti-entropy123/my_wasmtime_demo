(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i64 i32) (result i64)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32)))
  (type (;8;) (func (param i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__wasi_proc_exit (type 0)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__wasi_fd_write (type 6)))
  (func $__wasm_call_ctors (type 4)
    nop)
  (func $handler (type 0) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 11
      i32.eq
      if (result i32)  ;; label = @2
        i32.const 1063
      else
        local.get 0
        i32.const 4
        i32.ne
        br_if 1 (;@1;)
        i32.const 1024
      end
      local.set 1
      i32.const 1180
      i32.load
      drop
      block  ;; label = @2
        i32.const -1
        i32.const 0
        block (result i32)  ;; label = @3
          block (result i32)  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.tee 0
              i32.const 3
              i32.and
              if  ;; label = @6
                loop  ;; label = @7
                  local.get 0
                  i32.load8_u
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 0
                  i32.const 3
                  i32.and
                  br_if 0 (;@7;)
                end
              end
              loop  ;; label = @6
                local.get 0
                local.tee 2
                i32.const 4
                i32.add
                local.set 0
                local.get 2
                i32.load
                local.tee 3
                i32.const -1
                i32.xor
                local.get 3
                i32.const 16843009
                i32.sub
                i32.and
                i32.const -2139062144
                i32.and
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 2
              local.get 1
              i32.sub
              local.get 3
              i32.const 255
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              drop
              loop  ;; label = @6
                local.get 2
                i32.load8_u offset=1
                local.set 3
                local.get 2
                i32.const 1
                i32.add
                local.tee 0
                local.set 2
                local.get 3
                br_if 0 (;@6;)
              end
            end
            local.get 0
            local.get 1
            i32.sub
          end
          local.tee 0
          local.get 0
          block (result i32)  ;; label = @4
            i32.const 1180
            i32.load
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              local.get 1
              local.get 0
              call $__fwritex
              br 1 (;@4;)
            end
            local.get 1
            local.get 0
            call $__fwritex
          end
          local.tee 1
          i32.eq
          br_if 0 (;@3;)
          drop
          local.get 1
        end
        local.get 0
        i32.ne
        select
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        block  ;; label = @3
          i32.const 1184
          i32.load
          i32.const 10
          i32.eq
          br_if 0 (;@3;)
          i32.const 1124
          i32.load
          local.tee 0
          i32.const 1120
          i32.load
          i32.eq
          br_if 0 (;@3;)
          i32.const 1124
          local.get 0
          i32.const 1
          i32.add
          i32.store
          local.get 0
          i32.const 10
          i32.store8
          br 1 (;@2;)
        end
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 0
        global.set $__stack_pointer
        local.get 0
        i32.const 10
        i32.store8 offset=15
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1120
            i32.load
            local.tee 1
            if (result i32)  ;; label = @5
              local.get 1
            else
              call $__towrite
              br_if 2 (;@3;)
              i32.const 1120
              i32.load
            end
            i32.const 1124
            i32.load
            local.tee 1
            i32.eq
            br_if 0 (;@4;)
            i32.const 1184
            i32.load
            i32.const 10
            i32.eq
            br_if 0 (;@4;)
            i32.const 1124
            local.get 1
            i32.const 1
            i32.add
            i32.store
            local.get 1
            i32.const 10
            i32.store8
            br 1 (;@3;)
          end
          i32.const 1104
          local.get 0
          i32.const 15
          i32.add
          i32.const 1
          i32.const 1140
          i32.load
          call_indirect (type 1)
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u offset=15
          drop
        end
        local.get 0
        i32.const 16
        i32.add
        global.set $__stack_pointer
      end
    end
    i32.const 11420
    i32.load
    local.tee 0
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        call $close_file
        local.get 0
        i32.load offset=56
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    i32.const 11424
    i32.load
    call $close_file
    i32.const 1248
    i32.load
    call $close_file
    i32.const 11424
    i32.load
    call $close_file
    i32.const 1
    call $__wasi_proc_exit
    unreachable)
  (func $_start (type 4)
    i32.const 11
    call $signal
    i32.const 4
    call $signal
    unreachable)
  (func $__errno_location (type 2) (result i32)
    i32.const 1264)
  (func $signal (type 0) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 288
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.or
    local.set 3
    i32.const 136
    local.set 2
    loop  ;; label = @1
      local.get 3
      i32.const 0
      i32.store8
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 2
      i32.const 1
      i32.sub
      local.tee 2
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 268435456
    i32.store offset=132
    local.get 1
    i32.const 1
    i32.store
    local.get 1
    i32.const 144
    i32.add
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.const 65
      i32.ge_u
      if  ;; label = @2
        i32.const 1264
        i32.const 28
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.const 140
        i32.mul
        i32.const 1280
        i32.add
        i32.const 140
        call $__memcpy
      end
      local.get 1
      if  ;; label = @2
        local.get 0
        i32.const 140
        i32.mul
        i32.const 1280
        i32.add
        local.get 1
        i32.const 140
        call $__memcpy
      end
    end
    local.get 1
    i32.load offset=144
    drop
    local.get 1
    i32.const 288
    i32.add
    global.set $__stack_pointer)
  (func $__memcpy (type 7) (param i32 i32 i32)
    (local i32 i32)
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 1
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            local.get 2
            i32.const 0
            i32.le_s
            i32.or
            br_if 1 (;@3;)
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 1
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              i32.const 3
              i32.and
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 4
            i32.sub
            local.tee 4
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 1
              i32.load8_u
              i32.store8
              local.get 2
              local.get 1
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get 2
              local.get 1
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get 2
              local.get 1
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 2
              i32.const 4
              i32.add
              local.tee 2
              local.get 4
              i32.le_u
              br_if 0 (;@5;)
            end
            br 3 (;@1;)
          end
          local.get 0
          local.set 2
          br 2 (;@1;)
        end
        local.get 0
        local.set 2
      end
      block  ;; label = @2
        local.get 3
        i32.const -4
        i32.and
        local.tee 0
        i32.const 64
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.const -64
        i32.add
        local.tee 4
        i32.gt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.load
          i32.store
          local.get 2
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 2
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 2
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 2
          local.get 1
          i32.load offset=16
          i32.store offset=16
          local.get 2
          local.get 1
          i32.load offset=20
          i32.store offset=20
          local.get 2
          local.get 1
          i32.load offset=24
          i32.store offset=24
          local.get 2
          local.get 1
          i32.load offset=28
          i32.store offset=28
          local.get 2
          local.get 1
          i32.load offset=32
          i32.store offset=32
          local.get 2
          local.get 1
          i32.load offset=36
          i32.store offset=36
          local.get 2
          local.get 1
          i32.load offset=40
          i32.store offset=40
          local.get 2
          local.get 1
          i32.load offset=44
          i32.store offset=44
          local.get 2
          local.get 1
          i32.load offset=48
          i32.store offset=48
          local.get 2
          local.get 1
          i32.load offset=52
          i32.store offset=52
          local.get 2
          local.get 1
          i32.load offset=56
          i32.store offset=56
          local.get 2
          local.get 1
          i32.load offset=60
          i32.store offset=60
          local.get 1
          i32.const -64
          i32.sub
          local.set 1
          local.get 2
          i32.const -64
          i32.sub
          local.tee 2
          local.get 4
          i32.le_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load
        i32.store
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        local.get 0
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    i32.lt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $__wasi_syscall_ret (type 3) (param i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    i32.const 1264
    local.get 0
    i32.store
    i32.const -1)
  (func $__stdio_write (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 4
    i32.const 2
    local.set 7
    local.get 3
    i32.const 16
    i32.add
    local.set 1
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=60
          local.get 1
          i32.const 2
          local.get 3
          i32.const 12
          i32.add
          call $__wasi_fd_write
          call $__wasi_syscall_ret
          i32.eqz
          if  ;; label = @4
            loop  ;; label = @5
              local.get 4
              local.get 3
              i32.load offset=12
              local.tee 5
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              i32.const 0
              i32.lt_s
              br_if 3 (;@2;)
              local.get 1
              local.get 5
              local.get 1
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 6
              i32.const 3
              i32.shl
              i32.add
              local.tee 9
              local.get 5
              local.get 8
              i32.const 0
              local.get 6
              select
              i32.sub
              local.tee 8
              local.get 9
              i32.load
              i32.add
              i32.store
              local.get 1
              i32.const 12
              i32.const 4
              local.get 6
              select
              i32.add
              local.tee 9
              local.get 9
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 4
              local.get 5
              i32.sub
              local.set 4
              local.get 0
              i32.load offset=60
              local.get 1
              i32.const 8
              i32.add
              local.get 1
              local.get 6
              select
              local.tee 1
              local.get 7
              local.get 6
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call $__wasi_fd_write
              call $__wasi_syscall_ret
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 4
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      local.get 1
      i32.load offset=4
      i32.sub
    end
    local.set 4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $__emscripten_stdout_close (type 3) (param i32) (result i32)
    i32.const 0)
  (func $__emscripten_stdout_seek (type 5) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func $close_file (type 0) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=76
      drop
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=28
      i32.ne
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 1)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=40
      call_indirect (type 5)
      drop
    end)
  (func $__towrite (type 2) (result i32)
    (local i32)
    i32.const 1176
    i32.const 1176
    i32.load
    local.tee 0
    i32.const 1
    i32.sub
    local.get 0
    i32.or
    i32.store
    i32.const 1104
    i32.load
    local.tee 0
    i32.const 8
    i32.and
    if  ;; label = @1
      i32.const 1104
      local.get 0
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    i32.const 1108
    i64.const 0
    i64.store align=4
    i32.const 1132
    i32.const 1148
    i32.load
    local.tee 0
    i32.store
    i32.const 1124
    local.get 0
    i32.store
    i32.const 1120
    local.get 0
    i32.const 1152
    i32.load
    i32.add
    i32.store
    i32.const 0)
  (func $__fwritex (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 1120
      i32.load
      local.tee 2
      if (result i32)  ;; label = @2
        local.get 2
      else
        call $__towrite
        br_if 1 (;@1;)
        i32.const 1120
        i32.load
      end
      i32.const 1124
      i32.load
      local.tee 4
      i32.sub
      i32.gt_u
      if  ;; label = @2
        i32.const 1104
        local.get 0
        local.get 1
        i32.const 1140
        i32.load
        call_indirect (type 1)
        return
      end
      block  ;; label = @2
        i32.const 1184
        i32.load
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.tee 2
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.set 2
            br 2 (;@2;)
          end
          local.get 0
          local.get 2
          i32.const 1
          i32.sub
          local.tee 3
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 1104
        local.get 0
        local.get 2
        i32.const 1140
        i32.load
        call_indirect (type 1)
        local.tee 3
        local.get 2
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.add
        local.set 0
        local.get 1
        local.get 2
        i32.sub
        local.set 1
        i32.const 1124
        i32.load
        local.set 4
      end
      local.get 4
      local.get 0
      local.get 1
      call $__memcpy
      i32.const 1124
      i32.const 1124
      i32.load
      local.get 1
      i32.add
      i32.store
      local.get 1
      local.get 2
      i32.add
      local.set 3
    end
    local.get 3)
  (func $stackSave (type 2) (result i32)
    global.get $__stack_pointer)
  (func $stackRestore (type 0) (param i32)
    local.get 0
    global.set $__stack_pointer)
  (func $stackAlloc (type 3) (param i32) (result i32)
    global.get $__stack_pointer
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set $__stack_pointer
    local.get 0)
  (table (;0;) 6 6 funcref)
  (memory (;0;) 256 256)
  (global $__stack_pointer (mut i32) (i32.const 5254320))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "_start" (func $_start))
  (export "__errno_location" (func $__errno_location))
  (export "stackSave" (func $stackSave))
  (export "stackRestore" (func $stackRestore))
  (export "stackAlloc" (func $stackAlloc))
  (elem (;0;) (i32.const 1) func $handler $__wasm_call_ctors $__emscripten_stdout_close $__stdio_write $__emscripten_stdout_seek)
  (data $.rodata (i32.const 1024) " now got an illegal instruction signal\00now got a segmentation violation signal")
  (data $.data (i32.const 1104) "\05")
  (data $.data.1 (i32.const 1116) "\03")
  (data $.data.2 (i32.const 1140) "\04\00\00\00\05\00\00\00\98(\00\00\00\04")
  (data $.data.3 (i32.const 1164) "\01")
  (data $.data.4 (i32.const 1180) "\ff\ff\ff\ff\0a")
  (data $.data.5 (i32.const 1248) "P\04"))

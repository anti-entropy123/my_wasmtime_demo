(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i64 i64 i64 i64)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i64 i32) (result i64)))
  (type (;9;) (func (param i32 i64 i64 i32)))
  (type (;10;) (func))
  (type (;11;) (func (param i32 i32) (result i32)))
  (type (;12;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;13;) (func (param i64)))
  (type (;14;) (func (result i64)))
  (type (;15;) (func (param i32 i32 i64)))
  (type (;16;) (func (param i64 i64 i64 i64) (result i32)))
  (type (;17;) (func (param i64 i64 i64) (result i32)))
  (type (;18;) (func (param i32 f64)))
  (type (;19;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;20;) (func (param i32 i32 i32 i32 i32)))
  (type (;21;) (func (param i32) (result f64)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__wasi_fd_close (type 0)))
  (import "wasi_snapshot_preview1" "fd_read" (func $__wasi_fd_read (type 7)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__wasi_fd_seek (type 12)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__wasi_proc_exit (type 3)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__wasi_fd_write (type 7)))
  (func $__wasm_call_ctors (type 10)
    i32.const 3608
    i32.const 3496
    i32.store
    i32.const 3536
    i32.const 42
    i32.store)
  (func $_start (type 10)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 f64)
    call $__wasm_call_ctors
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 25
    global.set $__stack_pointer
    local.get 25
    local.get 25
    i32.const 32
    i32.add
    local.tee 31
    i32.store offset=16
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 30
    global.set $__stack_pointer
    local.get 30
    local.get 25
    i32.const 16
    i32.add
    local.tee 28
    i32.store offset=12
    i32.const 1043
    local.set 3
    global.get $__stack_pointer
    i32.const 304
    i32.sub
    local.tee 9
    global.set $__stack_pointer
    i32.const 2188
    i32.load
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 2116
          i32.load
          br_if 0 (;@3;)
          call $__toread
          drop
          i32.const 2116
          i32.load
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 1043
        i32.load8_u
        local.tee 6
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const 255
                    i32.and
                    call $isspace
                    if  ;; label = @9
                      loop  ;; label = @10
                        local.get 3
                        local.tee 6
                        i32.const 1
                        i32.add
                        local.set 3
                        local.get 6
                        i32.load8_u offset=1
                        call $isspace
                        br_if 0 (;@10;)
                      end
                      i64.const 0
                      call $__shlim
                      loop  ;; label = @10
                        block (result i32)  ;; label = @11
                          i32.const 2116
                          i32.load
                          local.tee 0
                          i32.const 2216
                          i32.load
                          i32.ne
                          if  ;; label = @12
                            i32.const 2116
                            local.get 0
                            i32.const 1
                            i32.add
                            i32.store
                            local.get 0
                            i32.load8_u
                            br 1 (;@11;)
                          end
                          call $__shgetc
                        end
                        call $isspace
                        br_if 0 (;@10;)
                      end
                      i32.const 2116
                      i32.load
                      local.set 3
                      i32.const 2224
                      i64.load
                      i64.const 0
                      i64.ge_s
                      if  ;; label = @10
                        i32.const 2116
                        local.get 3
                        i32.const 1
                        i32.sub
                        local.tee 3
                        i32.store
                      end
                      local.get 3
                      i32.const 2156
                      i32.load
                      i32.sub
                      i64.extend_i32_s
                      i32.const 2232
                      i64.load
                      local.get 39
                      i64.add
                      i64.add
                      local.set 39
                      br 1 (;@8;)
                    end
                    block (result i32)  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          i32.load8_u
                          i32.const 37
                          i32.eq
                          if  ;; label = @12
                            local.get 3
                            i32.load8_u offset=1
                            local.tee 0
                            i32.const 42
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 0
                            i32.const 37
                            i32.ne
                            br_if 2 (;@10;)
                          end
                          i64.const 0
                          call $__shlim
                          block  ;; label = @12
                            local.get 3
                            i32.load8_u
                            i32.const 37
                            i32.eq
                            if  ;; label = @13
                              loop  ;; label = @14
                                block (result i32)  ;; label = @15
                                  i32.const 2116
                                  i32.load
                                  local.tee 0
                                  i32.const 2216
                                  i32.load
                                  i32.ne
                                  if  ;; label = @16
                                    i32.const 2116
                                    local.get 0
                                    i32.const 1
                                    i32.add
                                    i32.store
                                    local.get 0
                                    i32.load8_u
                                    br 1 (;@15;)
                                  end
                                  call $__shgetc
                                end
                                local.tee 6
                                call $isspace
                                br_if 0 (;@14;)
                              end
                              local.get 3
                              i32.const 1
                              i32.add
                              local.set 3
                              br 1 (;@12;)
                            end
                            i32.const 2116
                            i32.load
                            local.tee 0
                            i32.const 2216
                            i32.load
                            i32.ne
                            if  ;; label = @13
                              i32.const 2116
                              local.get 0
                              i32.const 1
                              i32.add
                              i32.store
                              local.get 0
                              i32.load8_u
                              local.set 6
                              br 1 (;@12;)
                            end
                            call $__shgetc
                            local.set 6
                          end
                          local.get 3
                          i32.load8_u
                          local.get 6
                          i32.ne
                          if  ;; label = @12
                            i32.const 2224
                            i64.load
                            i64.const 0
                            i64.ge_s
                            if  ;; label = @13
                              i32.const 2116
                              i32.const 2116
                              i32.load
                              i32.const 1
                              i32.sub
                              i32.store
                            end
                            local.get 6
                            i32.const 0
                            i32.ge_s
                            br_if 11 (;@1;)
                            i32.const 0
                            local.set 2
                            local.get 29
                            i32.eqz
                            br_if 10 (;@2;)
                            br 11 (;@1;)
                          end
                          i32.const 2116
                          i32.load
                          i32.const 2156
                          i32.load
                          i32.sub
                          i64.extend_i32_s
                          i32.const 2232
                          i64.load
                          local.get 39
                          i64.add
                          i64.add
                          local.set 39
                          local.get 3
                          local.set 6
                          br 3 (;@8;)
                        end
                        i32.const 0
                        local.set 8
                        local.get 3
                        i32.const 2
                        i32.add
                        br 1 (;@9;)
                      end
                      block  ;; label = @10
                        local.get 0
                        call $isdigit
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 3
                        i32.load8_u offset=2
                        i32.const 36
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 3
                        i32.load8_u offset=1
                        i32.const 48
                        i32.sub
                        local.set 2
                        global.get $__stack_pointer
                        i32.const 16
                        i32.sub
                        local.tee 0
                        local.get 28
                        i32.store offset=12
                        local.get 0
                        local.get 28
                        local.get 2
                        i32.const 2
                        i32.shl
                        i32.const 4
                        i32.sub
                        i32.const 0
                        local.get 2
                        i32.const 1
                        i32.gt_u
                        select
                        i32.add
                        local.tee 0
                        i32.const 4
                        i32.add
                        i32.store offset=8
                        local.get 0
                        i32.load
                        local.set 8
                        local.get 3
                        i32.const 3
                        i32.add
                        br 1 (;@9;)
                      end
                      local.get 28
                      i32.load
                      local.set 8
                      local.get 28
                      i32.const 4
                      i32.add
                      local.set 28
                      local.get 3
                      i32.const 1
                      i32.add
                    end
                    local.set 6
                    i32.const 0
                    local.set 22
                    i32.const 0
                    local.set 3
                    local.get 6
                    i32.load8_u
                    call $isdigit
                    if  ;; label = @9
                      loop  ;; label = @10
                        local.get 6
                        i32.load8_u
                        local.get 3
                        i32.const 10
                        i32.mul
                        i32.add
                        i32.const 48
                        i32.sub
                        local.set 3
                        local.get 6
                        i32.load8_u offset=1
                        local.set 0
                        local.get 6
                        i32.const 1
                        i32.add
                        local.set 6
                        local.get 0
                        call $isdigit
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 6
                    i32.load8_u
                    local.tee 7
                    i32.const 109
                    i32.ne
                    if (result i32)  ;; label = @9
                      local.get 6
                    else
                      i32.const 0
                      local.set 14
                      local.get 8
                      i32.const 0
                      i32.ne
                      local.set 22
                      local.get 6
                      i32.load8_u offset=1
                      local.set 7
                      i32.const 0
                      local.set 20
                      local.get 6
                      i32.const 1
                      i32.add
                    end
                    local.tee 0
                    i32.const 1
                    i32.add
                    local.set 6
                    i32.const 3
                    local.set 15
                    local.get 22
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 7
                                i32.const 65
                                i32.sub
                                br_table 4 (;@10;) 12 (;@2;) 4 (;@10;) 12 (;@2;) 4 (;@10;) 4 (;@10;) 4 (;@10;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 3 (;@11;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 4 (;@10;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 4 (;@10;) 12 (;@2;) 12 (;@2;) 4 (;@10;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 12 (;@2;) 4 (;@10;) 12 (;@2;) 4 (;@10;) 4 (;@10;) 4 (;@10;) 4 (;@10;) 4 (;@10;) 0 (;@14;) 4 (;@10;) 5 (;@9;) 12 (;@2;) 1 (;@13;) 12 (;@2;) 4 (;@10;) 4 (;@10;) 4 (;@10;) 12 (;@2;) 12 (;@2;) 4 (;@10;) 2 (;@12;) 4 (;@10;) 12 (;@2;) 12 (;@2;) 4 (;@10;) 12 (;@2;) 2 (;@12;) 12 (;@2;)
                              end
                              local.get 0
                              i32.const 2
                              i32.add
                              local.get 6
                              local.get 0
                              i32.load8_u offset=1
                              i32.const 104
                              i32.eq
                              local.tee 0
                              select
                              local.set 6
                              i32.const -2
                              i32.const -1
                              local.get 0
                              select
                              local.set 15
                              br 4 (;@9;)
                            end
                            local.get 0
                            i32.const 2
                            i32.add
                            local.get 6
                            local.get 0
                            i32.load8_u offset=1
                            i32.const 108
                            i32.eq
                            local.tee 0
                            select
                            local.set 6
                            i32.const 3
                            i32.const 1
                            local.get 0
                            select
                            local.set 15
                            br 3 (;@9;)
                          end
                          i32.const 1
                          local.set 15
                          br 2 (;@9;)
                        end
                        i32.const 2
                        local.set 15
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.set 15
                      local.get 0
                      local.set 6
                    end
                    i32.const 1
                    local.get 15
                    local.get 6
                    i32.load8_u
                    local.tee 2
                    i32.const 47
                    i32.and
                    i32.const 3
                    i32.eq
                    local.tee 0
                    select
                    local.set 27
                    block  ;; label = @9
                      local.get 2
                      i32.const 32
                      i32.or
                      local.get 2
                      local.get 0
                      select
                      local.tee 23
                      i32.const 91
                      i32.eq
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 23
                        i32.const 110
                        i32.ne
                        if  ;; label = @11
                          local.get 23
                          i32.const 99
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 3
                          i32.const 1
                          local.get 3
                          i32.const 1
                          i32.gt_s
                          select
                          local.set 3
                          br 2 (;@9;)
                        end
                        local.get 8
                        local.get 27
                        local.get 39
                        call $store_int
                        br 2 (;@8;)
                      end
                      i64.const 0
                      call $__shlim
                      loop  ;; label = @10
                        block (result i32)  ;; label = @11
                          i32.const 2116
                          i32.load
                          local.tee 0
                          i32.const 2216
                          i32.load
                          i32.ne
                          if  ;; label = @12
                            i32.const 2116
                            local.get 0
                            i32.const 1
                            i32.add
                            i32.store
                            local.get 0
                            i32.load8_u
                            br 1 (;@11;)
                          end
                          call $__shgetc
                        end
                        call $isspace
                        br_if 0 (;@10;)
                      end
                      i32.const 2116
                      i32.load
                      local.set 0
                      i32.const 2224
                      i64.load
                      i64.const 0
                      i64.ge_s
                      if  ;; label = @10
                        i32.const 2116
                        local.get 0
                        i32.const 1
                        i32.sub
                        local.tee 0
                        i32.store
                      end
                      local.get 0
                      i32.const 2156
                      i32.load
                      i32.sub
                      i64.extend_i32_s
                      i32.const 2232
                      i64.load
                      local.get 39
                      i64.add
                      i64.add
                      local.set 39
                    end
                    local.get 3
                    i64.extend_i32_s
                    local.tee 33
                    call $__shlim
                    block  ;; label = @9
                      i32.const 2116
                      i32.load
                      local.tee 0
                      i32.const 2216
                      i32.load
                      i32.ne
                      if  ;; label = @10
                        i32.const 2116
                        local.get 0
                        i32.const 1
                        i32.add
                        i32.store
                        br 1 (;@9;)
                      end
                      call $__shgetc
                      i32.const 0
                      i32.lt_s
                      br_if 4 (;@5;)
                    end
                    i32.const 2224
                    i64.load
                    i64.const 0
                    i64.ge_s
                    if  ;; label = @9
                      i32.const 2116
                      i32.const 2116
                      i32.load
                      i32.const 1
                      i32.sub
                      i32.store
                    end
                    i32.const 16
                    local.set 0
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 23
                                        i32.const 88
                                        i32.sub
                                        br_table 6 (;@12;) 9 (;@9;) 9 (;@9;) 2 (;@16;) 9 (;@9;) 9 (;@9;) 9 (;@9;) 9 (;@9;) 9 (;@9;) 1 (;@17;) 9 (;@9;) 2 (;@16;) 4 (;@14;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 9 (;@9;) 5 (;@13;) 9 (;@9;) 9 (;@9;) 9 (;@9;) 9 (;@9;) 9 (;@9;) 3 (;@15;) 6 (;@12;) 9 (;@9;) 9 (;@9;) 2 (;@16;) 9 (;@9;) 4 (;@14;) 9 (;@9;) 9 (;@9;) 6 (;@12;) 0 (;@18;)
                                      end
                                      local.get 23
                                      i32.const 65
                                      i32.sub
                                      local.tee 0
                                      i32.const 6
                                      i32.gt_u
                                      i32.const 1
                                      local.get 0
                                      i32.shl
                                      i32.const 113
                                      i32.and
                                      i32.eqz
                                      i32.or
                                      br_if 8 (;@9;)
                                    end
                                    i32.const 0
                                    local.set 5
                                    i64.const 0
                                    local.set 32
                                    i64.const 0
                                    local.set 33
                                    i32.const 0
                                    local.set 3
                                    i64.const 0
                                    local.set 36
                                    i32.const 0
                                    local.set 10
                                    i64.const 0
                                    local.set 35
                                    i32.const 0
                                    local.set 11
                                    i32.const 0
                                    local.set 19
                                    i32.const 0
                                    local.set 12
                                    i64.const 0
                                    local.set 38
                                    i32.const 0
                                    local.set 13
                                    i64.const 0
                                    local.set 34
                                    i64.const 0
                                    local.set 37
                                    global.get $__stack_pointer
                                    i32.const 48
                                    i32.sub
                                    local.tee 21
                                    global.set $__stack_pointer
                                    block  ;; label = @17
                                      local.get 27
                                      i32.const 2
                                      i32.le_u
                                      if  ;; label = @18
                                        local.get 27
                                        i32.const 2
                                        i32.shl
                                        local.tee 0
                                        i32.const 1132
                                        i32.add
                                        i32.load
                                        local.set 26
                                        local.get 0
                                        i32.const 1120
                                        i32.add
                                        i32.load
                                        local.set 24
                                        loop  ;; label = @19
                                          block (result i32)  ;; label = @20
                                            i32.const 2116
                                            i32.load
                                            local.tee 0
                                            i32.const 2216
                                            i32.load
                                            i32.ne
                                            if  ;; label = @21
                                              i32.const 2116
                                              local.get 0
                                              i32.const 1
                                              i32.add
                                              i32.store
                                              local.get 0
                                              i32.load8_u
                                              br 1 (;@20;)
                                            end
                                            call $__shgetc
                                          end
                                          local.tee 2
                                          call $isspace
                                          br_if 0 (;@19;)
                                        end
                                        i32.const 1
                                        local.set 0
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 2
                                            i32.const 43
                                            i32.sub
                                            br_table 0 (;@20;) 1 (;@19;) 0 (;@20;) 1 (;@19;)
                                          end
                                          i32.const -1
                                          i32.const 1
                                          local.get 2
                                          i32.const 45
                                          i32.eq
                                          select
                                          local.set 0
                                          i32.const 2116
                                          i32.load
                                          local.tee 2
                                          i32.const 2216
                                          i32.load
                                          i32.ne
                                          if  ;; label = @20
                                            i32.const 2116
                                            local.get 2
                                            i32.const 1
                                            i32.add
                                            i32.store
                                            local.get 2
                                            i32.load8_u
                                            local.set 2
                                            br 1 (;@19;)
                                          end
                                          call $__shgetc
                                          local.set 2
                                        end
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 5
                                              i32.const 1024
                                              i32.add
                                              i32.load8_s
                                              local.get 2
                                              i32.const 32
                                              i32.or
                                              i32.eq
                                              if  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 5
                                                  i32.const 6
                                                  i32.gt_u
                                                  br_if 0 (;@23;)
                                                  i32.const 2116
                                                  i32.load
                                                  local.tee 2
                                                  i32.const 2216
                                                  i32.load
                                                  i32.ne
                                                  if  ;; label = @24
                                                    i32.const 2116
                                                    local.get 2
                                                    i32.const 1
                                                    i32.add
                                                    i32.store
                                                    local.get 2
                                                    i32.load8_u
                                                    local.set 2
                                                    br 1 (;@23;)
                                                  end
                                                  call $__shgetc
                                                  local.set 2
                                                end
                                                local.get 5
                                                i32.const 1
                                                i32.add
                                                local.tee 5
                                                i32.const 8
                                                i32.ne
                                                br_if 1 (;@21;)
                                                br 2 (;@20;)
                                              end
                                            end
                                            local.get 5
                                            i32.const 3
                                            i32.ne
                                            if  ;; label = @21
                                              local.get 5
                                              i32.const 8
                                              i32.eq
                                              br_if 1 (;@20;)
                                              br 2 (;@19;)
                                            end
                                            i32.const 2224
                                            i64.load
                                            i64.const 0
                                            i64.ge_s
                                            if  ;; label = @21
                                              i32.const 2116
                                              i32.const 2116
                                              i32.load
                                              i32.const 1
                                              i32.sub
                                              i32.store
                                            end
                                          end
                                          global.get $__stack_pointer
                                          i32.const 16
                                          i32.sub
                                          local.tee 3
                                          global.set $__stack_pointer
                                          block (result i64)  ;; label = @20
                                            local.get 0
                                            f32.convert_i32_s
                                            f32.const inf (;=inf;)
                                            f32.mul
                                            i32.reinterpret_f32
                                            local.tee 2
                                            i32.const 2147483647
                                            i32.and
                                            local.tee 0
                                            i32.const 8388608
                                            i32.sub
                                            i32.const 2130706431
                                            i32.le_u
                                            if  ;; label = @21
                                              local.get 0
                                              i64.extend_i32_u
                                              i64.const 25
                                              i64.shl
                                              i64.const 4575657221408423936
                                              i64.add
                                              br 1 (;@20;)
                                            end
                                            local.get 2
                                            i64.extend_i32_u
                                            i64.const 25
                                            i64.shl
                                            i64.const 9223090561878065152
                                            i64.or
                                            local.get 0
                                            i32.const 2139095040
                                            i32.ge_u
                                            br_if 0 (;@20;)
                                            drop
                                            i64.const 0
                                            local.get 0
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            drop
                                            local.get 3
                                            local.get 0
                                            i64.extend_i32_u
                                            i64.const 0
                                            local.get 0
                                            i32.clz
                                            local.tee 0
                                            i32.const 81
                                            i32.add
                                            call $__ashlti3
                                            local.get 3
                                            i64.load
                                            local.set 32
                                            local.get 3
                                            i64.load offset=8
                                            i64.const 281474976710656
                                            i64.xor
                                            i32.const 16265
                                            local.get 0
                                            i32.sub
                                            i64.extend_i32_u
                                            i64.const 48
                                            i64.shl
                                            i64.or
                                          end
                                          local.set 33
                                          local.get 21
                                          local.get 32
                                          i64.store
                                          local.get 21
                                          local.get 33
                                          local.get 2
                                          i32.const -2147483648
                                          i32.and
                                          i64.extend_i32_u
                                          i64.const 32
                                          i64.shl
                                          i64.or
                                          i64.store offset=8
                                          local.get 3
                                          i32.const 16
                                          i32.add
                                          global.set $__stack_pointer
                                          local.get 21
                                          i64.load offset=8
                                          local.set 32
                                          local.get 21
                                          i64.load
                                          local.set 33
                                          br 2 (;@17;)
                                        end
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 5
                                              br_if 0 (;@21;)
                                              i32.const 0
                                              local.set 5
                                              loop  ;; label = @22
                                                local.get 5
                                                i32.const 1046
                                                i32.add
                                                i32.load8_s
                                                local.get 2
                                                i32.const 32
                                                i32.or
                                                i32.ne
                                                br_if 1 (;@21;)
                                                block  ;; label = @23
                                                  local.get 5
                                                  i32.const 1
                                                  i32.gt_u
                                                  br_if 0 (;@23;)
                                                  i32.const 2116
                                                  i32.load
                                                  local.tee 2
                                                  i32.const 2216
                                                  i32.load
                                                  i32.ne
                                                  if  ;; label = @24
                                                    i32.const 2116
                                                    local.get 2
                                                    i32.const 1
                                                    i32.add
                                                    i32.store
                                                    local.get 2
                                                    i32.load8_u
                                                    local.set 2
                                                    br 1 (;@23;)
                                                  end
                                                  call $__shgetc
                                                  local.set 2
                                                end
                                                local.get 5
                                                i32.const 1
                                                i32.add
                                                local.tee 5
                                                i32.const 3
                                                i32.ne
                                                br_if 0 (;@22;)
                                              end
                                              br 1 (;@20;)
                                            end
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 5
                                                br_table 0 (;@22;) 1 (;@21;) 1 (;@21;) 2 (;@20;) 1 (;@21;)
                                              end
                                              block  ;; label = @22
                                                local.get 2
                                                i32.const 48
                                                i32.ne
                                                br_if 0 (;@22;)
                                                block (result i32)  ;; label = @23
                                                  i32.const 2116
                                                  i32.load
                                                  local.tee 5
                                                  i32.const 2216
                                                  i32.load
                                                  i32.ne
                                                  if  ;; label = @24
                                                    i32.const 2116
                                                    local.get 5
                                                    i32.const 1
                                                    i32.add
                                                    i32.store
                                                    local.get 5
                                                    i32.load8_u
                                                    br 1 (;@23;)
                                                  end
                                                  call $__shgetc
                                                end
                                                i32.const -33
                                                i32.and
                                                i32.const 88
                                                i32.eq
                                                if  ;; label = @23
                                                  global.get $__stack_pointer
                                                  i32.const 432
                                                  i32.sub
                                                  local.tee 4
                                                  global.set $__stack_pointer
                                                  block (result i32)  ;; label = @24
                                                    i32.const 2116
                                                    i32.load
                                                    local.tee 2
                                                    i32.const 2216
                                                    i32.load
                                                    i32.ne
                                                    if  ;; label = @25
                                                      i32.const 2116
                                                      local.get 2
                                                      i32.const 1
                                                      i32.add
                                                      i32.store
                                                      local.get 2
                                                      i32.load8_u
                                                      br 1 (;@24;)
                                                    end
                                                    call $__shgetc
                                                  end
                                                  local.set 5
                                                  block  ;; label = @24
                                                    block (result i32)  ;; label = @25
                                                      loop  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 5
                                                          i32.const 48
                                                          i32.ne
                                                          if  ;; label = @28
                                                            local.get 5
                                                            i32.const 46
                                                            i32.ne
                                                            br_if 4 (;@24;)
                                                            i32.const 2116
                                                            i32.load
                                                            local.tee 2
                                                            i32.const 2216
                                                            i32.load
                                                            i32.eq
                                                            br_if 1 (;@27;)
                                                            i32.const 2116
                                                            local.get 2
                                                            i32.const 1
                                                            i32.add
                                                            i32.store
                                                            local.get 2
                                                            i32.load8_u
                                                            br 3 (;@25;)
                                                          end
                                                          i32.const 2116
                                                          i32.load
                                                          local.tee 2
                                                          i32.const 2216
                                                          i32.load
                                                          i32.ne
                                                          if  ;; label = @28
                                                            i32.const 1
                                                            local.set 3
                                                            i32.const 2116
                                                            local.get 2
                                                            i32.const 1
                                                            i32.add
                                                            i32.store
                                                            local.get 2
                                                            i32.load8_u
                                                            local.set 5
                                                            br 2 (;@26;)
                                                          end
                                                          i32.const 1
                                                          local.set 3
                                                          call $__shgetc
                                                          local.set 5
                                                          br 1 (;@26;)
                                                        end
                                                      end
                                                      call $__shgetc
                                                    end
                                                    local.set 5
                                                    i32.const 1
                                                    local.set 11
                                                    local.get 5
                                                    i32.const 48
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                    loop  ;; label = @25
                                                      block (result i32)  ;; label = @26
                                                        i32.const 2116
                                                        i32.load
                                                        local.tee 2
                                                        i32.const 2216
                                                        i32.load
                                                        i32.ne
                                                        if  ;; label = @27
                                                          i32.const 2116
                                                          local.get 2
                                                          i32.const 1
                                                          i32.add
                                                          i32.store
                                                          local.get 2
                                                          i32.load8_u
                                                          br 1 (;@26;)
                                                        end
                                                        call $__shgetc
                                                      end
                                                      local.set 5
                                                      local.get 35
                                                      i64.const 1
                                                      i64.sub
                                                      local.set 35
                                                      local.get 5
                                                      i32.const 48
                                                      i32.eq
                                                      br_if 0 (;@25;)
                                                    end
                                                    i32.const 1
                                                    local.set 3
                                                  end
                                                  i64.const 4611404543450677248
                                                  local.set 33
                                                  block  ;; label = @24
                                                    loop  ;; label = @25
                                                      block  ;; label = @26
                                                        local.get 5
                                                        i32.const 32
                                                        i32.or
                                                        local.set 17
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 5
                                                            i32.const 48
                                                            i32.sub
                                                            local.tee 2
                                                            i32.const 10
                                                            i32.lt_u
                                                            br_if 0 (;@28;)
                                                            local.get 5
                                                            i32.const 46
                                                            i32.ne
                                                            local.get 17
                                                            i32.const 97
                                                            i32.sub
                                                            i32.const 6
                                                            i32.ge_u
                                                            i32.and
                                                            br_if 4 (;@24;)
                                                            local.get 5
                                                            i32.const 46
                                                            i32.ne
                                                            br_if 0 (;@28;)
                                                            local.get 11
                                                            br_if 2 (;@26;)
                                                            i32.const 1
                                                            local.set 11
                                                            local.get 32
                                                            local.set 35
                                                            br 1 (;@27;)
                                                          end
                                                          local.get 17
                                                          i32.const 87
                                                          i32.sub
                                                          local.get 2
                                                          local.get 5
                                                          i32.const 57
                                                          i32.gt_s
                                                          select
                                                          local.set 2
                                                          block  ;; label = @28
                                                            local.get 32
                                                            i64.const 7
                                                            i64.le_s
                                                            if  ;; label = @29
                                                              local.get 2
                                                              local.get 12
                                                              i32.const 4
                                                              i32.shl
                                                              i32.add
                                                              local.set 12
                                                              br 1 (;@28;)
                                                            end
                                                            local.get 32
                                                            i64.const 28
                                                            i64.le_u
                                                            if  ;; label = @29
                                                              local.get 4
                                                              i32.const 48
                                                              i32.add
                                                              local.get 2
                                                              call $__floatsitf
                                                              local.get 4
                                                              i32.const 32
                                                              i32.add
                                                              local.get 34
                                                              local.get 33
                                                              i64.const 0
                                                              i64.const 4610278643543834624
                                                              call $__multf3
                                                              local.get 4
                                                              i32.const 16
                                                              i32.add
                                                              local.get 4
                                                              i64.load offset=48
                                                              local.get 4
                                                              i64.load offset=56
                                                              local.get 4
                                                              i64.load offset=32
                                                              local.tee 34
                                                              local.get 4
                                                              i64.load offset=40
                                                              local.tee 33
                                                              call $__multf3
                                                              local.get 4
                                                              local.get 4
                                                              i64.load offset=16
                                                              local.get 4
                                                              i64.load offset=24
                                                              local.get 36
                                                              local.get 38
                                                              call $__addtf3
                                                              local.get 4
                                                              i64.load offset=8
                                                              local.set 38
                                                              local.get 4
                                                              i64.load
                                                              local.set 36
                                                              br 1 (;@28;)
                                                            end
                                                            local.get 2
                                                            i32.eqz
                                                            local.get 13
                                                            i32.or
                                                            br_if 0 (;@28;)
                                                            local.get 4
                                                            i32.const 80
                                                            i32.add
                                                            local.get 34
                                                            local.get 33
                                                            i64.const 0
                                                            i64.const 4611123068473966592
                                                            call $__multf3
                                                            local.get 4
                                                            i32.const -64
                                                            i32.sub
                                                            local.get 4
                                                            i64.load offset=80
                                                            local.get 4
                                                            i64.load offset=88
                                                            local.get 36
                                                            local.get 38
                                                            call $__addtf3
                                                            local.get 4
                                                            i64.load offset=72
                                                            local.set 38
                                                            i32.const 1
                                                            local.set 13
                                                            local.get 4
                                                            i64.load offset=64
                                                            local.set 36
                                                          end
                                                          local.get 32
                                                          i64.const 1
                                                          i64.add
                                                          local.set 32
                                                          i32.const 1
                                                          local.set 3
                                                        end
                                                        i32.const 2116
                                                        i32.load
                                                        local.tee 2
                                                        i32.const 2216
                                                        i32.load
                                                        i32.ne
                                                        if  ;; label = @27
                                                          i32.const 2116
                                                          local.get 2
                                                          i32.const 1
                                                          i32.add
                                                          i32.store
                                                          local.get 2
                                                          i32.load8_u
                                                          local.set 5
                                                          br 2 (;@25;)
                                                        end
                                                        call $__shgetc
                                                        local.set 5
                                                        br 1 (;@25;)
                                                      end
                                                    end
                                                    i32.const 46
                                                    local.set 5
                                                  end
                                                  block (result i64)  ;; label = @24
                                                    local.get 3
                                                    i32.eqz
                                                    if  ;; label = @25
                                                      i32.const 2224
                                                      i64.load
                                                      i64.const 0
                                                      i64.ge_s
                                                      if  ;; label = @26
                                                        i32.const 2116
                                                        i32.const 2116
                                                        i32.load
                                                        i32.const 1
                                                        i32.sub
                                                        i32.store
                                                      end
                                                      i64.const 0
                                                      call $__shlim
                                                      local.get 4
                                                      i32.const 96
                                                      i32.add
                                                      local.get 0
                                                      f64.convert_i32_s
                                                      f64.const 0x0p+0 (;=0;)
                                                      f64.mul
                                                      call $__extenddftf2
                                                      local.get 4
                                                      i64.load offset=96
                                                      local.set 36
                                                      local.get 4
                                                      i64.load offset=104
                                                      br 1 (;@24;)
                                                    end
                                                    local.get 32
                                                    i64.const 7
                                                    i64.le_s
                                                    if  ;; label = @25
                                                      local.get 32
                                                      local.set 33
                                                      loop  ;; label = @26
                                                        local.get 12
                                                        i32.const 4
                                                        i32.shl
                                                        local.set 12
                                                        local.get 33
                                                        i64.const 1
                                                        i64.add
                                                        local.tee 33
                                                        i64.const 8
                                                        i64.ne
                                                        br_if 0 (;@26;)
                                                      end
                                                    end
                                                    block  ;; label = @25
                                                      local.get 5
                                                      i32.const -33
                                                      i32.and
                                                      i32.const 80
                                                      i32.eq
                                                      if  ;; label = @26
                                                        call $scanexp
                                                        local.tee 33
                                                        i64.const -9223372036854775808
                                                        i64.ne
                                                        br_if 1 (;@25;)
                                                        i64.const 0
                                                        local.set 36
                                                        i64.const 0
                                                        call $__shlim
                                                        i64.const 0
                                                        br 2 (;@24;)
                                                      end
                                                      i64.const 0
                                                      local.set 33
                                                      i32.const 2224
                                                      i64.load
                                                      i64.const 0
                                                      i64.lt_s
                                                      br_if 0 (;@25;)
                                                      i32.const 2116
                                                      i32.const 2116
                                                      i32.load
                                                      i32.const 1
                                                      i32.sub
                                                      i32.store
                                                    end
                                                    local.get 12
                                                    i32.eqz
                                                    if  ;; label = @25
                                                      local.get 4
                                                      i32.const 112
                                                      i32.add
                                                      local.get 0
                                                      f64.convert_i32_s
                                                      f64.const 0x0p+0 (;=0;)
                                                      f64.mul
                                                      call $__extenddftf2
                                                      local.get 4
                                                      i64.load offset=112
                                                      local.set 36
                                                      local.get 4
                                                      i64.load offset=120
                                                      br 1 (;@24;)
                                                    end
                                                    local.get 35
                                                    local.get 32
                                                    local.get 11
                                                    select
                                                    i64.const 2
                                                    i64.shl
                                                    local.get 33
                                                    i64.add
                                                    i64.const 32
                                                    i64.sub
                                                    local.tee 32
                                                    i32.const 0
                                                    local.get 26
                                                    i32.sub
                                                    i64.extend_i32_u
                                                    i64.gt_s
                                                    if  ;; label = @25
                                                      i32.const 3460
                                                      i32.const 68
                                                      i32.store
                                                      local.get 4
                                                      i32.const 160
                                                      i32.add
                                                      local.get 0
                                                      call $__floatsitf
                                                      local.get 4
                                                      i32.const 144
                                                      i32.add
                                                      local.get 4
                                                      i64.load offset=160
                                                      local.get 4
                                                      i64.load offset=168
                                                      i64.const -1
                                                      i64.const 9223090561878065151
                                                      call $__multf3
                                                      local.get 4
                                                      i32.const 128
                                                      i32.add
                                                      local.get 4
                                                      i64.load offset=144
                                                      local.get 4
                                                      i64.load offset=152
                                                      i64.const -1
                                                      i64.const 9223090561878065151
                                                      call $__multf3
                                                      local.get 4
                                                      i64.load offset=128
                                                      local.set 36
                                                      local.get 4
                                                      i64.load offset=136
                                                      br 1 (;@24;)
                                                    end
                                                    local.get 26
                                                    i32.const 226
                                                    i32.sub
                                                    i64.extend_i32_s
                                                    local.get 32
                                                    i64.le_s
                                                    if  ;; label = @25
                                                      local.get 12
                                                      i32.const 0
                                                      i32.ge_s
                                                      if  ;; label = @26
                                                        loop  ;; label = @27
                                                          local.get 4
                                                          i32.const 416
                                                          i32.add
                                                          local.get 36
                                                          local.get 38
                                                          i64.const 0
                                                          i64.const -4611967493404098560
                                                          call $__addtf3
                                                          local.get 36
                                                          local.get 38
                                                          i64.const 4611123068473966592
                                                          call $__getf2
                                                          local.set 3
                                                          local.get 4
                                                          i32.const 400
                                                          i32.add
                                                          local.get 36
                                                          local.get 38
                                                          local.get 36
                                                          local.get 4
                                                          i64.load offset=416
                                                          local.get 3
                                                          i32.const 0
                                                          i32.lt_s
                                                          local.tee 2
                                                          select
                                                          local.get 38
                                                          local.get 4
                                                          i64.load offset=424
                                                          local.get 2
                                                          select
                                                          call $__addtf3
                                                          local.get 32
                                                          i64.const 1
                                                          i64.sub
                                                          local.set 32
                                                          local.get 4
                                                          i64.load offset=408
                                                          local.set 38
                                                          local.get 4
                                                          i64.load offset=400
                                                          local.set 36
                                                          local.get 12
                                                          i32.const 1
                                                          i32.shl
                                                          local.get 3
                                                          i32.const 0
                                                          i32.ge_s
                                                          i32.or
                                                          local.tee 12
                                                          i32.const 0
                                                          i32.ge_s
                                                          br_if 0 (;@27;)
                                                        end
                                                      end
                                                      block (result i64)  ;; label = @26
                                                        local.get 32
                                                        local.get 26
                                                        i64.extend_i32_s
                                                        i64.sub
                                                        i64.const 32
                                                        i64.add
                                                        local.tee 33
                                                        i32.wrap_i64
                                                        local.tee 2
                                                        i32.const 0
                                                        local.get 2
                                                        i32.const 0
                                                        i32.gt_s
                                                        select
                                                        local.get 24
                                                        local.get 33
                                                        local.get 24
                                                        i64.extend_i32_u
                                                        i64.lt_s
                                                        select
                                                        local.tee 2
                                                        i32.const 113
                                                        i32.ge_s
                                                        if  ;; label = @27
                                                          local.get 4
                                                          i32.const 384
                                                          i32.add
                                                          local.get 0
                                                          call $__floatsitf
                                                          local.get 4
                                                          i64.load offset=392
                                                          local.set 35
                                                          local.get 4
                                                          i64.load offset=384
                                                          local.set 34
                                                          i64.const 0
                                                          br 1 (;@26;)
                                                        end
                                                        local.get 4
                                                        i32.const 352
                                                        i32.add
                                                        i32.const 144
                                                        local.get 2
                                                        i32.sub
                                                        call $scalbn
                                                        call $__extenddftf2
                                                        local.get 4
                                                        i32.const 336
                                                        i32.add
                                                        local.get 0
                                                        call $__floatsitf
                                                        local.get 4
                                                        i32.const 368
                                                        i32.add
                                                        local.get 4
                                                        i64.load offset=352
                                                        local.get 4
                                                        i64.load offset=360
                                                        local.get 4
                                                        i64.load offset=336
                                                        local.tee 34
                                                        local.get 4
                                                        i64.load offset=344
                                                        local.tee 35
                                                        call $copysignl
                                                        local.get 4
                                                        i64.load offset=376
                                                        local.set 37
                                                        local.get 4
                                                        i64.load offset=368
                                                      end
                                                      local.set 33
                                                      local.get 4
                                                      i32.const 320
                                                      i32.add
                                                      local.get 12
                                                      local.get 12
                                                      i32.const 1
                                                      i32.and
                                                      i32.eqz
                                                      local.get 36
                                                      local.get 38
                                                      i64.const 0
                                                      i64.const 0
                                                      call $__letf2
                                                      i32.const 0
                                                      i32.ne
                                                      local.get 2
                                                      i32.const 32
                                                      i32.lt_s
                                                      i32.and
                                                      i32.and
                                                      local.tee 0
                                                      i32.add
                                                      call $__floatunsitf
                                                      local.get 4
                                                      i32.const 304
                                                      i32.add
                                                      local.get 34
                                                      local.get 35
                                                      local.get 4
                                                      i64.load offset=320
                                                      local.get 4
                                                      i64.load offset=328
                                                      call $__multf3
                                                      local.get 4
                                                      i32.const 272
                                                      i32.add
                                                      local.get 4
                                                      i64.load offset=304
                                                      local.get 4
                                                      i64.load offset=312
                                                      local.get 33
                                                      local.get 37
                                                      call $__addtf3
                                                      local.get 4
                                                      i32.const 288
                                                      i32.add
                                                      local.get 34
                                                      local.get 35
                                                      i64.const 0
                                                      local.get 36
                                                      local.get 0
                                                      select
                                                      i64.const 0
                                                      local.get 38
                                                      local.get 0
                                                      select
                                                      call $__multf3
                                                      local.get 4
                                                      i32.const 256
                                                      i32.add
                                                      local.get 4
                                                      i64.load offset=288
                                                      local.get 4
                                                      i64.load offset=296
                                                      local.get 4
                                                      i64.load offset=272
                                                      local.get 4
                                                      i64.load offset=280
                                                      call $__addtf3
                                                      local.get 4
                                                      i32.const 240
                                                      i32.add
                                                      local.get 4
                                                      i64.load offset=256
                                                      local.get 4
                                                      i64.load offset=264
                                                      local.get 33
                                                      local.get 37
                                                      call $__subtf3
                                                      local.get 4
                                                      i64.load offset=240
                                                      local.tee 35
                                                      local.get 4
                                                      i64.load offset=248
                                                      local.tee 33
                                                      i64.const 0
                                                      i64.const 0
                                                      call $__letf2
                                                      i32.eqz
                                                      if  ;; label = @26
                                                        i32.const 3460
                                                        i32.const 68
                                                        i32.store
                                                      end
                                                      local.get 4
                                                      i32.const 224
                                                      i32.add
                                                      local.get 35
                                                      local.get 33
                                                      local.get 32
                                                      i32.wrap_i64
                                                      call $scalbnl
                                                      local.get 4
                                                      i64.load offset=224
                                                      local.set 36
                                                      local.get 4
                                                      i64.load offset=232
                                                      br 1 (;@24;)
                                                    end
                                                    i32.const 3460
                                                    i32.const 68
                                                    i32.store
                                                    local.get 4
                                                    i32.const 208
                                                    i32.add
                                                    local.get 0
                                                    call $__floatsitf
                                                    local.get 4
                                                    i32.const 192
                                                    i32.add
                                                    local.get 4
                                                    i64.load offset=208
                                                    local.get 4
                                                    i64.load offset=216
                                                    i64.const 0
                                                    i64.const 281474976710656
                                                    call $__multf3
                                                    local.get 4
                                                    i32.const 176
                                                    i32.add
                                                    local.get 4
                                                    i64.load offset=192
                                                    local.get 4
                                                    i64.load offset=200
                                                    i64.const 0
                                                    i64.const 281474976710656
                                                    call $__multf3
                                                    local.get 4
                                                    i64.load offset=176
                                                    local.set 36
                                                    local.get 4
                                                    i64.load offset=184
                                                  end
                                                  local.set 32
                                                  local.get 21
                                                  local.get 36
                                                  i64.store offset=16
                                                  local.get 21
                                                  local.get 32
                                                  i64.store offset=24
                                                  local.get 4
                                                  i32.const 432
                                                  i32.add
                                                  global.set $__stack_pointer
                                                  local.get 21
                                                  i64.load offset=24
                                                  local.set 32
                                                  local.get 21
                                                  i64.load offset=16
                                                  local.set 33
                                                  br 6 (;@17;)
                                                end
                                                i32.const 2224
                                                i64.load
                                                i64.const 0
                                                i64.lt_s
                                                br_if 0 (;@22;)
                                                i32.const 2116
                                                i32.const 2116
                                                i32.load
                                                i32.const 1
                                                i32.sub
                                                i32.store
                                              end
                                              local.get 0
                                              local.set 17
                                              i32.const 0
                                              local.set 5
                                              global.get $__stack_pointer
                                              i32.const 8976
                                              i32.sub
                                              local.tee 1
                                              global.set $__stack_pointer
                                              i32.const 0
                                              local.get 24
                                              local.get 26
                                              i32.add
                                              local.tee 18
                                              i32.sub
                                              local.set 23
                                              block  ;; label = @22
                                                block (result i32)  ;; label = @23
                                                  loop  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 2
                                                      i32.const 48
                                                      i32.ne
                                                      if  ;; label = @26
                                                        local.get 2
                                                        i32.const 46
                                                        i32.ne
                                                        br_if 4 (;@22;)
                                                        i32.const 2116
                                                        i32.load
                                                        local.tee 0
                                                        i32.const 2216
                                                        i32.load
                                                        i32.eq
                                                        br_if 1 (;@25;)
                                                        i32.const 2116
                                                        local.get 0
                                                        i32.const 1
                                                        i32.add
                                                        i32.store
                                                        local.get 0
                                                        i32.load8_u
                                                        br 3 (;@23;)
                                                      end
                                                      i32.const 2116
                                                      i32.load
                                                      local.tee 0
                                                      i32.const 2216
                                                      i32.load
                                                      i32.ne
                                                      if  ;; label = @26
                                                        i32.const 1
                                                        local.set 5
                                                        i32.const 2116
                                                        local.get 0
                                                        i32.const 1
                                                        i32.add
                                                        i32.store
                                                        local.get 0
                                                        i32.load8_u
                                                        local.set 2
                                                        br 2 (;@24;)
                                                      end
                                                      i32.const 1
                                                      local.set 5
                                                      call $__shgetc
                                                      local.set 2
                                                      br 1 (;@24;)
                                                    end
                                                  end
                                                  call $__shgetc
                                                end
                                                local.set 2
                                                i32.const 1
                                                local.set 10
                                                local.get 2
                                                i32.const 48
                                                i32.ne
                                                br_if 0 (;@22;)
                                                loop  ;; label = @23
                                                  block (result i32)  ;; label = @24
                                                    i32.const 2116
                                                    i32.load
                                                    local.tee 0
                                                    i32.const 2216
                                                    i32.load
                                                    i32.ne
                                                    if  ;; label = @25
                                                      i32.const 2116
                                                      local.get 0
                                                      i32.const 1
                                                      i32.add
                                                      i32.store
                                                      local.get 0
                                                      i32.load8_u
                                                      br 1 (;@24;)
                                                    end
                                                    call $__shgetc
                                                  end
                                                  local.set 2
                                                  local.get 32
                                                  i64.const 1
                                                  i64.sub
                                                  local.set 32
                                                  local.get 2
                                                  i32.const 48
                                                  i32.eq
                                                  br_if 0 (;@23;)
                                                end
                                                i32.const 1
                                                local.set 5
                                              end
                                              local.get 1
                                              i32.const 0
                                              i32.store offset=784
                                              local.get 21
                                              block (result i64)  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 2
                                                          i32.const 46
                                                          i32.eq
                                                          local.tee 0
                                                          i32.eqz
                                                          local.get 2
                                                          i32.const 48
                                                          i32.sub
                                                          local.tee 7
                                                          i32.const 9
                                                          i32.gt_u
                                                          i32.and
                                                          i32.eqz
                                                          if  ;; label = @28
                                                            loop  ;; label = @29
                                                              block  ;; label = @30
                                                                local.get 0
                                                                i32.const 1
                                                                i32.and
                                                                if  ;; label = @31
                                                                  local.get 10
                                                                  i32.eqz
                                                                  if  ;; label = @32
                                                                    local.get 33
                                                                    local.set 32
                                                                    i32.const 1
                                                                    local.set 10
                                                                    br 2 (;@30;)
                                                                  end
                                                                  local.get 5
                                                                  i32.eqz
                                                                  local.set 0
                                                                  br 4 (;@27;)
                                                                end
                                                                local.get 33
                                                                i64.const 1
                                                                i64.add
                                                                local.set 33
                                                                local.get 3
                                                                i32.const 2044
                                                                i32.le_s
                                                                if  ;; label = @31
                                                                  local.get 13
                                                                  local.get 33
                                                                  i32.wrap_i64
                                                                  local.get 2
                                                                  i32.const 48
                                                                  i32.eq
                                                                  select
                                                                  local.set 13
                                                                  local.get 1
                                                                  i32.const 784
                                                                  i32.add
                                                                  local.get 3
                                                                  i32.const 2
                                                                  i32.shl
                                                                  i32.add
                                                                  local.tee 0
                                                                  local.get 19
                                                                  if (result i32)  ;; label = @32
                                                                    local.get 2
                                                                    local.get 0
                                                                    i32.load
                                                                    i32.const 10
                                                                    i32.mul
                                                                    i32.add
                                                                    i32.const 48
                                                                    i32.sub
                                                                  else
                                                                    local.get 7
                                                                  end
                                                                  i32.store
                                                                  i32.const 1
                                                                  local.set 5
                                                                  i32.const 0
                                                                  local.get 19
                                                                  i32.const 1
                                                                  i32.add
                                                                  local.tee 0
                                                                  local.get 0
                                                                  i32.const 9
                                                                  i32.eq
                                                                  local.tee 0
                                                                  select
                                                                  local.set 19
                                                                  local.get 0
                                                                  local.get 3
                                                                  i32.add
                                                                  local.set 3
                                                                  br 1 (;@30;)
                                                                end
                                                                local.get 2
                                                                i32.const 48
                                                                i32.eq
                                                                br_if 0 (;@30;)
                                                                local.get 1
                                                                local.get 1
                                                                i32.load offset=8960
                                                                i32.const 1
                                                                i32.or
                                                                i32.store offset=8960
                                                                i32.const 18396
                                                                local.set 13
                                                              end
                                                              block (result i32)  ;; label = @30
                                                                i32.const 2116
                                                                i32.load
                                                                local.tee 0
                                                                i32.const 2216
                                                                i32.load
                                                                i32.ne
                                                                if  ;; label = @31
                                                                  i32.const 2116
                                                                  local.get 0
                                                                  i32.const 1
                                                                  i32.add
                                                                  i32.store
                                                                  local.get 0
                                                                  i32.load8_u
                                                                  br 1 (;@30;)
                                                                end
                                                                call $__shgetc
                                                              end
                                                              local.tee 2
                                                              i32.const 46
                                                              i32.eq
                                                              local.tee 0
                                                              local.get 2
                                                              i32.const 48
                                                              i32.sub
                                                              local.tee 7
                                                              i32.const 10
                                                              i32.lt_u
                                                              i32.or
                                                              br_if 0 (;@29;)
                                                            end
                                                          end
                                                          local.get 32
                                                          local.get 33
                                                          local.get 10
                                                          select
                                                          local.set 32
                                                          local.get 5
                                                          i32.eqz
                                                          local.get 2
                                                          i32.const -33
                                                          i32.and
                                                          i32.const 69
                                                          i32.ne
                                                          i32.or
                                                          i32.eqz
                                                          if  ;; label = @28
                                                            call $scanexp
                                                            local.tee 37
                                                            i64.const -9223372036854775808
                                                            i64.eq
                                                            br_if 4 (;@24;)
                                                            local.get 5
                                                            i32.eqz
                                                            br_if 3 (;@25;)
                                                            local.get 32
                                                            local.get 37
                                                            i64.add
                                                            local.set 32
                                                            br 5 (;@23;)
                                                          end
                                                          local.get 5
                                                          i32.eqz
                                                          local.set 0
                                                          local.get 2
                                                          i32.const 0
                                                          i32.lt_s
                                                          br_if 1 (;@26;)
                                                        end
                                                        i32.const 2224
                                                        i64.load
                                                        i64.const 0
                                                        i64.lt_s
                                                        br_if 0 (;@26;)
                                                        i32.const 2116
                                                        i32.const 2116
                                                        i32.load
                                                        i32.const 1
                                                        i32.sub
                                                        i32.store
                                                      end
                                                      local.get 0
                                                      i32.eqz
                                                      br_if 2 (;@23;)
                                                    end
                                                    i32.const 3460
                                                    i32.const 28
                                                    i32.store
                                                  end
                                                  i64.const 0
                                                  local.set 33
                                                  i64.const 0
                                                  call $__shlim
                                                  i64.const 0
                                                  br 1 (;@22;)
                                                end
                                                local.get 1
                                                i32.load offset=784
                                                local.tee 0
                                                i32.eqz
                                                if  ;; label = @23
                                                  local.get 1
                                                  local.get 17
                                                  f64.convert_i32_s
                                                  f64.const 0x0p+0 (;=0;)
                                                  f64.mul
                                                  call $__extenddftf2
                                                  local.get 1
                                                  i64.load
                                                  local.set 33
                                                  local.get 1
                                                  i64.load offset=8
                                                  br 1 (;@22;)
                                                end
                                                local.get 32
                                                local.get 33
                                                i64.ne
                                                local.get 33
                                                i64.const 9
                                                i64.gt_s
                                                i32.or
                                                local.get 24
                                                i32.const 30
                                                i32.le_s
                                                i32.const 0
                                                local.get 0
                                                local.get 24
                                                i32.shr_u
                                                select
                                                i32.or
                                                i32.eqz
                                                if  ;; label = @23
                                                  local.get 1
                                                  i32.const 48
                                                  i32.add
                                                  local.get 17
                                                  call $__floatsitf
                                                  local.get 1
                                                  i32.const 32
                                                  i32.add
                                                  local.get 0
                                                  call $__floatunsitf
                                                  local.get 1
                                                  i32.const 16
                                                  i32.add
                                                  local.get 1
                                                  i64.load offset=48
                                                  local.get 1
                                                  i64.load offset=56
                                                  local.get 1
                                                  i64.load offset=32
                                                  local.get 1
                                                  i64.load offset=40
                                                  call $__multf3
                                                  local.get 1
                                                  i64.load offset=16
                                                  local.set 33
                                                  local.get 1
                                                  i64.load offset=24
                                                  br 1 (;@22;)
                                                end
                                                local.get 26
                                                i32.const -2
                                                i32.div_s
                                                i64.extend_i32_u
                                                local.get 32
                                                i64.lt_s
                                                if  ;; label = @23
                                                  i32.const 3460
                                                  i32.const 68
                                                  i32.store
                                                  local.get 1
                                                  i32.const 96
                                                  i32.add
                                                  local.get 17
                                                  call $__floatsitf
                                                  local.get 1
                                                  i32.const 80
                                                  i32.add
                                                  local.get 1
                                                  i64.load offset=96
                                                  local.get 1
                                                  i64.load offset=104
                                                  i64.const -1
                                                  i64.const 9223090561878065151
                                                  call $__multf3
                                                  local.get 1
                                                  i32.const -64
                                                  i32.sub
                                                  local.get 1
                                                  i64.load offset=80
                                                  local.get 1
                                                  i64.load offset=88
                                                  i64.const -1
                                                  i64.const 9223090561878065151
                                                  call $__multf3
                                                  local.get 1
                                                  i64.load offset=64
                                                  local.set 33
                                                  local.get 1
                                                  i64.load offset=72
                                                  br 1 (;@22;)
                                                end
                                                local.get 26
                                                i32.const 226
                                                i32.sub
                                                i64.extend_i32_s
                                                local.get 32
                                                i64.gt_s
                                                if  ;; label = @23
                                                  i32.const 3460
                                                  i32.const 68
                                                  i32.store
                                                  local.get 1
                                                  i32.const 144
                                                  i32.add
                                                  local.get 17
                                                  call $__floatsitf
                                                  local.get 1
                                                  i32.const 128
                                                  i32.add
                                                  local.get 1
                                                  i64.load offset=144
                                                  local.get 1
                                                  i64.load offset=152
                                                  i64.const 0
                                                  i64.const 281474976710656
                                                  call $__multf3
                                                  local.get 1
                                                  i32.const 112
                                                  i32.add
                                                  local.get 1
                                                  i64.load offset=128
                                                  local.get 1
                                                  i64.load offset=136
                                                  i64.const 0
                                                  i64.const 281474976710656
                                                  call $__multf3
                                                  local.get 1
                                                  i64.load offset=112
                                                  local.set 33
                                                  local.get 1
                                                  i64.load offset=120
                                                  br 1 (;@22;)
                                                end
                                                local.get 19
                                                if  ;; label = @23
                                                  local.get 19
                                                  i32.const 8
                                                  i32.le_s
                                                  if  ;; label = @24
                                                    local.get 1
                                                    i32.const 784
                                                    i32.add
                                                    local.get 3
                                                    i32.const 2
                                                    i32.shl
                                                    i32.add
                                                    local.tee 0
                                                    i32.load
                                                    local.set 16
                                                    loop  ;; label = @25
                                                      local.get 16
                                                      i32.const 10
                                                      i32.mul
                                                      local.set 16
                                                      local.get 19
                                                      i32.const 1
                                                      i32.add
                                                      local.tee 19
                                                      i32.const 9
                                                      i32.ne
                                                      br_if 0 (;@25;)
                                                    end
                                                    local.get 0
                                                    local.get 16
                                                    i32.store
                                                  end
                                                  local.get 3
                                                  i32.const 1
                                                  i32.add
                                                  local.set 3
                                                end
                                                block  ;; label = @23
                                                  local.get 13
                                                  local.get 32
                                                  i32.wrap_i64
                                                  local.tee 10
                                                  i32.gt_s
                                                  local.get 13
                                                  i32.const 9
                                                  i32.ge_s
                                                  i32.or
                                                  local.get 10
                                                  i32.const 17
                                                  i32.gt_s
                                                  i32.or
                                                  br_if 0 (;@23;)
                                                  local.get 10
                                                  i32.const 9
                                                  i32.eq
                                                  if  ;; label = @24
                                                    local.get 1
                                                    i32.const 192
                                                    i32.add
                                                    local.get 17
                                                    call $__floatsitf
                                                    local.get 1
                                                    i32.const 176
                                                    i32.add
                                                    local.get 1
                                                    i32.load offset=784
                                                    call $__floatunsitf
                                                    local.get 1
                                                    i32.const 160
                                                    i32.add
                                                    local.get 1
                                                    i64.load offset=192
                                                    local.get 1
                                                    i64.load offset=200
                                                    local.get 1
                                                    i64.load offset=176
                                                    local.get 1
                                                    i64.load offset=184
                                                    call $__multf3
                                                    local.get 1
                                                    i64.load offset=160
                                                    local.set 33
                                                    local.get 1
                                                    i64.load offset=168
                                                    br 2 (;@22;)
                                                  end
                                                  local.get 10
                                                  i32.const 8
                                                  i32.le_s
                                                  if  ;; label = @24
                                                    local.get 1
                                                    i32.const 272
                                                    i32.add
                                                    local.get 17
                                                    call $__floatsitf
                                                    local.get 1
                                                    i32.const 256
                                                    i32.add
                                                    local.get 1
                                                    i32.load offset=784
                                                    call $__floatunsitf
                                                    local.get 1
                                                    i32.const 240
                                                    i32.add
                                                    local.get 1
                                                    i64.load offset=272
                                                    local.get 1
                                                    i64.load offset=280
                                                    local.get 1
                                                    i64.load offset=256
                                                    local.get 1
                                                    i64.load offset=264
                                                    call $__multf3
                                                    local.get 1
                                                    i32.const 224
                                                    i32.add
                                                    i32.const 0
                                                    local.get 10
                                                    i32.sub
                                                    i32.const 2
                                                    i32.shl
                                                    i32.const 1120
                                                    i32.add
                                                    i32.load
                                                    call $__floatsitf
                                                    local.get 1
                                                    i32.const 208
                                                    i32.add
                                                    local.get 1
                                                    i64.load offset=240
                                                    local.get 1
                                                    i64.load offset=248
                                                    local.get 1
                                                    i64.load offset=224
                                                    local.get 1
                                                    i64.load offset=232
                                                    call $__divtf3
                                                    local.get 1
                                                    i64.load offset=208
                                                    local.set 33
                                                    local.get 1
                                                    i64.load offset=216
                                                    br 2 (;@22;)
                                                  end
                                                  local.get 24
                                                  local.get 10
                                                  i32.const -3
                                                  i32.mul
                                                  i32.add
                                                  i32.const 27
                                                  i32.add
                                                  local.tee 2
                                                  i32.const 30
                                                  i32.le_s
                                                  i32.const 0
                                                  local.get 1
                                                  i32.load offset=784
                                                  local.tee 0
                                                  local.get 2
                                                  i32.shr_u
                                                  select
                                                  br_if 0 (;@23;)
                                                  local.get 1
                                                  i32.const 352
                                                  i32.add
                                                  local.get 17
                                                  call $__floatsitf
                                                  local.get 1
                                                  i32.const 336
                                                  i32.add
                                                  local.get 0
                                                  call $__floatunsitf
                                                  local.get 1
                                                  i32.const 320
                                                  i32.add
                                                  local.get 1
                                                  i64.load offset=352
                                                  local.get 1
                                                  i64.load offset=360
                                                  local.get 1
                                                  i64.load offset=336
                                                  local.get 1
                                                  i64.load offset=344
                                                  call $__multf3
                                                  local.get 1
                                                  i32.const 304
                                                  i32.add
                                                  local.get 10
                                                  i32.const 2
                                                  i32.shl
                                                  i32.const 1048
                                                  i32.add
                                                  i32.load
                                                  call $__floatsitf
                                                  local.get 1
                                                  i32.const 288
                                                  i32.add
                                                  local.get 1
                                                  i64.load offset=320
                                                  local.get 1
                                                  i64.load offset=328
                                                  local.get 1
                                                  i64.load offset=304
                                                  local.get 1
                                                  i64.load offset=312
                                                  call $__multf3
                                                  local.get 1
                                                  i64.load offset=288
                                                  local.set 33
                                                  local.get 1
                                                  i64.load offset=296
                                                  br 1 (;@22;)
                                                end
                                                loop  ;; label = @23
                                                  local.get 1
                                                  i32.const 784
                                                  i32.add
                                                  local.get 3
                                                  local.tee 2
                                                  i32.const 1
                                                  i32.sub
                                                  local.tee 3
                                                  i32.const 2
                                                  i32.shl
                                                  i32.add
                                                  i32.load
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                end
                                                i32.const 0
                                                local.set 19
                                                block  ;; label = @23
                                                  local.get 10
                                                  i32.const 9
                                                  i32.rem_s
                                                  local.tee 0
                                                  i32.eqz
                                                  if  ;; label = @24
                                                    i32.const 0
                                                    local.set 0
                                                    br 1 (;@23;)
                                                  end
                                                  local.get 0
                                                  local.get 0
                                                  i32.const 9
                                                  i32.add
                                                  local.get 10
                                                  i32.const 0
                                                  i32.ge_s
                                                  select
                                                  local.set 4
                                                  block  ;; label = @24
                                                    local.get 2
                                                    i32.eqz
                                                    if  ;; label = @25
                                                      i32.const 0
                                                      local.set 0
                                                      i32.const 0
                                                      local.set 2
                                                      br 1 (;@24;)
                                                    end
                                                    i32.const 1000000000
                                                    i32.const 0
                                                    local.get 4
                                                    i32.sub
                                                    i32.const 2
                                                    i32.shl
                                                    i32.const 1120
                                                    i32.add
                                                    i32.load
                                                    local.tee 12
                                                    i32.div_s
                                                    local.set 13
                                                    i32.const 0
                                                    local.set 7
                                                    i32.const 0
                                                    local.set 16
                                                    i32.const 0
                                                    local.set 0
                                                    loop  ;; label = @25
                                                      local.get 1
                                                      i32.const 784
                                                      i32.add
                                                      local.get 16
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.tee 3
                                                      local.get 7
                                                      local.get 3
                                                      i32.load
                                                      local.tee 11
                                                      local.get 12
                                                      i32.div_u
                                                      local.tee 5
                                                      i32.add
                                                      local.tee 3
                                                      i32.store
                                                      local.get 0
                                                      i32.const 1
                                                      i32.add
                                                      i32.const 2047
                                                      i32.and
                                                      local.get 0
                                                      local.get 3
                                                      i32.eqz
                                                      local.get 0
                                                      local.get 16
                                                      i32.eq
                                                      i32.and
                                                      local.tee 3
                                                      select
                                                      local.set 0
                                                      local.get 10
                                                      i32.const 9
                                                      i32.sub
                                                      local.get 10
                                                      local.get 3
                                                      select
                                                      local.set 10
                                                      local.get 13
                                                      local.get 11
                                                      local.get 5
                                                      local.get 12
                                                      i32.mul
                                                      i32.sub
                                                      i32.mul
                                                      local.set 7
                                                      local.get 16
                                                      i32.const 1
                                                      i32.add
                                                      local.tee 16
                                                      local.get 2
                                                      i32.ne
                                                      br_if 0 (;@25;)
                                                    end
                                                    local.get 7
                                                    i32.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 1
                                                    i32.const 784
                                                    i32.add
                                                    local.get 2
                                                    i32.const 2
                                                    i32.shl
                                                    i32.add
                                                    local.get 7
                                                    i32.store
                                                    local.get 2
                                                    i32.const 1
                                                    i32.add
                                                    local.set 2
                                                  end
                                                  local.get 10
                                                  local.get 4
                                                  i32.sub
                                                  i32.const 9
                                                  i32.add
                                                  local.set 10
                                                end
                                                loop  ;; label = @23
                                                  local.get 1
                                                  i32.const 784
                                                  i32.add
                                                  local.get 0
                                                  i32.const 2
                                                  i32.shl
                                                  i32.add
                                                  local.set 11
                                                  block  ;; label = @24
                                                    loop  ;; label = @25
                                                      local.get 10
                                                      i32.const 36
                                                      i32.ge_s
                                                      if  ;; label = @26
                                                        local.get 10
                                                        i32.const 36
                                                        i32.ne
                                                        br_if 2 (;@24;)
                                                        local.get 11
                                                        i32.load
                                                        i32.const 10384593
                                                        i32.ge_u
                                                        br_if 2 (;@24;)
                                                      end
                                                      local.get 2
                                                      i32.const 2047
                                                      i32.add
                                                      local.set 5
                                                      i32.const 0
                                                      local.set 7
                                                      loop  ;; label = @26
                                                        local.get 7
                                                        i64.extend_i32_u
                                                        local.get 1
                                                        i32.const 784
                                                        i32.add
                                                        local.get 5
                                                        i32.const 2047
                                                        i32.and
                                                        local.tee 13
                                                        i32.const 2
                                                        i32.shl
                                                        i32.add
                                                        local.tee 3
                                                        i64.load32_u
                                                        i64.const 29
                                                        i64.shl
                                                        i64.add
                                                        local.tee 32
                                                        i64.const 1000000001
                                                        i64.lt_u
                                                        if (result i32)  ;; label = @27
                                                          i32.const 0
                                                        else
                                                          local.get 32
                                                          local.get 32
                                                          i64.const 1000000000
                                                          i64.div_u
                                                          local.tee 33
                                                          i64.const 1000000000
                                                          i64.mul
                                                          i64.sub
                                                          local.set 32
                                                          local.get 33
                                                          i32.wrap_i64
                                                        end
                                                        local.set 7
                                                        local.get 3
                                                        local.get 32
                                                        i32.wrap_i64
                                                        local.tee 3
                                                        i32.store
                                                        local.get 2
                                                        local.get 2
                                                        local.get 2
                                                        local.get 13
                                                        local.get 3
                                                        select
                                                        local.get 0
                                                        local.get 13
                                                        i32.eq
                                                        select
                                                        local.get 13
                                                        local.get 2
                                                        i32.const 1
                                                        i32.sub
                                                        i32.const 2047
                                                        i32.and
                                                        i32.ne
                                                        select
                                                        local.set 2
                                                        local.get 13
                                                        i32.const 1
                                                        i32.sub
                                                        local.set 5
                                                        local.get 0
                                                        local.get 13
                                                        i32.ne
                                                        br_if 0 (;@26;)
                                                      end
                                                      local.get 19
                                                      i32.const 29
                                                      i32.sub
                                                      local.set 19
                                                      local.get 7
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                    end
                                                    local.get 2
                                                    local.get 0
                                                    i32.const 1
                                                    i32.sub
                                                    i32.const 2047
                                                    i32.and
                                                    local.tee 0
                                                    i32.eq
                                                    if  ;; label = @25
                                                      local.get 1
                                                      i32.const 784
                                                      i32.add
                                                      local.tee 5
                                                      local.get 2
                                                      i32.const 2046
                                                      i32.add
                                                      i32.const 2047
                                                      i32.and
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.tee 3
                                                      local.get 3
                                                      i32.load
                                                      local.get 2
                                                      i32.const 1
                                                      i32.sub
                                                      i32.const 2047
                                                      i32.and
                                                      local.tee 2
                                                      i32.const 2
                                                      i32.shl
                                                      local.get 5
                                                      i32.add
                                                      i32.load
                                                      i32.or
                                                      i32.store
                                                    end
                                                    local.get 10
                                                    i32.const 9
                                                    i32.add
                                                    local.set 10
                                                    local.get 1
                                                    i32.const 784
                                                    i32.add
                                                    local.get 0
                                                    i32.const 2
                                                    i32.shl
                                                    i32.add
                                                    local.get 7
                                                    i32.store
                                                    br 1 (;@23;)
                                                  end
                                                end
                                                block  ;; label = @23
                                                  loop  ;; label = @24
                                                    local.get 2
                                                    i32.const 1
                                                    i32.add
                                                    i32.const 2047
                                                    i32.and
                                                    local.set 3
                                                    local.get 1
                                                    i32.const 784
                                                    i32.add
                                                    local.get 2
                                                    i32.const 1
                                                    i32.sub
                                                    i32.const 2047
                                                    i32.and
                                                    i32.const 2
                                                    i32.shl
                                                    i32.add
                                                    local.set 15
                                                    loop  ;; label = @25
                                                      i32.const 9
                                                      i32.const 1
                                                      local.get 10
                                                      i32.const 45
                                                      i32.gt_s
                                                      select
                                                      local.set 7
                                                      block  ;; label = @26
                                                        loop  ;; label = @27
                                                          local.get 0
                                                          local.set 5
                                                          i32.const 0
                                                          local.set 16
                                                          block  ;; label = @28
                                                            loop  ;; label = @29
                                                              block  ;; label = @30
                                                                local.get 5
                                                                local.get 16
                                                                i32.add
                                                                i32.const 2047
                                                                i32.and
                                                                local.tee 0
                                                                local.get 2
                                                                i32.eq
                                                                br_if 0 (;@30;)
                                                                local.get 1
                                                                i32.const 784
                                                                i32.add
                                                                local.get 0
                                                                i32.const 2
                                                                i32.shl
                                                                i32.add
                                                                i32.load
                                                                local.tee 11
                                                                local.get 16
                                                                i32.const 2
                                                                i32.shl
                                                                i32.const 1072
                                                                i32.add
                                                                i32.load
                                                                local.tee 0
                                                                i32.lt_u
                                                                br_if 0 (;@30;)
                                                                local.get 0
                                                                local.get 11
                                                                i32.lt_u
                                                                br_if 2 (;@28;)
                                                                local.get 16
                                                                i32.const 1
                                                                i32.add
                                                                local.tee 16
                                                                i32.const 4
                                                                i32.ne
                                                                br_if 1 (;@29;)
                                                              end
                                                            end
                                                            local.get 10
                                                            i32.const 36
                                                            i32.ne
                                                            br_if 0 (;@28;)
                                                            i64.const 0
                                                            local.set 32
                                                            i32.const 0
                                                            local.set 16
                                                            i64.const 0
                                                            local.set 33
                                                            loop  ;; label = @29
                                                              local.get 2
                                                              local.get 5
                                                              local.get 16
                                                              i32.add
                                                              i32.const 2047
                                                              i32.and
                                                              local.tee 0
                                                              i32.eq
                                                              if  ;; label = @30
                                                                local.get 2
                                                                i32.const 1
                                                                i32.add
                                                                i32.const 2047
                                                                i32.and
                                                                local.tee 2
                                                                i32.const 2
                                                                i32.shl
                                                                local.get 1
                                                                i32.add
                                                                i32.const 0
                                                                i32.store offset=780
                                                              end
                                                              local.get 1
                                                              i32.const 768
                                                              i32.add
                                                              local.get 1
                                                              i32.const 784
                                                              i32.add
                                                              local.get 0
                                                              i32.const 2
                                                              i32.shl
                                                              i32.add
                                                              i32.load
                                                              call $__floatunsitf
                                                              local.get 1
                                                              i32.const 752
                                                              i32.add
                                                              local.get 32
                                                              local.get 33
                                                              i64.const 0
                                                              i64.const 4619810130798575616
                                                              call $__multf3
                                                              local.get 1
                                                              i32.const 736
                                                              i32.add
                                                              local.get 1
                                                              i64.load offset=752
                                                              local.get 1
                                                              i64.load offset=760
                                                              local.get 1
                                                              i64.load offset=768
                                                              local.get 1
                                                              i64.load offset=776
                                                              call $__addtf3
                                                              local.get 1
                                                              i64.load offset=744
                                                              local.set 33
                                                              local.get 1
                                                              i64.load offset=736
                                                              local.set 32
                                                              local.get 16
                                                              i32.const 1
                                                              i32.add
                                                              local.tee 16
                                                              i32.const 4
                                                              i32.ne
                                                              br_if 0 (;@29;)
                                                            end
                                                            local.get 1
                                                            i32.const 720
                                                            i32.add
                                                            local.get 17
                                                            call $__floatsitf
                                                            local.get 1
                                                            i32.const 704
                                                            i32.add
                                                            local.get 32
                                                            local.get 33
                                                            local.get 1
                                                            i64.load offset=720
                                                            local.get 1
                                                            i64.load offset=728
                                                            call $__multf3
                                                            local.get 1
                                                            i64.load offset=712
                                                            local.set 33
                                                            i64.const 0
                                                            local.set 32
                                                            local.get 1
                                                            i64.load offset=704
                                                            local.set 36
                                                            local.get 19
                                                            i32.const 113
                                                            i32.add
                                                            local.tee 3
                                                            local.get 26
                                                            i32.sub
                                                            local.tee 13
                                                            i32.const 0
                                                            local.get 13
                                                            i32.const 0
                                                            i32.gt_s
                                                            select
                                                            local.get 24
                                                            local.get 13
                                                            local.get 24
                                                            i32.lt_s
                                                            local.tee 11
                                                            select
                                                            local.tee 12
                                                            i32.const 112
                                                            i32.le_s
                                                            br_if 2 (;@26;)
                                                            br 5 (;@23;)
                                                          end
                                                          local.get 7
                                                          local.get 19
                                                          i32.add
                                                          local.set 19
                                                          local.get 5
                                                          local.get 2
                                                          local.tee 0
                                                          i32.eq
                                                          br_if 0 (;@27;)
                                                        end
                                                        i32.const 1000000000
                                                        local.get 7
                                                        i32.shr_u
                                                        local.set 4
                                                        i32.const -1
                                                        local.get 7
                                                        i32.shl
                                                        i32.const -1
                                                        i32.xor
                                                        local.set 12
                                                        i32.const 0
                                                        local.set 16
                                                        local.get 5
                                                        local.set 0
                                                        loop  ;; label = @27
                                                          local.get 1
                                                          i32.const 784
                                                          i32.add
                                                          local.get 5
                                                          i32.const 2
                                                          i32.shl
                                                          i32.add
                                                          local.tee 11
                                                          local.get 16
                                                          local.get 11
                                                          i32.load
                                                          local.tee 13
                                                          local.get 7
                                                          i32.shr_u
                                                          i32.add
                                                          local.tee 11
                                                          i32.store
                                                          local.get 0
                                                          i32.const 1
                                                          i32.add
                                                          i32.const 2047
                                                          i32.and
                                                          local.get 0
                                                          local.get 11
                                                          i32.eqz
                                                          local.get 0
                                                          local.get 5
                                                          i32.eq
                                                          i32.and
                                                          local.tee 11
                                                          select
                                                          local.set 0
                                                          local.get 10
                                                          i32.const 9
                                                          i32.sub
                                                          local.get 10
                                                          local.get 11
                                                          select
                                                          local.set 10
                                                          local.get 12
                                                          local.get 13
                                                          i32.and
                                                          local.get 4
                                                          i32.mul
                                                          local.set 16
                                                          local.get 5
                                                          i32.const 1
                                                          i32.add
                                                          i32.const 2047
                                                          i32.and
                                                          local.tee 5
                                                          local.get 2
                                                          i32.ne
                                                          br_if 0 (;@27;)
                                                        end
                                                        local.get 16
                                                        i32.eqz
                                                        br_if 1 (;@25;)
                                                        local.get 0
                                                        local.get 3
                                                        i32.ne
                                                        if  ;; label = @27
                                                          local.get 1
                                                          i32.const 784
                                                          i32.add
                                                          local.get 2
                                                          i32.const 2
                                                          i32.shl
                                                          i32.add
                                                          local.get 16
                                                          i32.store
                                                          local.get 3
                                                          local.set 2
                                                          br 3 (;@24;)
                                                        end
                                                        local.get 15
                                                        local.get 15
                                                        i32.load
                                                        i32.const 1
                                                        i32.or
                                                        i32.store
                                                        local.get 3
                                                        local.set 0
                                                        br 1 (;@25;)
                                                      end
                                                    end
                                                  end
                                                  local.get 1
                                                  i32.const 656
                                                  i32.add
                                                  i32.const 225
                                                  local.get 12
                                                  i32.sub
                                                  call $scalbn
                                                  call $__extenddftf2
                                                  local.get 1
                                                  i32.const 688
                                                  i32.add
                                                  local.get 1
                                                  i64.load offset=656
                                                  local.get 1
                                                  i64.load offset=664
                                                  local.get 36
                                                  local.get 33
                                                  call $copysignl
                                                  local.get 1
                                                  i64.load offset=696
                                                  local.set 38
                                                  local.get 1
                                                  i64.load offset=688
                                                  local.set 34
                                                  local.get 1
                                                  i32.const 640
                                                  i32.add
                                                  i32.const 113
                                                  local.get 12
                                                  i32.sub
                                                  call $scalbn
                                                  call $__extenddftf2
                                                  local.get 1
                                                  i32.const 672
                                                  i32.add
                                                  local.get 36
                                                  local.get 33
                                                  local.get 1
                                                  i64.load offset=640
                                                  local.get 1
                                                  i64.load offset=648
                                                  call $fmodl
                                                  local.get 1
                                                  i32.const 624
                                                  i32.add
                                                  local.get 36
                                                  local.get 33
                                                  local.get 1
                                                  i64.load offset=672
                                                  local.tee 32
                                                  local.get 1
                                                  i64.load offset=680
                                                  local.tee 35
                                                  call $__subtf3
                                                  local.get 1
                                                  i32.const 608
                                                  i32.add
                                                  local.get 34
                                                  local.get 38
                                                  local.get 1
                                                  i64.load offset=624
                                                  local.get 1
                                                  i64.load offset=632
                                                  call $__addtf3
                                                  local.get 1
                                                  i64.load offset=616
                                                  local.set 33
                                                  local.get 1
                                                  i64.load offset=608
                                                  local.set 36
                                                end
                                                block  ;; label = @23
                                                  local.get 5
                                                  i32.const 4
                                                  i32.add
                                                  i32.const 2047
                                                  i32.and
                                                  local.tee 0
                                                  local.get 2
                                                  i32.eq
                                                  br_if 0 (;@23;)
                                                  block  ;; label = @24
                                                    local.get 1
                                                    i32.const 784
                                                    i32.add
                                                    local.get 0
                                                    i32.const 2
                                                    i32.shl
                                                    i32.add
                                                    i32.load
                                                    local.tee 0
                                                    i32.const 499999999
                                                    i32.le_u
                                                    if  ;; label = @25
                                                      local.get 0
                                                      i32.eqz
                                                      local.get 5
                                                      i32.const 5
                                                      i32.add
                                                      i32.const 2047
                                                      i32.and
                                                      local.get 2
                                                      i32.eq
                                                      i32.and
                                                      br_if 1 (;@24;)
                                                      local.get 1
                                                      i32.const 496
                                                      i32.add
                                                      local.get 17
                                                      f64.convert_i32_s
                                                      f64.const 0x1p-2 (;=0.25;)
                                                      f64.mul
                                                      call $__extenddftf2
                                                      local.get 1
                                                      i32.const 480
                                                      i32.add
                                                      local.get 32
                                                      local.get 35
                                                      local.get 1
                                                      i64.load offset=496
                                                      local.get 1
                                                      i64.load offset=504
                                                      call $__addtf3
                                                      local.get 1
                                                      i64.load offset=488
                                                      local.set 35
                                                      local.get 1
                                                      i64.load offset=480
                                                      local.set 32
                                                      br 1 (;@24;)
                                                    end
                                                    local.get 0
                                                    i32.const 500000000
                                                    i32.ne
                                                    if  ;; label = @25
                                                      local.get 1
                                                      i32.const 592
                                                      i32.add
                                                      local.get 17
                                                      f64.convert_i32_s
                                                      f64.const 0x1.8p-1 (;=0.75;)
                                                      f64.mul
                                                      call $__extenddftf2
                                                      local.get 1
                                                      i32.const 576
                                                      i32.add
                                                      local.get 32
                                                      local.get 35
                                                      local.get 1
                                                      i64.load offset=592
                                                      local.get 1
                                                      i64.load offset=600
                                                      call $__addtf3
                                                      local.get 1
                                                      i64.load offset=584
                                                      local.set 35
                                                      local.get 1
                                                      i64.load offset=576
                                                      local.set 32
                                                      br 1 (;@24;)
                                                    end
                                                    local.get 17
                                                    f64.convert_i32_s
                                                    local.set 40
                                                    local.get 2
                                                    local.get 5
                                                    i32.const 5
                                                    i32.add
                                                    i32.const 2047
                                                    i32.and
                                                    i32.eq
                                                    if  ;; label = @25
                                                      local.get 1
                                                      i32.const 528
                                                      i32.add
                                                      local.get 40
                                                      f64.const 0x1p-1 (;=0.5;)
                                                      f64.mul
                                                      call $__extenddftf2
                                                      local.get 1
                                                      i32.const 512
                                                      i32.add
                                                      local.get 32
                                                      local.get 35
                                                      local.get 1
                                                      i64.load offset=528
                                                      local.get 1
                                                      i64.load offset=536
                                                      call $__addtf3
                                                      local.get 1
                                                      i64.load offset=520
                                                      local.set 35
                                                      local.get 1
                                                      i64.load offset=512
                                                      local.set 32
                                                      br 1 (;@24;)
                                                    end
                                                    local.get 1
                                                    i32.const 560
                                                    i32.add
                                                    local.get 40
                                                    f64.const 0x1.8p-1 (;=0.75;)
                                                    f64.mul
                                                    call $__extenddftf2
                                                    local.get 1
                                                    i32.const 544
                                                    i32.add
                                                    local.get 32
                                                    local.get 35
                                                    local.get 1
                                                    i64.load offset=560
                                                    local.get 1
                                                    i64.load offset=568
                                                    call $__addtf3
                                                    local.get 1
                                                    i64.load offset=552
                                                    local.set 35
                                                    local.get 1
                                                    i64.load offset=544
                                                    local.set 32
                                                  end
                                                  local.get 12
                                                  i32.const 111
                                                  i32.gt_s
                                                  br_if 0 (;@23;)
                                                  local.get 1
                                                  i32.const 464
                                                  i32.add
                                                  local.get 32
                                                  local.get 35
                                                  i64.const 0
                                                  i64.const 4611404543450677248
                                                  call $fmodl
                                                  local.get 1
                                                  i64.load offset=464
                                                  local.get 1
                                                  i64.load offset=472
                                                  i64.const 0
                                                  i64.const 0
                                                  call $__letf2
                                                  br_if 0 (;@23;)
                                                  local.get 1
                                                  i32.const 448
                                                  i32.add
                                                  local.get 32
                                                  local.get 35
                                                  i64.const 0
                                                  i64.const 4611404543450677248
                                                  call $__addtf3
                                                  local.get 1
                                                  i64.load offset=456
                                                  local.set 35
                                                  local.get 1
                                                  i64.load offset=448
                                                  local.set 32
                                                end
                                                local.get 1
                                                i32.const 432
                                                i32.add
                                                local.get 36
                                                local.get 33
                                                local.get 32
                                                local.get 35
                                                call $__addtf3
                                                local.get 1
                                                i32.const 416
                                                i32.add
                                                local.get 1
                                                i64.load offset=432
                                                local.get 1
                                                i64.load offset=440
                                                local.get 34
                                                local.get 38
                                                call $__subtf3
                                                local.get 1
                                                i64.load offset=424
                                                local.set 33
                                                local.get 1
                                                i64.load offset=416
                                                local.set 36
                                                block  ;; label = @23
                                                  i32.const -2
                                                  local.get 18
                                                  i32.sub
                                                  local.get 3
                                                  i32.const 2147483647
                                                  i32.and
                                                  i32.ge_s
                                                  br_if 0 (;@23;)
                                                  local.get 1
                                                  local.get 33
                                                  i64.const 9223372036854775807
                                                  i64.and
                                                  i64.store offset=408
                                                  local.get 1
                                                  local.get 36
                                                  i64.store offset=400
                                                  local.get 1
                                                  i32.const 384
                                                  i32.add
                                                  local.get 36
                                                  local.get 33
                                                  i64.const 0
                                                  i64.const 4611123068473966592
                                                  call $__multf3
                                                  local.get 1
                                                  i64.load offset=400
                                                  local.tee 38
                                                  local.get 1
                                                  i64.load offset=408
                                                  local.tee 37
                                                  i64.const 4643211215818981376
                                                  call $__getf2
                                                  local.set 2
                                                  local.get 33
                                                  local.get 1
                                                  i64.load offset=392
                                                  local.get 2
                                                  i32.const 0
                                                  i32.lt_s
                                                  local.tee 0
                                                  select
                                                  local.set 33
                                                  local.get 36
                                                  local.get 1
                                                  i64.load offset=384
                                                  local.get 0
                                                  select
                                                  local.set 36
                                                  local.get 23
                                                  local.get 19
                                                  local.get 2
                                                  i32.const 0
                                                  i32.ge_s
                                                  i32.add
                                                  local.tee 19
                                                  i32.const 110
                                                  i32.add
                                                  i32.ge_s
                                                  if  ;; label = @24
                                                    local.get 11
                                                    local.get 11
                                                    local.get 12
                                                    local.get 13
                                                    i32.ne
                                                    i32.and
                                                    local.get 38
                                                    local.get 37
                                                    i64.const 4643211215818981376
                                                    call $__getf2
                                                    i32.const 0
                                                    i32.lt_s
                                                    select
                                                    i32.const 1
                                                    i32.ne
                                                    br_if 1 (;@23;)
                                                    local.get 32
                                                    local.get 35
                                                    i64.const 0
                                                    i64.const 0
                                                    call $__letf2
                                                    i32.eqz
                                                    br_if 1 (;@23;)
                                                  end
                                                  i32.const 3460
                                                  i32.const 68
                                                  i32.store
                                                end
                                                local.get 1
                                                i32.const 368
                                                i32.add
                                                local.get 36
                                                local.get 33
                                                local.get 19
                                                call $scalbnl
                                                local.get 1
                                                i64.load offset=368
                                                local.set 33
                                                local.get 1
                                                i64.load offset=376
                                              end
                                              i64.store offset=40
                                              local.get 21
                                              local.get 33
                                              i64.store offset=32
                                              local.get 1
                                              i32.const 8976
                                              i32.add
                                              global.set $__stack_pointer
                                              local.get 21
                                              i64.load offset=40
                                              local.set 32
                                              local.get 21
                                              i64.load offset=32
                                              local.set 33
                                              br 4 (;@17;)
                                            end
                                            br 1 (;@19;)
                                          end
                                          block  ;; label = @20
                                            block (result i32)  ;; label = @21
                                              i32.const 2116
                                              i32.load
                                              local.tee 0
                                              i32.const 2216
                                              i32.load
                                              i32.ne
                                              if  ;; label = @22
                                                i32.const 2116
                                                local.get 0
                                                i32.const 1
                                                i32.add
                                                i32.store
                                                local.get 0
                                                i32.load8_u
                                                br 1 (;@21;)
                                              end
                                              call $__shgetc
                                            end
                                            i32.const 40
                                            i32.eq
                                            if  ;; label = @21
                                              i32.const 1
                                              local.set 5
                                              br 1 (;@20;)
                                            end
                                            i64.const 9223231299366420480
                                            local.set 32
                                            i32.const 2224
                                            i64.load
                                            i64.const 0
                                            i64.lt_s
                                            br_if 3 (;@17;)
                                            i32.const 2116
                                            i32.const 2116
                                            i32.load
                                            i32.const 1
                                            i32.sub
                                            i32.store
                                            br 3 (;@17;)
                                          end
                                          loop  ;; label = @20
                                            block (result i32)  ;; label = @21
                                              i32.const 2116
                                              i32.load
                                              local.tee 0
                                              i32.const 2216
                                              i32.load
                                              i32.ne
                                              if  ;; label = @22
                                                i32.const 2116
                                                local.get 0
                                                i32.const 1
                                                i32.add
                                                i32.store
                                                local.get 0
                                                i32.load8_u
                                                br 1 (;@21;)
                                              end
                                              call $__shgetc
                                            end
                                            local.tee 0
                                            i32.const 48
                                            i32.sub
                                            i32.const 10
                                            i32.lt_u
                                            local.get 0
                                            i32.const 65
                                            i32.sub
                                            i32.const 26
                                            i32.lt_u
                                            i32.or
                                            local.get 0
                                            i32.const 95
                                            i32.eq
                                            i32.or
                                            i32.eqz
                                            local.get 0
                                            i32.const 97
                                            i32.sub
                                            i32.const 26
                                            i32.ge_u
                                            i32.and
                                            i32.eqz
                                            if  ;; label = @21
                                              local.get 5
                                              i32.const 1
                                              i32.add
                                              local.set 5
                                              br 1 (;@20;)
                                            end
                                          end
                                          i64.const 9223231299366420480
                                          local.set 32
                                          local.get 0
                                          i32.const 41
                                          i32.eq
                                          br_if 2 (;@17;)
                                        end
                                        i32.const 2224
                                        i64.load
                                        i64.const 0
                                        i64.ge_s
                                        if  ;; label = @19
                                          i32.const 2116
                                          i32.const 2116
                                          i32.load
                                          i32.const 1
                                          i32.sub
                                          i32.store
                                        end
                                        i32.const 3460
                                        i32.const 28
                                        i32.store
                                        i64.const 0
                                        call $__shlim
                                      end
                                      i64.const 0
                                      local.set 32
                                    end
                                    local.get 9
                                    local.get 33
                                    i64.store offset=8
                                    local.get 9
                                    local.get 32
                                    i64.store offset=16
                                    local.get 21
                                    i32.const 48
                                    i32.add
                                    global.set $__stack_pointer
                                    i32.const 2232
                                    i64.load
                                    i64.const 0
                                    i32.const 2116
                                    i32.load
                                    i32.const 2156
                                    i32.load
                                    i32.sub
                                    i64.extend_i32_s
                                    i64.sub
                                    i64.ne
                                    br_if 5 (;@11;)
                                    br 13 (;@3;)
                                  end
                                  local.get 23
                                  i32.const 239
                                  i32.and
                                  i32.const 99
                                  i32.eq
                                  if  ;; label = @16
                                    local.get 9
                                    i32.const 32
                                    i32.add
                                    i32.const -1
                                    i32.const 257
                                    call $memset
                                    local.get 9
                                    i32.const 0
                                    i32.store8 offset=32
                                    local.get 23
                                    i32.const 115
                                    i32.ne
                                    br_if 6 (;@10;)
                                    local.get 9
                                    i32.const 0
                                    i32.store8 offset=65
                                    local.get 9
                                    i32.const 0
                                    i32.store8 offset=46
                                    local.get 9
                                    i32.const 0
                                    i32.store offset=42 align=2
                                    br 6 (;@10;)
                                  end
                                  local.get 9
                                  i32.const 32
                                  i32.add
                                  local.get 6
                                  i32.load8_u offset=1
                                  local.tee 5
                                  i32.const 94
                                  i32.eq
                                  local.tee 0
                                  i32.const 257
                                  call $memset
                                  local.get 9
                                  i32.const 0
                                  i32.store8 offset=32
                                  local.get 6
                                  i32.const 2
                                  i32.add
                                  local.get 6
                                  i32.const 1
                                  i32.add
                                  local.get 0
                                  select
                                  local.set 2
                                  block (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 6
                                        i32.const 2
                                        i32.const 1
                                        local.get 0
                                        select
                                        i32.add
                                        i32.load8_u
                                        local.tee 0
                                        i32.const 45
                                        i32.ne
                                        if  ;; label = @19
                                          local.get 0
                                          i32.const 93
                                          i32.eq
                                          br_if 1 (;@18;)
                                          local.get 5
                                          i32.const 94
                                          i32.ne
                                          local.set 15
                                          local.get 2
                                          br 3 (;@16;)
                                        end
                                        local.get 9
                                        local.get 5
                                        i32.const 94
                                        i32.ne
                                        local.tee 15
                                        i32.store8 offset=78
                                        br 1 (;@17;)
                                      end
                                      local.get 9
                                      local.get 5
                                      i32.const 94
                                      i32.ne
                                      local.tee 15
                                      i32.store8 offset=126
                                    end
                                    local.get 2
                                    i32.const 1
                                    i32.add
                                  end
                                  local.set 6
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 6
                                      i32.load8_u
                                      local.tee 0
                                      i32.const 45
                                      i32.ne
                                      if  ;; label = @18
                                        local.get 0
                                        i32.eqz
                                        br_if 13 (;@5;)
                                        local.get 0
                                        i32.const 93
                                        i32.ne
                                        br_if 1 (;@17;)
                                        br 8 (;@10;)
                                      end
                                      i32.const 45
                                      local.set 0
                                      local.get 6
                                      i32.load8_u offset=1
                                      local.tee 5
                                      i32.eqz
                                      local.get 5
                                      i32.const 93
                                      i32.eq
                                      i32.or
                                      br_if 0 (;@17;)
                                      local.get 6
                                      i32.const 1
                                      i32.add
                                      local.set 2
                                      block  ;; label = @18
                                        local.get 5
                                        local.get 6
                                        i32.const 1
                                        i32.sub
                                        i32.load8_u
                                        local.tee 6
                                        i32.le_u
                                        if  ;; label = @19
                                          local.get 5
                                          local.set 0
                                          br 1 (;@18;)
                                        end
                                        loop  ;; label = @19
                                          local.get 6
                                          i32.const 1
                                          i32.add
                                          local.tee 6
                                          local.get 9
                                          i32.const 32
                                          i32.add
                                          i32.add
                                          local.get 15
                                          i32.store8
                                          local.get 6
                                          local.get 2
                                          i32.load8_u
                                          local.tee 0
                                          i32.lt_u
                                          br_if 0 (;@19;)
                                        end
                                      end
                                      local.get 2
                                      local.set 6
                                    end
                                    local.get 0
                                    local.get 9
                                    i32.add
                                    local.get 15
                                    i32.store8 offset=33
                                    local.get 6
                                    i32.const 1
                                    i32.add
                                    local.set 6
                                    br 0 (;@16;)
                                  end
                                  unreachable
                                end
                                i32.const 8
                                local.set 0
                                br 2 (;@12;)
                              end
                              i32.const 10
                              local.set 0
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 0
                          end
                          i64.const 0
                          local.set 34
                          i32.const 0
                          local.set 7
                          i32.const 0
                          local.set 18
                          i32.const 0
                          local.set 2
                          global.get $__stack_pointer
                          i32.const 16
                          i32.sub
                          local.tee 11
                          global.set $__stack_pointer
                          block  ;; label = @12
                            local.get 0
                            i32.const 1
                            i32.ne
                            local.get 0
                            i32.const 36
                            i32.le_u
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              i32.const 3460
                              i32.const 28
                              i32.store
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              block (result i32)  ;; label = @14
                                i32.const 2116
                                i32.load
                                local.tee 3
                                i32.const 2216
                                i32.load
                                i32.ne
                                if  ;; label = @15
                                  i32.const 2116
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  i32.store
                                  local.get 3
                                  i32.load8_u
                                  br 1 (;@14;)
                                end
                                call $__shgetc
                              end
                              local.tee 3
                              call $isspace
                              br_if 0 (;@13;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 3
                                i32.const 43
                                i32.sub
                                br_table 0 (;@14;) 1 (;@13;) 0 (;@14;) 1 (;@13;)
                              end
                              i32.const -1
                              i32.const 0
                              local.get 3
                              i32.const 45
                              i32.eq
                              select
                              local.set 2
                              i32.const 2116
                              i32.load
                              local.tee 3
                              i32.const 2216
                              i32.load
                              i32.ne
                              if  ;; label = @14
                                i32.const 2116
                                local.get 3
                                i32.const 1
                                i32.add
                                i32.store
                                local.get 3
                                i32.load8_u
                                local.set 3
                                br 1 (;@13;)
                              end
                              call $__shgetc
                              local.set 3
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.const -17
                                    i32.and
                                    local.get 3
                                    i32.const 48
                                    i32.ne
                                    i32.or
                                    i32.eqz
                                    if  ;; label = @17
                                      block (result i32)  ;; label = @18
                                        i32.const 2116
                                        i32.load
                                        local.tee 3
                                        i32.const 2216
                                        i32.load
                                        i32.ne
                                        if  ;; label = @19
                                          i32.const 2116
                                          local.get 3
                                          i32.const 1
                                          i32.add
                                          i32.store
                                          local.get 3
                                          i32.load8_u
                                          br 1 (;@18;)
                                        end
                                        call $__shgetc
                                      end
                                      local.tee 3
                                      i32.const -33
                                      i32.and
                                      i32.const 88
                                      i32.eq
                                      if  ;; label = @18
                                        block (result i32)  ;; label = @19
                                          i32.const 2116
                                          i32.load
                                          local.tee 0
                                          i32.const 2216
                                          i32.load
                                          i32.ne
                                          if  ;; label = @20
                                            i32.const 2116
                                            local.get 0
                                            i32.const 1
                                            i32.add
                                            i32.store
                                            local.get 0
                                            i32.load8_u
                                            br 1 (;@19;)
                                          end
                                          call $__shgetc
                                        end
                                        local.set 3
                                        i32.const 16
                                        local.set 0
                                        local.get 3
                                        i32.const 1153
                                        i32.add
                                        i32.load8_u
                                        i32.const 16
                                        i32.lt_u
                                        br_if 3 (;@15;)
                                        i32.const 2224
                                        i64.load
                                        i64.const 0
                                        i64.ge_s
                                        if  ;; label = @19
                                          i32.const 2116
                                          i32.const 2116
                                          i32.load
                                          i32.const 1
                                          i32.sub
                                          i32.store
                                        end
                                        i64.const 0
                                        call $__shlim
                                        br 6 (;@12;)
                                      end
                                      local.get 0
                                      br_if 1 (;@16;)
                                      i32.const 8
                                      local.set 0
                                      br 2 (;@15;)
                                    end
                                    local.get 0
                                    i32.const 10
                                    local.get 0
                                    select
                                    local.tee 0
                                    local.get 3
                                    i32.const 1153
                                    i32.add
                                    i32.load8_u
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    i32.const 2224
                                    i64.load
                                    i64.const 0
                                    i64.ge_s
                                    if  ;; label = @17
                                      i32.const 2116
                                      i32.const 2116
                                      i32.load
                                      i32.const 1
                                      i32.sub
                                      i32.store
                                    end
                                    i64.const 0
                                    call $__shlim
                                    i32.const 3460
                                    i32.const 28
                                    i32.store
                                    br 4 (;@12;)
                                  end
                                  local.get 0
                                  i32.const 10
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 3
                                  i32.const 48
                                  i32.sub
                                  local.tee 7
                                  i32.const 9
                                  i32.le_u
                                  if  ;; label = @16
                                    i32.const 0
                                    local.set 0
                                    loop  ;; label = @17
                                      local.get 0
                                      i32.const 10
                                      i32.mul
                                      local.set 0
                                      block (result i32)  ;; label = @18
                                        i32.const 2116
                                        i32.load
                                        local.tee 3
                                        i32.const 2216
                                        i32.load
                                        i32.ne
                                        if  ;; label = @19
                                          i32.const 2116
                                          local.get 3
                                          i32.const 1
                                          i32.add
                                          i32.store
                                          local.get 3
                                          i32.load8_u
                                          br 1 (;@18;)
                                        end
                                        call $__shgetc
                                      end
                                      local.set 3
                                      local.get 0
                                      local.get 7
                                      i32.add
                                      local.tee 0
                                      i32.const 429496729
                                      i32.lt_u
                                      local.get 3
                                      i32.const 48
                                      i32.sub
                                      local.tee 7
                                      i32.const 9
                                      i32.le_u
                                      i32.and
                                      br_if 0 (;@17;)
                                    end
                                    local.get 0
                                    i64.extend_i32_u
                                    local.set 34
                                  end
                                  block  ;; label = @16
                                    local.get 7
                                    i32.const 9
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 34
                                    i64.const 10
                                    i64.mul
                                    local.set 33
                                    local.get 7
                                    i64.extend_i32_u
                                    local.set 32
                                    loop  ;; label = @17
                                      block (result i32)  ;; label = @18
                                        i32.const 2116
                                        i32.load
                                        local.tee 0
                                        i32.const 2216
                                        i32.load
                                        i32.ne
                                        if  ;; label = @19
                                          i32.const 2116
                                          local.get 0
                                          i32.const 1
                                          i32.add
                                          i32.store
                                          local.get 0
                                          i32.load8_u
                                          br 1 (;@18;)
                                        end
                                        call $__shgetc
                                      end
                                      local.tee 3
                                      i32.const 48
                                      i32.sub
                                      local.tee 7
                                      i32.const 9
                                      i32.gt_u
                                      local.get 32
                                      local.get 33
                                      i64.add
                                      local.tee 34
                                      i64.const 1844674407370955162
                                      i64.ge_u
                                      i32.or
                                      br_if 1 (;@16;)
                                      local.get 34
                                      i64.const 10
                                      i64.mul
                                      local.tee 33
                                      local.get 7
                                      i64.extend_i32_u
                                      local.tee 32
                                      i64.const -1
                                      i64.xor
                                      i64.le_u
                                      br_if 0 (;@17;)
                                    end
                                    i32.const 10
                                    local.set 0
                                    br 2 (;@14;)
                                  end
                                  i32.const 10
                                  local.set 0
                                  local.get 7
                                  i32.const 9
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  br 2 (;@13;)
                                end
                                local.get 0
                                local.get 0
                                i32.const 1
                                i32.sub
                                i32.and
                                if  ;; label = @15
                                  local.get 3
                                  i32.const 1153
                                  i32.add
                                  i32.load8_u
                                  local.tee 18
                                  local.get 0
                                  i32.lt_u
                                  if  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 0
                                      local.get 7
                                      i32.mul
                                      local.set 5
                                      block (result i32)  ;; label = @18
                                        i32.const 2116
                                        i32.load
                                        local.tee 3
                                        i32.const 2216
                                        i32.load
                                        i32.ne
                                        if  ;; label = @19
                                          i32.const 2116
                                          local.get 3
                                          i32.const 1
                                          i32.add
                                          i32.store
                                          local.get 3
                                          i32.load8_u
                                          br 1 (;@18;)
                                        end
                                        call $__shgetc
                                      end
                                      local.set 3
                                      local.get 5
                                      local.get 18
                                      i32.add
                                      local.tee 7
                                      i32.const 119304647
                                      i32.lt_u
                                      local.get 3
                                      i32.const 1153
                                      i32.add
                                      i32.load8_u
                                      local.tee 18
                                      local.get 0
                                      i32.lt_u
                                      i32.and
                                      br_if 0 (;@17;)
                                    end
                                    local.get 7
                                    i64.extend_i32_u
                                    local.set 34
                                  end
                                  local.get 0
                                  local.get 18
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  local.get 0
                                  i64.extend_i32_u
                                  local.set 35
                                  loop  ;; label = @16
                                    local.get 34
                                    local.get 35
                                    i64.mul
                                    local.tee 33
                                    local.get 18
                                    i64.extend_i32_u
                                    i64.const 255
                                    i64.and
                                    local.tee 32
                                    i64.const -1
                                    i64.xor
                                    i64.gt_u
                                    br_if 2 (;@14;)
                                    block (result i32)  ;; label = @17
                                      i32.const 2116
                                      i32.load
                                      local.tee 3
                                      i32.const 2216
                                      i32.load
                                      i32.ne
                                      if  ;; label = @18
                                        i32.const 2116
                                        local.get 3
                                        i32.const 1
                                        i32.add
                                        i32.store
                                        local.get 3
                                        i32.load8_u
                                        br 1 (;@17;)
                                      end
                                      call $__shgetc
                                    end
                                    local.set 3
                                    local.get 32
                                    local.get 33
                                    i64.add
                                    local.set 34
                                    local.get 0
                                    local.get 3
                                    i32.const 1153
                                    i32.add
                                    i32.load8_u
                                    local.tee 18
                                    i32.le_u
                                    br_if 2 (;@14;)
                                    local.get 11
                                    local.get 35
                                    i64.const 0
                                    local.get 34
                                    i64.const 0
                                    call $__multi3
                                    local.get 11
                                    i64.load offset=8
                                    i64.eqz
                                    br_if 0 (;@16;)
                                  end
                                  br 1 (;@14;)
                                end
                                local.get 0
                                i32.const 23
                                i32.mul
                                i32.const 5
                                i32.shr_u
                                i32.const 7
                                i32.and
                                i32.const 1409
                                i32.add
                                i32.load8_s
                                local.set 17
                                local.get 3
                                i32.const 1153
                                i32.add
                                i32.load8_u
                                local.tee 7
                                local.get 0
                                i32.lt_u
                                if  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 18
                                    local.get 17
                                    i32.shl
                                    local.set 5
                                    block (result i32)  ;; label = @17
                                      i32.const 2116
                                      i32.load
                                      local.tee 3
                                      i32.const 2216
                                      i32.load
                                      i32.ne
                                      if  ;; label = @18
                                        i32.const 2116
                                        local.get 3
                                        i32.const 1
                                        i32.add
                                        i32.store
                                        local.get 3
                                        i32.load8_u
                                        br 1 (;@17;)
                                      end
                                      call $__shgetc
                                    end
                                    local.set 3
                                    local.get 5
                                    local.get 7
                                    i32.or
                                    local.tee 18
                                    i32.const 134217728
                                    i32.lt_u
                                    local.get 3
                                    i32.const 1153
                                    i32.add
                                    i32.load8_u
                                    local.tee 7
                                    local.get 0
                                    i32.lt_u
                                    i32.and
                                    br_if 0 (;@16;)
                                  end
                                  local.get 18
                                  i64.extend_i32_u
                                  local.set 34
                                end
                                local.get 0
                                local.get 7
                                i32.le_u
                                br_if 0 (;@14;)
                                i64.const -1
                                local.get 17
                                i64.extend_i32_u
                                local.tee 37
                                i64.shr_u
                                local.tee 35
                                local.get 34
                                i64.lt_u
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  local.get 34
                                  local.get 37
                                  i64.shl
                                  local.set 33
                                  local.get 7
                                  i64.extend_i32_u
                                  i64.const 255
                                  i64.and
                                  local.set 32
                                  block (result i32)  ;; label = @16
                                    i32.const 2116
                                    i32.load
                                    local.tee 3
                                    i32.const 2216
                                    i32.load
                                    i32.ne
                                    if  ;; label = @17
                                      i32.const 2116
                                      local.get 3
                                      i32.const 1
                                      i32.add
                                      i32.store
                                      local.get 3
                                      i32.load8_u
                                      br 1 (;@16;)
                                    end
                                    call $__shgetc
                                  end
                                  local.set 3
                                  local.get 32
                                  local.get 33
                                  i64.or
                                  local.set 34
                                  local.get 0
                                  local.get 3
                                  i32.const 1153
                                  i32.add
                                  i32.load8_u
                                  local.tee 7
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  local.get 34
                                  local.get 35
                                  i64.le_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              local.get 3
                              i32.const 1153
                              i32.add
                              i32.load8_u
                              i32.le_u
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                local.get 0
                                block (result i32)  ;; label = @15
                                  i32.const 2116
                                  i32.load
                                  local.tee 2
                                  i32.const 2216
                                  i32.load
                                  i32.ne
                                  if  ;; label = @16
                                    i32.const 2116
                                    local.get 2
                                    i32.const 1
                                    i32.add
                                    i32.store
                                    local.get 2
                                    i32.load8_u
                                    br 1 (;@15;)
                                  end
                                  call $__shgetc
                                end
                                i32.const 1153
                                i32.add
                                i32.load8_u
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                              i32.const 3460
                              i32.const 68
                              i32.store
                              i32.const 0
                              local.set 2
                              i64.const -1
                              local.set 34
                            end
                            i32.const 2224
                            i64.load
                            i64.const 0
                            i64.ge_s
                            if  ;; label = @13
                              i32.const 2116
                              i32.const 2116
                              i32.load
                              i32.const 1
                              i32.sub
                              i32.store
                            end
                            i32.const 0
                            local.get 34
                            i64.const -1
                            i64.eq
                            local.get 2
                            i32.const 1
                            i32.or
                            select
                            if  ;; label = @13
                              i32.const 3460
                              i32.const 68
                              i32.store
                              i64.const -2
                              local.set 34
                              br 1 (;@12;)
                            end
                            local.get 34
                            local.get 2
                            i64.extend_i32_s
                            local.tee 32
                            i64.xor
                            local.get 32
                            i64.sub
                            local.set 34
                          end
                          local.get 11
                          i32.const 16
                          i32.add
                          global.set $__stack_pointer
                          i32.const 2232
                          i64.load
                          i64.const 0
                          i32.const 2116
                          i32.load
                          i32.const 2156
                          i32.load
                          i32.sub
                          i64.extend_i32_s
                          i64.sub
                          i64.eq
                          br_if 8 (;@3;)
                          local.get 8
                          i32.eqz
                          local.get 23
                          i32.const 112
                          i32.ne
                          i32.or
                          i32.eqz
                          if  ;; label = @12
                            local.get 8
                            local.get 34
                            i64.store32
                            br 3 (;@9;)
                          end
                          local.get 8
                          local.get 27
                          local.get 34
                          call $store_int
                          br 2 (;@9;)
                        end
                        local.get 8
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 9
                        i64.load offset=16
                        local.set 37
                        local.get 9
                        i64.load offset=8
                        local.set 35
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 27
                              br_table 0 (;@13;) 1 (;@12;) 2 (;@11;) 4 (;@9;)
                            end
                            global.get $__stack_pointer
                            i32.const 32
                            i32.sub
                            local.tee 3
                            global.set $__stack_pointer
                            block  ;; label = @13
                              local.get 37
                              i64.const 9223372036854775807
                              i64.and
                              local.tee 32
                              i64.const 4575938696385134592
                              i64.sub
                              local.get 32
                              i64.const 4647433340469641216
                              i64.sub
                              i64.lt_u
                              if  ;; label = @14
                                local.get 37
                                i64.const 25
                                i64.shr_u
                                i32.wrap_i64
                                local.set 2
                                local.get 35
                                i64.eqz
                                local.get 37
                                i64.const 33554431
                                i64.and
                                local.tee 32
                                i64.const 16777216
                                i64.lt_u
                                local.get 32
                                i64.const 16777216
                                i64.eq
                                select
                                i32.eqz
                                if  ;; label = @15
                                  local.get 2
                                  i32.const 1073741825
                                  i32.add
                                  local.set 0
                                  br 2 (;@13;)
                                end
                                local.get 2
                                i32.const 1073741824
                                i32.add
                                local.set 0
                                local.get 35
                                local.get 32
                                i64.const 16777216
                                i64.xor
                                i64.or
                                i64.const 0
                                i64.ne
                                br_if 1 (;@13;)
                                local.get 0
                                local.get 2
                                i32.const 1
                                i32.and
                                i32.add
                                local.set 0
                                br 1 (;@13;)
                              end
                              local.get 35
                              i64.eqz
                              local.get 32
                              i64.const 9223090561878065152
                              i64.lt_u
                              local.get 32
                              i64.const 9223090561878065152
                              i64.eq
                              select
                              i32.eqz
                              if  ;; label = @14
                                local.get 37
                                i64.const 25
                                i64.shr_u
                                i32.wrap_i64
                                i32.const 4194303
                                i32.and
                                i32.const 2143289344
                                i32.or
                                local.set 0
                                br 1 (;@13;)
                              end
                              i32.const 2139095040
                              local.set 0
                              local.get 32
                              i64.const 4647433340469641215
                              i64.gt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 0
                              local.get 32
                              i64.const 48
                              i64.shr_u
                              i32.wrap_i64
                              local.tee 2
                              i32.const 16145
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 16
                              i32.add
                              local.get 35
                              local.get 37
                              i64.const 281474976710655
                              i64.and
                              i64.const 281474976710656
                              i64.or
                              local.tee 32
                              local.get 2
                              i32.const 16129
                              i32.sub
                              call $__ashlti3
                              local.get 3
                              local.get 35
                              local.get 32
                              i32.const 16257
                              local.get 2
                              i32.sub
                              call $__lshrti3
                              local.get 3
                              i64.load offset=8
                              local.tee 33
                              i64.const 25
                              i64.shr_u
                              i32.wrap_i64
                              local.set 0
                              local.get 3
                              i64.load
                              local.get 3
                              i64.load offset=16
                              local.get 3
                              i64.load offset=24
                              i64.or
                              i64.const 0
                              i64.ne
                              i64.extend_i32_u
                              i64.or
                              local.tee 32
                              i64.eqz
                              local.get 33
                              i64.const 33554431
                              i64.and
                              local.tee 33
                              i64.const 16777216
                              i64.lt_u
                              local.get 33
                              i64.const 16777216
                              i64.eq
                              select
                              i32.eqz
                              if  ;; label = @14
                                local.get 0
                                i32.const 1
                                i32.add
                                local.set 0
                                br 1 (;@13;)
                              end
                              local.get 32
                              local.get 33
                              i64.const 16777216
                              i64.xor
                              i64.or
                              i64.const 0
                              i64.ne
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 1
                              i32.and
                              local.get 0
                              i32.add
                              local.set 0
                            end
                            local.get 3
                            i32.const 32
                            i32.add
                            global.set $__stack_pointer
                            local.get 8
                            local.get 0
                            local.get 37
                            i64.const 32
                            i64.shr_u
                            i32.wrap_i64
                            i32.const -2147483648
                            i32.and
                            i32.or
                            i32.store
                            br 3 (;@9;)
                          end
                          global.get $__stack_pointer
                          i32.const 32
                          i32.sub
                          local.tee 2
                          global.set $__stack_pointer
                          block  ;; label = @12
                            local.get 37
                            i64.const 9223372036854775807
                            i64.and
                            local.tee 32
                            i64.const 4323737117252386816
                            i64.sub
                            local.get 32
                            i64.const 4899634919602388992
                            i64.sub
                            i64.lt_u
                            if  ;; label = @13
                              local.get 37
                              i64.const 4
                              i64.shl
                              local.get 35
                              i64.const 60
                              i64.shr_u
                              i64.or
                              local.set 33
                              local.get 35
                              i64.const 1152921504606846975
                              i64.and
                              local.tee 32
                              i64.const 576460752303423489
                              i64.ge_u
                              if  ;; label = @14
                                local.get 33
                                i64.const 4611686018427387905
                                i64.add
                                local.set 34
                                br 2 (;@12;)
                              end
                              local.get 33
                              i64.const -4611686018427387904
                              i64.sub
                              local.set 34
                              local.get 32
                              i64.const 576460752303423488
                              i64.xor
                              i64.const 0
                              i64.ne
                              br_if 1 (;@12;)
                              local.get 34
                              local.get 33
                              i64.const 1
                              i64.and
                              i64.add
                              local.set 34
                              br 1 (;@12;)
                            end
                            local.get 35
                            i64.eqz
                            local.get 32
                            i64.const 9223090561878065152
                            i64.lt_u
                            local.get 32
                            i64.const 9223090561878065152
                            i64.eq
                            select
                            i32.eqz
                            if  ;; label = @13
                              local.get 37
                              i64.const 4
                              i64.shl
                              local.get 35
                              i64.const 60
                              i64.shr_u
                              i64.or
                              i64.const 2251799813685247
                              i64.and
                              i64.const 9221120237041090560
                              i64.or
                              local.set 34
                              br 1 (;@12;)
                            end
                            i64.const 9218868437227405312
                            local.set 34
                            local.get 32
                            i64.const 4899634919602388991
                            i64.gt_u
                            br_if 0 (;@12;)
                            i64.const 0
                            local.set 34
                            local.get 32
                            i64.const 48
                            i64.shr_u
                            i32.wrap_i64
                            local.tee 0
                            i32.const 15249
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 2
                            i32.const 16
                            i32.add
                            local.get 35
                            local.get 37
                            i64.const 281474976710655
                            i64.and
                            i64.const 281474976710656
                            i64.or
                            local.tee 32
                            local.get 0
                            i32.const 15233
                            i32.sub
                            call $__ashlti3
                            local.get 2
                            local.get 35
                            local.get 32
                            i32.const 15361
                            local.get 0
                            i32.sub
                            call $__lshrti3
                            local.get 2
                            i64.load offset=8
                            i64.const 4
                            i64.shl
                            local.get 2
                            i64.load
                            local.tee 32
                            i64.const 60
                            i64.shr_u
                            i64.or
                            local.set 34
                            local.get 2
                            i64.load offset=16
                            local.get 2
                            i64.load offset=24
                            i64.or
                            i64.const 0
                            i64.ne
                            i64.extend_i32_u
                            local.get 32
                            i64.const 1152921504606846975
                            i64.and
                            i64.or
                            local.tee 32
                            i64.const 576460752303423489
                            i64.ge_u
                            if  ;; label = @13
                              local.get 34
                              i64.const 1
                              i64.add
                              local.set 34
                              br 1 (;@12;)
                            end
                            local.get 32
                            i64.const 576460752303423488
                            i64.xor
                            i64.const 0
                            i64.ne
                            br_if 0 (;@12;)
                            local.get 34
                            i64.const 1
                            i64.and
                            local.get 34
                            i64.add
                            local.set 34
                          end
                          local.get 2
                          i32.const 32
                          i32.add
                          global.set $__stack_pointer
                          local.get 8
                          local.get 34
                          local.get 37
                          i64.const -9223372036854775808
                          i64.and
                          i64.or
                          i64.store
                          br 2 (;@9;)
                        end
                        local.get 8
                        local.get 35
                        i64.store
                        local.get 8
                        local.get 37
                        i64.store offset=8
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 1
                      i32.add
                      i32.const 31
                      local.get 23
                      i32.const 99
                      i32.eq
                      local.tee 11
                      select
                      local.set 15
                      block  ;; label = @10
                        local.get 27
                        i32.const 1
                        i32.ne
                        local.tee 17
                        i32.eqz
                        if  ;; label = @11
                          local.get 8
                          local.set 0
                          local.get 22
                          if  ;; label = @12
                            local.get 15
                            i32.const 2
                            i32.shl
                            call $dlmalloc
                            local.tee 0
                            i32.eqz
                            br_if 8 (;@4;)
                          end
                          local.get 9
                          i64.const 0
                          i64.store offset=296
                          i32.const 0
                          local.set 3
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 0
                              local.set 20
                              loop  ;; label = @14
                                block (result i32)  ;; label = @15
                                  i32.const 2116
                                  i32.load
                                  local.tee 0
                                  i32.const 2216
                                  i32.load
                                  i32.ne
                                  if  ;; label = @16
                                    i32.const 2116
                                    local.get 0
                                    i32.const 1
                                    i32.add
                                    i32.store
                                    local.get 0
                                    i32.load8_u
                                    br 1 (;@15;)
                                  end
                                  call $__shgetc
                                end
                                local.tee 0
                                local.get 9
                                i32.add
                                i32.load8_u offset=33
                                i32.eqz
                                br_if 2 (;@12;)
                                local.get 9
                                local.get 0
                                i32.store8 offset=27
                                local.get 9
                                i32.const 28
                                i32.add
                                local.set 2
                                i32.const 0
                                local.set 7
                                global.get $__stack_pointer
                                i32.const 16
                                i32.sub
                                local.tee 13
                                global.set $__stack_pointer
                                local.get 9
                                i32.const 296
                                i32.add
                                local.tee 0
                                i32.const 3632
                                local.get 0
                                select
                                local.tee 4
                                i32.load
                                local.set 0
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 9
                                      i32.const 27
                                      i32.add
                                      local.tee 14
                                      i32.eqz
                                      if  ;; label = @18
                                        local.get 0
                                        br_if 1 (;@17;)
                                        br 3 (;@15;)
                                      end
                                      i32.const -2
                                      local.set 7
                                      local.get 2
                                      local.get 13
                                      i32.const 12
                                      i32.add
                                      local.get 2
                                      select
                                      local.set 12
                                      block  ;; label = @18
                                        local.get 0
                                        if  ;; label = @19
                                          i32.const 1
                                          local.set 18
                                          br 1 (;@18;)
                                        end
                                        local.get 14
                                        i32.load8_u
                                        local.tee 2
                                        i32.const 24
                                        i32.shl
                                        i32.const 24
                                        i32.shr_s
                                        local.tee 0
                                        i32.const 0
                                        i32.ge_s
                                        if  ;; label = @19
                                          local.get 12
                                          local.get 2
                                          i32.store
                                          local.get 0
                                          i32.const 0
                                          i32.ne
                                          local.set 7
                                          br 4 (;@15;)
                                        end
                                        local.get 14
                                        i32.load8_s
                                        local.set 0
                                        i32.const 3608
                                        i32.load
                                        i32.load
                                        i32.eqz
                                        if  ;; label = @19
                                          local.get 12
                                          local.get 0
                                          i32.const 57343
                                          i32.and
                                          i32.store
                                          i32.const 1
                                          local.set 7
                                          br 4 (;@15;)
                                        end
                                        local.get 0
                                        i32.const 255
                                        i32.and
                                        i32.const 194
                                        i32.sub
                                        local.tee 0
                                        i32.const 50
                                        i32.gt_u
                                        br_if 1 (;@17;)
                                        local.get 0
                                        i32.const 2
                                        i32.shl
                                        i32.const 1424
                                        i32.add
                                        i32.load
                                        local.set 0
                                        i32.const 0
                                        local.tee 18
                                        i32.eqz
                                        br_if 2 (;@16;)
                                        local.get 14
                                        i32.const 1
                                        i32.add
                                        local.set 14
                                      end
                                      local.get 14
                                      i32.load8_u
                                      local.tee 2
                                      i32.const 3
                                      i32.shr_u
                                      local.tee 5
                                      i32.const 16
                                      i32.sub
                                      local.get 0
                                      i32.const 26
                                      i32.shr_s
                                      local.get 5
                                      i32.add
                                      i32.or
                                      i32.const 7
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      loop  ;; label = @18
                                        local.get 18
                                        i32.const 1
                                        i32.sub
                                        local.set 18
                                        local.get 2
                                        i32.const 128
                                        i32.sub
                                        local.get 0
                                        i32.const 6
                                        i32.shl
                                        i32.or
                                        local.tee 0
                                        i32.const 0
                                        i32.ge_s
                                        if  ;; label = @19
                                          local.get 4
                                          i32.const 0
                                          i32.store
                                          local.get 12
                                          local.get 0
                                          i32.store
                                          i32.const 1
                                          local.get 18
                                          i32.sub
                                          local.set 7
                                          br 4 (;@15;)
                                        end
                                        local.get 18
                                        i32.eqz
                                        br_if 2 (;@16;)
                                        local.get 14
                                        i32.const 1
                                        i32.add
                                        local.tee 14
                                        i32.load8_u
                                        local.tee 2
                                        i32.const 192
                                        i32.and
                                        i32.const 128
                                        i32.eq
                                        br_if 0 (;@18;)
                                      end
                                    end
                                    local.get 4
                                    i32.const 0
                                    i32.store
                                    i32.const 3460
                                    i32.const 25
                                    i32.store
                                    i32.const -1
                                    local.set 7
                                    br 1 (;@15;)
                                  end
                                  local.get 4
                                  local.get 0
                                  i32.store
                                end
                                local.get 13
                                i32.const 16
                                i32.add
                                global.set $__stack_pointer
                                local.get 7
                                i32.const -2
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const -1
                                i32.eq
                                br_if 7 (;@7;)
                                local.get 20
                                if  ;; label = @15
                                  local.get 20
                                  local.get 3
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 9
                                  i32.load offset=28
                                  i32.store
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.set 3
                                end
                                local.get 22
                                local.get 3
                                local.get 15
                                i32.eq
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                              end
                              local.get 20
                              local.get 15
                              i32.const 1
                              i32.shl
                              i32.const 1
                              i32.or
                              local.tee 15
                              i32.const 2
                              i32.shl
                              call $dlrealloc
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                            i32.const 1
                            local.set 2
                            i32.const 0
                            local.set 14
                            br 10 (;@2;)
                          end
                          local.get 9
                          i32.const 296
                          i32.add
                          if (result i32)  ;; label = @12
                            local.get 9
                            i32.load offset=296
                          else
                            i32.const 0
                          end
                          br_if 4 (;@7;)
                          i32.const 0
                          local.set 14
                          br 1 (;@10;)
                        end
                        local.get 22
                        if  ;; label = @11
                          i32.const 0
                          local.set 3
                          local.get 15
                          call $dlmalloc
                          local.tee 0
                          i32.eqz
                          br_if 7 (;@4;)
                          loop  ;; label = @12
                            local.get 0
                            local.set 14
                            loop  ;; label = @13
                              block (result i32)  ;; label = @14
                                i32.const 2116
                                i32.load
                                local.tee 0
                                i32.const 2216
                                i32.load
                                i32.ne
                                if  ;; label = @15
                                  i32.const 2116
                                  local.get 0
                                  i32.const 1
                                  i32.add
                                  i32.store
                                  local.get 0
                                  i32.load8_u
                                  br 1 (;@14;)
                                end
                                call $__shgetc
                              end
                              local.tee 0
                              local.get 9
                              i32.add
                              i32.load8_u offset=33
                              i32.eqz
                              if  ;; label = @14
                                i32.const 0
                                local.set 20
                                br 4 (;@10;)
                              end
                              local.get 3
                              local.get 14
                              i32.add
                              local.get 0
                              i32.store8
                              local.get 3
                              i32.const 1
                              i32.add
                              local.tee 3
                              local.get 15
                              i32.ne
                              br_if 0 (;@13;)
                            end
                            i32.const 1
                            local.set 2
                            i32.const 0
                            local.set 20
                            local.get 14
                            local.get 15
                            i32.const 1
                            i32.shl
                            i32.const 1
                            i32.or
                            local.tee 15
                            call $dlrealloc
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          br 9 (;@2;)
                        end
                        i32.const 0
                        local.set 3
                        local.get 8
                        if  ;; label = @11
                          loop  ;; label = @12
                            block (result i32)  ;; label = @13
                              i32.const 2116
                              i32.load
                              local.tee 0
                              i32.const 2216
                              i32.load
                              i32.ne
                              if  ;; label = @14
                                i32.const 2116
                                local.get 0
                                i32.const 1
                                i32.add
                                i32.store
                                local.get 0
                                i32.load8_u
                                br 1 (;@13;)
                              end
                              call $__shgetc
                            end
                            local.tee 0
                            local.get 9
                            i32.add
                            i32.load8_u offset=33
                            if  ;; label = @13
                              local.get 3
                              local.get 8
                              i32.add
                              local.get 0
                              i32.store8
                              local.get 3
                              i32.const 1
                              i32.add
                              local.set 3
                              br 1 (;@12;)
                            else
                              i32.const 0
                              local.set 20
                              local.get 8
                              local.set 14
                              br 3 (;@10;)
                            end
                            unreachable
                          end
                          unreachable
                        end
                        loop  ;; label = @11
                          block (result i32)  ;; label = @12
                            i32.const 2116
                            i32.load
                            local.tee 0
                            i32.const 2216
                            i32.load
                            i32.ne
                            if  ;; label = @13
                              i32.const 2116
                              local.get 0
                              i32.const 1
                              i32.add
                              i32.store
                              local.get 0
                              i32.load8_u
                              br 1 (;@12;)
                            end
                            call $__shgetc
                          end
                          local.get 9
                          i32.add
                          i32.load8_u offset=33
                          br_if 0 (;@11;)
                        end
                        i32.const 0
                        local.set 14
                        i32.const 0
                        local.set 20
                      end
                      i32.const 2116
                      i32.load
                      local.set 0
                      i32.const 2224
                      i64.load
                      i64.const 0
                      i64.ge_s
                      if  ;; label = @10
                        i32.const 2116
                        local.get 0
                        i32.const 1
                        i32.sub
                        local.tee 0
                        i32.store
                      end
                      i32.const 2232
                      i64.load
                      local.get 0
                      i32.const 2156
                      i32.load
                      i32.sub
                      i64.extend_i32_s
                      i64.add
                      local.tee 32
                      i64.eqz
                      local.get 23
                      i32.const 99
                      i32.eq
                      local.get 32
                      local.get 33
                      i64.ne
                      i32.and
                      i32.or
                      br_if 6 (;@3;)
                      block  ;; label = @10
                        local.get 22
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 17
                        i32.eqz
                        if  ;; label = @11
                          local.get 8
                          local.get 20
                          i32.store
                          br 1 (;@10;)
                        end
                        local.get 8
                        local.get 14
                        i32.store
                      end
                      local.get 11
                      br_if 0 (;@9;)
                      local.get 20
                      if  ;; label = @10
                        local.get 20
                        local.get 3
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.const 0
                        i32.store
                      end
                      local.get 14
                      i32.eqz
                      if  ;; label = @10
                        i32.const 0
                        local.set 14
                        br 1 (;@9;)
                      end
                      local.get 3
                      local.get 14
                      i32.add
                      i32.const 0
                      i32.store8
                    end
                    i32.const 2116
                    i32.load
                    i32.const 2156
                    i32.load
                    i32.sub
                    i64.extend_i32_s
                    i32.const 2232
                    i64.load
                    local.get 39
                    i64.add
                    i64.add
                    local.set 39
                    local.get 29
                    local.get 8
                    i32.const 0
                    i32.ne
                    i32.add
                    local.set 29
                  end
                  local.get 6
                  i32.const 1
                  i32.add
                  local.set 3
                  local.get 6
                  i32.load8_u offset=1
                  local.tee 6
                  br_if 1 (;@6;)
                  br 6 (;@1;)
                end
              end
              i32.const 0
              local.set 14
            end
            local.get 22
            local.set 2
            br 2 (;@2;)
          end
          i32.const 1
          local.set 2
          i32.const 0
          local.set 14
          i32.const 0
          local.set 20
          br 1 (;@2;)
        end
        local.get 22
        local.set 2
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 14
      call $dlfree
      local.get 20
      call $dlfree
    end
    local.get 9
    i32.const 304
    i32.add
    global.set $__stack_pointer
    local.get 30
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 25
    local.get 31
    i32.store
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 22
    global.set $__stack_pointer
    local.get 22
    local.get 25
    i32.store offset=12
    i32.const 0
    local.set 0
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 8
    global.set $__stack_pointer
    local.get 8
    local.get 25
    i32.store offset=204
    local.get 8
    i32.const 160
    i32.add
    local.tee 2
    i32.const 0
    i32.const 40
    call $memset
    local.get 8
    local.get 8
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      i32.const 0
      local.get 8
      i32.const 200
      i32.add
      local.get 8
      i32.const 80
      i32.add
      local.get 2
      call $printf_core
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 2340
      i32.load
      i32.const 0
      i32.ge_s
      local.set 2
      i32.const 2264
      i32.load
      local.set 6
      i32.const 2336
      i32.load
      i32.const 0
      i32.le_s
      if  ;; label = @2
        i32.const 2264
        local.get 6
        i32.const -33
        i32.and
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 2312
            i32.load
            i32.eqz
            if  ;; label = @5
              i32.const 2312
              i32.const 80
              i32.store
              i32.const 2292
              i32.const 0
              i32.store
              i32.const 2280
              i64.const 0
              i64.store
              i32.const 2308
              i32.load
              local.set 0
              i32.const 2308
              local.get 8
              i32.store
              br 1 (;@4;)
            end
            i32.const 2280
            i32.load
            br_if 1 (;@3;)
          end
          i32.const -1
          local.set 3
          i32.const 2264
          call $__towrite
          br_if 1 (;@2;)
        end
        i32.const 2264
        local.get 8
        i32.const 200
        i32.add
        local.get 8
        i32.const 80
        i32.add
        local.get 8
        i32.const 160
        i32.add
        call $printf_core
        local.set 3
      end
      local.get 0
      if (result i32)  ;; label = @2
        i32.const 2264
        i32.const 0
        i32.const 0
        i32.const 2300
        i32.load
        call_indirect (type 1)
        drop
        i32.const 2312
        i32.const 0
        i32.store
        i32.const 2308
        local.get 0
        i32.store
        i32.const 2292
        i32.const 0
        i32.store
        i32.const 2280
        i32.const 0
        i32.store
        i32.const 2284
        i32.load
        drop
        i32.const 2284
        i32.const 0
        i32.store
        i32.const 0
      else
        local.get 3
      end
      drop
      i32.const 2264
      i32.const 2264
      i32.load
      local.get 6
      i32.const 32
      i32.and
      i32.or
      i32.store
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 8
    i32.const 208
    i32.add
    global.set $__stack_pointer
    local.get 22
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 25
    i32.const 144
    i32.add
    global.set $__stack_pointer
    i32.const 3452
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
    i32.const 2256
    i32.load
    call $close_file
    i32.const 2408
    i32.load
    call $close_file
    i32.const 3456
    i32.load
    call $close_file
    i32.const 0
    call $__wasi_proc_exit
    unreachable)
  (func $__stdio_close (type 0) (param i32) (result i32)
    local.get 0
    i32.load offset=60
    call $__wasi_fd_close)
  (func $__stdio_read (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 2
    local.get 0
    i32.load offset=48
    local.tee 4
    i32.const 0
    i32.ne
    i32.sub
    i32.store offset=20
    local.get 0
    i32.load offset=44
    local.set 6
    local.get 3
    local.get 4
    i32.store offset=28
    local.get 3
    local.get 6
    i32.store offset=24
    i32.const 32
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.load offset=60
        local.get 3
        i32.const 16
        i32.add
        i32.const 2
        local.get 3
        i32.const 12
        i32.add
        call $__wasi_fd_read
        call $__wasi_syscall_ret
        if (result i32)  ;; label = @3
          i32.const 32
        else
          local.get 3
          i32.load offset=12
          local.tee 4
          i32.const 0
          i32.gt_s
          br_if 1 (;@2;)
          i32.const 32
          i32.const 16
          local.get 4
          select
        end
        local.get 0
        i32.load
        i32.or
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=20
      local.tee 6
      local.get 4
      i32.ge_u
      if  ;; label = @2
        local.get 4
        local.set 5
        br 1 (;@1;)
      end
      local.get 0
      local.get 0
      i32.load offset=44
      local.tee 5
      i32.store offset=4
      local.get 0
      local.get 5
      local.get 4
      local.get 6
      i32.sub
      i32.add
      i32.store offset=8
      local.get 0
      i32.load offset=48
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 1
        i32.add
        i32.store offset=4
        local.get 1
        local.get 2
        i32.add
        i32.const 1
        i32.sub
        local.get 5
        i32.load8_u
        i32.store8
      end
      local.get 2
      local.set 5
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $__stdio_seek (type 8) (param i32 i64 i32) (result i64)
    (local i32)
    local.get 0
    i32.load offset=60
    local.set 3
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 3
    local.get 1
    local.get 2
    i32.const 255
    i32.and
    local.get 0
    i32.const 8
    i32.add
    call $__wasi_fd_seek
    call $__wasi_syscall_ret
    local.set 2
    local.get 0
    i64.load offset=8
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i64.const -1
    local.get 1
    local.get 2
    select)
  (func $close_file (type 3) (param i32)
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
      call_indirect (type 8)
      drop
    end)
  (func $__toread (type 4) (result i32)
    (local i32 i32)
    i32.const 2184
    i32.const 2184
    i32.load
    local.tee 0
    i32.const 1
    i32.sub
    local.get 0
    i32.or
    i32.store
    i32.const 2132
    i32.load
    i32.const 2140
    i32.load
    i32.ne
    if  ;; label = @1
      i32.const 2112
      i32.const 0
      i32.const 0
      i32.const 2148
      i32.load
      call_indirect (type 1)
      drop
    end
    i32.const 2140
    i32.const 0
    i32.store
    i32.const 2128
    i64.const 0
    i64.store
    i32.const 2112
    i32.load
    local.tee 0
    i32.const 4
    i32.and
    if  ;; label = @1
      i32.const 2112
      local.get 0
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    i32.const 2120
    i32.const 2156
    i32.load
    i32.const 2160
    i32.load
    i32.add
    local.tee 1
    i32.store
    i32.const 2116
    local.get 1
    i32.store
    local.get 0
    i32.const 27
    i32.shl
    i32.const 31
    i32.shr_s)
  (func $isspace (type 0) (param i32) (result i32)
    local.get 0
    i32.const 32
    i32.eq
    local.get 0
    i32.const 9
    i32.sub
    i32.const 5
    i32.lt_u
    i32.or)
  (func $__shlim (type 13) (param i64)
    (local i32 i32)
    i32.const 2224
    local.get 0
    i64.store
    i32.const 2232
    i32.const 2156
    i32.load
    i32.const 2116
    i32.load
    local.tee 1
    i32.sub
    i64.extend_i32_s
    i64.store
    i32.const 2216
    local.get 0
    i64.eqz
    i32.const 2120
    i32.load
    local.tee 2
    local.get 1
    i32.sub
    i64.extend_i32_s
    local.get 0
    i64.le_s
    i32.or
    if (result i32)  ;; label = @1
      local.get 2
    else
      local.get 1
      local.get 0
      i32.wrap_i64
      i32.add
    end
    i32.store)
  (func $__shgetc (type 4) (result i32)
    (local i32 i32 i32 i64 i64)
    block  ;; label = @1
      i32.const 2224
      i64.load
      local.tee 3
      i64.eqz
      i32.eqz
      local.get 3
      i32.const 2232
      i64.load
      i32.const 2116
      i32.load
      local.tee 1
      i32.const 2156
      i32.load
      local.tee 0
      i32.sub
      i64.extend_i32_s
      i64.add
      local.tee 4
      i64.le_s
      i32.and
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 0
        global.set $__stack_pointer
        i32.const -1
        local.set 1
        block  ;; label = @3
          call $__toread
          br_if 0 (;@3;)
          i32.const 2112
          local.get 0
          i32.const 15
          i32.add
          i32.const 1
          i32.const 2144
          i32.load
          call_indirect (type 1)
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u offset=15
          local.set 1
        end
        local.get 0
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 1
        local.tee 2
        i32.const 0
        i32.ge_s
        br_if 1 (;@1;)
        i32.const 2116
        i32.load
        local.set 1
        i32.const 2156
        i32.load
        local.set 0
      end
      i32.const 2224
      i64.const -1
      i64.store
      i32.const 2216
      local.get 1
      i32.store
      i32.const 2232
      local.get 4
      local.get 0
      local.get 1
      i32.sub
      i64.extend_i32_s
      i64.add
      i64.store
      i32.const -1
      return
    end
    local.get 4
    i64.const 1
    i64.add
    local.set 4
    i32.const 2116
    i32.load
    local.set 1
    i32.const 2120
    i32.load
    local.set 0
    block  ;; label = @1
      i32.const 2224
      i64.load
      local.tee 3
      i64.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      i64.sub
      local.tee 3
      local.get 0
      local.get 1
      i32.sub
      i64.extend_i32_s
      i64.ge_s
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.wrap_i64
      i32.add
      local.set 0
    end
    i32.const 2216
    local.get 0
    i32.store
    i32.const 2232
    local.get 4
    i32.const 2156
    i32.load
    local.tee 0
    local.get 1
    i32.sub
    i64.extend_i32_s
    i64.add
    i64.store
    local.get 0
    local.get 1
    i32.ge_u
    if  ;; label = @1
      local.get 1
      i32.const 1
      i32.sub
      local.get 2
      i32.store8
    end
    local.get 2)
  (func $isdigit (type 0) (param i32) (result i32)
    local.get 0
    i32.const 48
    i32.sub
    i32.const 10
    i32.lt_u)
  (func $__errno_location (type 4) (result i32)
    i32.const 3460)
  (func $copysignl (type 2) (param i32 i64 i64 i64 i64)
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.const 281474976710655
    i64.and
    local.get 4
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 32768
    i32.and
    local.get 2
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 32767
    i32.and
    i32.or
    i64.extend_i32_u
    i64.const 48
    i64.shl
    i64.or
    i64.store offset=8)
  (func $scalbnl (type 9) (param i32 i64 i64 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 3
      i32.const 16384
      i32.ge_s
      if  ;; label = @2
        local.get 4
        i32.const 32
        i32.add
        local.get 1
        local.get 2
        i64.const 0
        i64.const 9222809086901354496
        call $__multf3
        local.get 4
        i64.load offset=40
        local.set 2
        local.get 4
        i64.load offset=32
        local.set 1
        local.get 3
        i32.const 32767
        i32.lt_u
        if  ;; label = @3
          local.get 3
          i32.const 16383
          i32.sub
          local.set 3
          br 2 (;@1;)
        end
        local.get 4
        i32.const 16
        i32.add
        local.get 1
        local.get 2
        i64.const 0
        i64.const 9222809086901354496
        call $__multf3
        local.get 3
        i32.const 49149
        local.get 3
        i32.const 49149
        i32.lt_u
        select
        i32.const 32766
        i32.sub
        local.set 3
        local.get 4
        i64.load offset=24
        local.set 2
        local.get 4
        i64.load offset=16
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i32.const -16383
      i32.gt_s
      br_if 0 (;@1;)
      local.get 4
      i32.const -64
      i32.sub
      local.get 1
      local.get 2
      i64.const 0
      i64.const 32088147345014784
      call $__multf3
      local.get 4
      i64.load offset=72
      local.set 2
      local.get 4
      i64.load offset=64
      local.set 1
      local.get 3
      i32.const -32652
      i32.gt_u
      if  ;; label = @2
        local.get 3
        i32.const 16269
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      i32.const 48
      i32.add
      local.get 1
      local.get 2
      i64.const 0
      i64.const 32088147345014784
      call $__multf3
      local.get 3
      i32.const -48920
      local.get 3
      i32.const -48920
      i32.gt_u
      select
      i32.const 32538
      i32.add
      local.set 3
      local.get 4
      i64.load offset=56
      local.set 2
      local.get 4
      i64.load offset=48
      local.set 1
    end
    local.get 4
    local.get 1
    local.get 2
    i64.const 0
    local.get 3
    i32.const 16383
    i32.add
    i64.extend_i32_u
    i64.const 48
    i64.shl
    call $__multf3
    local.get 0
    local.get 4
    i64.load offset=8
    i64.store offset=8
    local.get 0
    local.get 4
    i64.load
    i64.store
    local.get 4
    i32.const 80
    i32.add
    global.set $__stack_pointer)
  (func $scanexp (type 14) (result i64)
    (local i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block (result i32)  ;; label = @6
                i32.const 2116
                i32.load
                local.tee 0
                i32.const 2216
                i32.load
                i32.ne
                if  ;; label = @7
                  i32.const 2116
                  local.get 0
                  i32.const 1
                  i32.add
                  i32.store
                  local.get 0
                  i32.load8_u
                  br 1 (;@6;)
                end
                call $__shgetc
              end
              local.tee 0
              i32.const 43
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 0 (;@5;) 1 (;@4;)
            end
            local.get 0
            i32.const 45
            i32.eq
            block (result i32)  ;; label = @5
              i32.const 2116
              i32.load
              local.tee 0
              i32.const 2216
              i32.load
              i32.ne
              if  ;; label = @6
                i32.const 2116
                local.get 0
                i32.const 1
                i32.add
                i32.store
                local.get 0
                i32.load8_u
                br 1 (;@5;)
              end
              call $__shgetc
            end
            local.tee 0
            i32.const 58
            i32.sub
            local.tee 1
            i32.const -11
            i32.gt_u
            i32.const 1
            i32.or
            br_if 1 (;@3;)
            drop
            i32.const 2224
            i64.load
            i64.const 0
            i64.lt_s
            br_if 2 (;@2;)
            i32.const 2116
            i32.const 2116
            i32.load
            i32.const 1
            i32.sub
            i32.store
            br 2 (;@2;)
          end
          local.get 0
          i32.const 58
          i32.sub
          local.set 1
          i32.const 0
        end
        local.set 3
        local.get 1
        i32.const -10
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 48
        i32.sub
        local.tee 1
        i32.const 10
        i32.lt_u
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 2
            i32.const 10
            i32.mul
            i32.add
            local.set 1
            block (result i32)  ;; label = @5
              i32.const 2116
              i32.load
              local.tee 0
              i32.const 2216
              i32.load
              i32.ne
              if  ;; label = @6
                i32.const 2116
                local.get 0
                i32.const 1
                i32.add
                i32.store
                local.get 0
                i32.load8_u
                br 1 (;@5;)
              end
              call $__shgetc
            end
            local.set 0
            local.get 1
            i32.const 48
            i32.sub
            local.tee 2
            i32.const 214748364
            i32.lt_s
            local.get 0
            i32.const 48
            i32.sub
            local.tee 1
            i32.const 9
            i32.le_u
            i32.and
            br_if 0 (;@4;)
          end
          local.get 2
          i64.extend_i32_s
          local.set 4
        end
        block  ;; label = @3
          local.get 1
          i32.const 10
          i32.ge_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            i64.extend_i32_u
            local.get 4
            i64.const 10
            i64.mul
            i64.add
            local.set 4
            block (result i32)  ;; label = @5
              i32.const 2116
              i32.load
              local.tee 0
              i32.const 2216
              i32.load
              i32.ne
              if  ;; label = @6
                i32.const 2116
                local.get 0
                i32.const 1
                i32.add
                i32.store
                local.get 0
                i32.load8_u
                br 1 (;@5;)
              end
              call $__shgetc
            end
            local.set 0
            local.get 4
            i64.const 48
            i64.sub
            local.set 4
            local.get 0
            i32.const 48
            i32.sub
            local.tee 1
            i32.const 9
            i32.gt_u
            br_if 1 (;@3;)
            local.get 4
            i64.const 92233720368547758
            i64.lt_s
            br_if 0 (;@4;)
          end
        end
        local.get 1
        i32.const 10
        i32.lt_u
        if  ;; label = @3
          loop  ;; label = @4
            block (result i32)  ;; label = @5
              i32.const 2116
              i32.load
              local.tee 0
              i32.const 2216
              i32.load
              i32.ne
              if  ;; label = @6
                i32.const 2116
                local.get 0
                i32.const 1
                i32.add
                i32.store
                local.get 0
                i32.load8_u
                br 1 (;@5;)
              end
              call $__shgetc
            end
            i32.const 48
            i32.sub
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        i32.const 2224
        i64.load
        i64.const 0
        i64.ge_s
        if  ;; label = @3
          i32.const 2116
          i32.const 2116
          i32.load
          i32.const 1
          i32.sub
          i32.store
        end
        i64.const 0
        local.get 4
        i64.sub
        local.get 4
        local.get 3
        select
        local.set 4
        br 1 (;@1;)
      end
      i64.const -9223372036854775808
      local.set 4
      i32.const 2224
      i64.load
      i64.const 0
      i64.lt_s
      br_if 0 (;@1;)
      i32.const 2116
      i32.const 2116
      i32.load
      i32.const 1
      i32.sub
      i32.store
      i64.const -9223372036854775808
      return
    end
    local.get 4)
  (func $store_int (type 15) (param i32 i32 i64)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 2
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 2 (;@3;) 4 (;@1;) 3 (;@2;) 4 (;@1;)
            end
            local.get 0
            local.get 2
            i64.store8
            return
          end
          local.get 0
          local.get 2
          i64.store16
          return
        end
        local.get 0
        local.get 2
        i64.store32
        return
      end
      local.get 0
      local.get 2
      i64.store
    end)
  (func $__wasi_syscall_ret (type 0) (param i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    i32.const 3460
    local.get 0
    i32.store
    i32.const -1)
  (func $__addtf3 (type 2) (param i32 i64 i64 i64 i64)
    (local i64 i64 i64 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 10
    global.set $__stack_pointer
    local.get 4
    i64.const 9223372036854775807
    i64.and
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.eqz
        local.tee 9
        local.get 2
        i64.const 9223372036854775807
        i64.and
        local.tee 6
        i64.const 9223090561878065152
        i64.sub
        i64.const -9223090561878065152
        i64.lt_u
        local.get 6
        i64.eqz
        select
        i32.eqz
        if  ;; label = @3
          local.get 3
          i64.const 0
          i64.ne
          local.get 5
          i64.const 9223090561878065152
          i64.sub
          local.tee 7
          i64.const -9223090561878065152
          i64.gt_u
          local.get 7
          i64.const -9223090561878065152
          i64.eq
          select
          br_if 1 (;@2;)
        end
        local.get 9
        local.get 6
        i64.const 9223090561878065152
        i64.lt_u
        local.get 6
        i64.const 9223090561878065152
        i64.eq
        select
        i32.eqz
        if  ;; label = @3
          local.get 2
          i64.const 140737488355328
          i64.or
          local.set 4
          local.get 1
          local.set 3
          br 2 (;@1;)
        end
        local.get 3
        i64.eqz
        local.get 5
        i64.const 9223090561878065152
        i64.lt_u
        local.get 5
        i64.const 9223090561878065152
        i64.eq
        select
        i32.eqz
        if  ;; label = @3
          local.get 4
          i64.const 140737488355328
          i64.or
          local.set 4
          br 2 (;@1;)
        end
        local.get 1
        local.get 6
        i64.const 9223090561878065152
        i64.xor
        i64.or
        i64.eqz
        if  ;; label = @3
          i64.const 9223231299366420480
          local.get 2
          local.get 1
          local.get 3
          i64.xor
          local.get 2
          local.get 4
          i64.xor
          i64.const -9223372036854775808
          i64.xor
          i64.or
          i64.eqz
          local.tee 9
          select
          local.set 4
          i64.const 0
          local.get 1
          local.get 9
          select
          local.set 3
          br 2 (;@1;)
        end
        local.get 3
        local.get 5
        i64.const 9223090561878065152
        i64.xor
        i64.or
        i64.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 6
        i64.or
        i64.eqz
        if  ;; label = @3
          local.get 3
          local.get 5
          i64.or
          i64.const 0
          i64.ne
          br_if 2 (;@1;)
          local.get 1
          local.get 3
          i64.and
          local.set 3
          local.get 2
          local.get 4
          i64.and
          local.set 4
          br 2 (;@1;)
        end
        local.get 3
        local.get 5
        i64.or
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.set 3
        local.get 2
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      local.get 1
      local.get 1
      local.get 3
      i64.lt_u
      local.get 5
      local.get 6
      i64.gt_u
      local.get 5
      local.get 6
      i64.eq
      select
      local.tee 11
      select
      local.set 5
      local.get 4
      local.get 2
      local.get 11
      select
      local.tee 7
      i64.const 281474976710655
      i64.and
      local.set 6
      local.get 2
      local.get 4
      local.get 11
      select
      local.tee 2
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      i32.const 32767
      i32.and
      local.set 12
      local.get 7
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      i32.const 32767
      i32.and
      local.tee 9
      i32.eqz
      if  ;; label = @2
        local.get 10
        i32.const 96
        i32.add
        local.get 5
        local.get 6
        local.get 5
        local.get 6
        local.get 6
        i64.eqz
        local.tee 9
        select
        i64.clz
        local.get 9
        i32.const 6
        i32.shl
        i64.extend_i32_u
        i64.add
        i32.wrap_i64
        local.tee 9
        i32.const 15
        i32.sub
        call $__ashlti3
        local.get 10
        i64.load offset=104
        local.set 6
        local.get 10
        i64.load offset=96
        local.set 5
        i32.const 16
        local.get 9
        i32.sub
        local.set 9
      end
      local.get 1
      local.get 3
      local.get 11
      select
      local.set 3
      local.get 2
      i64.const 281474976710655
      i64.and
      local.set 4
      local.get 12
      i32.eqz
      if  ;; label = @2
        local.get 10
        i32.const 80
        i32.add
        local.get 3
        local.get 4
        local.get 3
        local.get 4
        local.get 4
        i64.eqz
        local.tee 11
        select
        i64.clz
        local.get 11
        i32.const 6
        i32.shl
        i64.extend_i32_u
        i64.add
        i32.wrap_i64
        local.tee 11
        i32.const 15
        i32.sub
        call $__ashlti3
        i32.const 16
        local.get 11
        i32.sub
        local.set 12
        local.get 10
        i64.load offset=88
        local.set 4
        local.get 10
        i64.load offset=80
        local.set 3
      end
      local.get 4
      i64.const 3
      i64.shl
      local.get 3
      i64.const 61
      i64.shr_u
      i64.or
      i64.const 2251799813685248
      i64.or
      local.set 4
      local.get 6
      i64.const 3
      i64.shl
      local.get 5
      i64.const 61
      i64.shr_u
      i64.or
      local.set 6
      local.get 2
      local.get 7
      i64.xor
      local.set 8
      block (result i64)  ;; label = @2
        local.get 3
        i64.const 3
        i64.shl
        local.tee 1
        local.get 9
        local.get 12
        i32.sub
        local.tee 11
        i32.eqz
        br_if 0 (;@2;)
        drop
        local.get 11
        i32.const 127
        i32.gt_u
        if  ;; label = @3
          i64.const 0
          local.set 4
          i64.const 1
          br 1 (;@2;)
        end
        local.get 10
        i32.const -64
        i32.sub
        local.get 1
        local.get 4
        i32.const 128
        local.get 11
        i32.sub
        call $__ashlti3
        local.get 10
        i32.const 48
        i32.add
        local.get 1
        local.get 4
        local.get 11
        call $__lshrti3
        local.get 10
        i64.load offset=56
        local.set 4
        local.get 10
        i64.load offset=48
        local.get 10
        i64.load offset=64
        local.get 10
        i64.load offset=72
        i64.or
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.or
      end
      local.set 1
      local.get 6
      i64.const 2251799813685248
      i64.or
      local.set 3
      local.get 5
      i64.const 3
      i64.shl
      local.set 2
      block  ;; label = @2
        local.get 8
        i64.const 0
        i64.lt_s
        if  ;; label = @3
          local.get 2
          local.get 1
          i64.sub
          local.tee 5
          local.get 3
          local.get 4
          i64.sub
          local.get 1
          local.get 2
          i64.gt_u
          i64.extend_i32_u
          i64.sub
          local.tee 4
          i64.or
          i64.eqz
          if  ;; label = @4
            i64.const 0
            local.set 3
            i64.const 0
            local.set 4
            br 3 (;@1;)
          end
          local.get 4
          i64.const 2251799813685247
          i64.gt_u
          br_if 1 (;@2;)
          local.get 10
          i32.const 32
          i32.add
          local.get 5
          local.get 4
          local.get 5
          local.get 4
          local.get 4
          i64.eqz
          local.tee 11
          select
          i64.clz
          local.get 11
          i32.const 6
          i32.shl
          i64.extend_i32_u
          i64.add
          i32.wrap_i64
          i32.const 12
          i32.sub
          local.tee 11
          call $__ashlti3
          local.get 9
          local.get 11
          i32.sub
          local.set 9
          local.get 10
          i64.load offset=40
          local.set 4
          local.get 10
          i64.load offset=32
          local.set 5
          br 1 (;@2;)
        end
        local.get 1
        local.get 2
        i64.add
        local.tee 5
        local.get 1
        i64.lt_u
        i64.extend_i32_u
        local.get 3
        local.get 4
        i64.add
        i64.add
        local.tee 4
        i64.const 4503599627370496
        i64.and
        i64.eqz
        br_if 0 (;@2;)
        local.get 5
        i64.const 1
        i64.and
        local.get 4
        i64.const 63
        i64.shl
        local.get 5
        i64.const 1
        i64.shr_u
        i64.or
        i64.or
        local.set 5
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        local.get 4
        i64.const 1
        i64.shr_u
        local.set 4
      end
      local.get 7
      i64.const -9223372036854775808
      i64.and
      local.set 1
      local.get 9
      i32.const 32767
      i32.ge_s
      if  ;; label = @2
        local.get 1
        i64.const 9223090561878065152
        i64.or
        local.set 4
        i64.const 0
        local.set 3
        br 1 (;@1;)
      end
      i32.const 0
      local.set 11
      block  ;; label = @2
        local.get 9
        i32.const 0
        i32.gt_s
        if  ;; label = @3
          local.get 9
          local.set 11
          br 1 (;@2;)
        end
        local.get 10
        i32.const 16
        i32.add
        local.get 5
        local.get 4
        local.get 9
        i32.const 127
        i32.add
        call $__ashlti3
        local.get 10
        local.get 5
        local.get 4
        i32.const 1
        local.get 9
        i32.sub
        call $__lshrti3
        local.get 10
        i64.load
        local.get 10
        i64.load offset=16
        local.get 10
        i64.load offset=24
        i64.or
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.or
        local.set 5
        local.get 10
        i64.load offset=8
        local.set 4
      end
      local.get 4
      i64.const 61
      i64.shl
      local.get 5
      i64.const 3
      i64.shr_u
      i64.or
      local.tee 2
      local.get 5
      i32.wrap_i64
      i32.const 7
      i32.and
      local.tee 9
      i32.const 4
      i32.gt_u
      i64.extend_i32_u
      i64.add
      local.tee 3
      local.get 2
      i64.lt_u
      i64.extend_i32_u
      local.get 4
      i64.const 3
      i64.shr_u
      i64.const 281474976710655
      i64.and
      local.get 11
      i64.extend_i32_u
      i64.const 48
      i64.shl
      i64.or
      local.get 1
      i64.or
      i64.add
      local.set 4
      block  ;; label = @2
        local.get 9
        i32.const 4
        i32.eq
        if  ;; label = @3
          local.get 4
          local.get 3
          i64.const 1
          i64.and
          local.tee 1
          local.get 3
          i64.add
          local.tee 3
          local.get 1
          i64.lt_u
          i64.extend_i32_u
          i64.add
          local.set 4
          br 1 (;@2;)
        end
        local.get 9
        i32.eqz
        br_if 1 (;@1;)
      end
    end
    local.get 0
    local.get 3
    i64.store
    local.get 0
    local.get 4
    i64.store offset=8
    local.get 10
    i32.const 112
    i32.add
    global.set $__stack_pointer)
  (func $__ashlti3 (type 9) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      local.get 3
      i32.const 64
      i32.and
      if  ;; label = @2
        local.get 1
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shl
        local.set 2
        i64.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shl
      local.get 1
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      i64.or
      local.set 2
      local.get 1
      local.get 4
      i64.shl
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__letf2 (type 16) (param i64 i64 i64 i64) (result i32)
    (local i32 i64 i64)
    i32.const 1
    local.set 4
    block  ;; label = @1
      local.get 0
      i64.const 0
      i64.ne
      local.get 1
      i64.const 9223372036854775807
      i64.and
      local.tee 5
      i64.const 9223090561878065152
      i64.gt_u
      local.get 5
      i64.const 9223090561878065152
      i64.eq
      select
      br_if 0 (;@1;)
      local.get 2
      i64.const 0
      i64.ne
      local.get 3
      i64.const 9223372036854775807
      i64.and
      local.tee 6
      i64.const 9223090561878065152
      i64.gt_u
      local.get 6
      i64.const 9223090561878065152
      i64.eq
      select
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i64.or
      local.get 5
      local.get 6
      i64.or
      i64.or
      i64.eqz
      if  ;; label = @2
        i32.const 0
        return
      end
      local.get 1
      local.get 3
      i64.and
      i64.const 0
      i64.ge_s
      if  ;; label = @2
        i32.const -1
        local.set 4
        local.get 0
        local.get 2
        i64.lt_u
        local.get 1
        local.get 3
        i64.lt_s
        local.get 1
        local.get 3
        i64.eq
        select
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i64.xor
        local.get 1
        local.get 3
        i64.xor
        i64.or
        i64.const 0
        i64.ne
        return
      end
      i32.const -1
      local.set 4
      local.get 0
      local.get 2
      i64.gt_u
      local.get 1
      local.get 3
      i64.gt_s
      local.get 1
      local.get 3
      i64.eq
      select
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i64.xor
      local.get 1
      local.get 3
      i64.xor
      i64.or
      i64.const 0
      i64.ne
      local.set 4
    end
    local.get 4)
  (func $__getf2 (type 17) (param i64 i64 i64) (result i32)
    (local i32 i64 i64)
    i32.const -1
    local.set 3
    block  ;; label = @1
      local.get 0
      i64.const 0
      i64.ne
      local.get 1
      i64.const 9223372036854775807
      i64.and
      local.tee 4
      i64.const 9223090561878065152
      i64.gt_u
      local.get 4
      i64.const 9223090561878065152
      i64.eq
      select
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i64.const 9223372036854775807
      i64.and
      local.tee 5
      i64.const 9223090561878065152
      i64.gt_u
      local.get 5
      i64.const 9223090561878065152
      i64.eq
      select
      br_if 0 (;@1;)
      local.get 0
      local.get 4
      local.get 5
      i64.or
      i64.or
      i64.eqz
      if  ;; label = @2
        i32.const 0
        return
      end
      local.get 1
      local.get 2
      i64.and
      i64.const 0
      i64.ge_s
      if  ;; label = @2
        i32.const 0
        local.get 1
        local.get 2
        i64.lt_s
        local.get 1
        local.get 2
        i64.eq
        select
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        local.get 2
        i64.xor
        i64.or
        i64.const 0
        i64.ne
        return
      end
      local.get 0
      i64.const 0
      i64.ne
      local.get 1
      local.get 2
      i64.gt_s
      local.get 1
      local.get 2
      i64.eq
      select
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i64.xor
      i64.or
      i64.const 0
      i64.ne
      local.set 3
    end
    local.get 3)
  (func $__divtf3 (type 2) (param i32 i64 i64 i64 i64)
    (local i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 336
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 4
    i64.const 281474976710655
    i64.and
    local.set 11
    local.get 2
    i64.const 281474976710655
    i64.and
    local.set 10
    local.get 2
    local.get 4
    i64.xor
    i64.const -9223372036854775808
    i64.and
    local.set 13
    local.get 4
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 32767
    i32.and
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i64.const 48
        i64.shr_u
        i32.wrap_i64
        i32.const 32767
        i32.and
        local.tee 9
        i32.const 32767
        i32.sub
        i32.const -32766
        i32.ge_u
        if  ;; label = @3
          local.get 8
          i32.const 32767
          i32.sub
          i32.const -32767
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 1
        i64.eqz
        local.get 2
        i64.const 9223372036854775807
        i64.and
        local.tee 12
        i64.const 9223090561878065152
        i64.lt_u
        local.get 12
        i64.const 9223090561878065152
        i64.eq
        select
        i32.eqz
        if  ;; label = @3
          local.get 2
          i64.const 140737488355328
          i64.or
          local.set 13
          br 2 (;@1;)
        end
        local.get 3
        i64.eqz
        local.get 4
        i64.const 9223372036854775807
        i64.and
        local.tee 2
        i64.const 9223090561878065152
        i64.lt_u
        local.get 2
        i64.const 9223090561878065152
        i64.eq
        select
        i32.eqz
        if  ;; label = @3
          local.get 4
          i64.const 140737488355328
          i64.or
          local.set 13
          local.get 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        local.get 12
        i64.const 9223090561878065152
        i64.xor
        i64.or
        i64.eqz
        if  ;; label = @3
          local.get 3
          local.get 2
          i64.const 9223090561878065152
          i64.xor
          i64.or
          i64.eqz
          if  ;; label = @4
            i64.const 0
            local.set 1
            i64.const 9223231299366420480
            local.set 13
            br 3 (;@1;)
          end
          local.get 13
          i64.const 9223090561878065152
          i64.or
          local.set 13
          i64.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 3
        local.get 2
        i64.const 9223090561878065152
        i64.xor
        i64.or
        i64.eqz
        if  ;; label = @3
          i64.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        local.get 12
        i64.or
        i64.eqz
        if  ;; label = @3
          i64.const 9223231299366420480
          local.get 13
          local.get 2
          local.get 3
          i64.or
          i64.eqz
          select
          local.set 13
          i64.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i64.or
        i64.eqz
        if  ;; label = @3
          local.get 13
          i64.const 9223090561878065152
          i64.or
          local.set 13
          i64.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 12
        i64.const 281474976710655
        i64.le_u
        if  ;; label = @3
          local.get 5
          i32.const 320
          i32.add
          local.get 1
          local.get 10
          local.get 1
          local.get 10
          local.get 10
          i64.eqz
          local.tee 6
          select
          i64.clz
          local.get 6
          i32.const 6
          i32.shl
          i64.extend_i32_u
          i64.add
          i32.wrap_i64
          local.tee 6
          i32.const 15
          i32.sub
          call $__ashlti3
          i32.const 16
          local.get 6
          i32.sub
          local.set 6
          local.get 5
          i64.load offset=328
          local.set 10
          local.get 5
          i64.load offset=320
          local.set 1
        end
        local.get 2
        i64.const 281474976710655
        i64.gt_u
        br_if 0 (;@2;)
        local.get 5
        i32.const 304
        i32.add
        local.get 3
        local.get 11
        local.get 3
        local.get 11
        local.get 11
        i64.eqz
        local.tee 7
        select
        i64.clz
        local.get 7
        i32.const 6
        i32.shl
        i64.extend_i32_u
        i64.add
        i32.wrap_i64
        local.tee 7
        i32.const 15
        i32.sub
        call $__ashlti3
        local.get 6
        local.get 7
        i32.add
        i32.const 16
        i32.sub
        local.set 6
        local.get 5
        i64.load offset=312
        local.set 11
        local.get 5
        i64.load offset=304
        local.set 3
      end
      local.get 5
      i32.const 288
      i32.add
      local.get 11
      i64.const 281474976710656
      i64.or
      local.tee 18
      i64.const 15
      i64.shl
      local.get 3
      i64.const 49
      i64.shr_u
      i64.or
      local.tee 2
      i64.const 0
      i64.const 8432131802713292800
      local.get 2
      i64.sub
      local.tee 4
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 272
      i32.add
      i64.const 0
      local.get 5
      i64.load offset=296
      i64.sub
      i64.const 0
      local.get 4
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 256
      i32.add
      local.get 5
      i64.load offset=280
      i64.const 1
      i64.shl
      local.get 5
      i64.load offset=272
      i64.const 63
      i64.shr_u
      i64.or
      local.tee 4
      i64.const 0
      local.get 2
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 240
      i32.add
      local.get 4
      i64.const 0
      i64.const 0
      local.get 5
      i64.load offset=264
      i64.sub
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 224
      i32.add
      local.get 5
      i64.load offset=248
      i64.const 1
      i64.shl
      local.get 5
      i64.load offset=240
      i64.const 63
      i64.shr_u
      i64.or
      local.tee 4
      i64.const 0
      local.get 2
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 208
      i32.add
      local.get 4
      i64.const 0
      i64.const 0
      local.get 5
      i64.load offset=232
      i64.sub
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 192
      i32.add
      local.get 5
      i64.load offset=216
      i64.const 1
      i64.shl
      local.get 5
      i64.load offset=208
      i64.const 63
      i64.shr_u
      i64.or
      local.tee 4
      i64.const 0
      local.get 2
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 176
      i32.add
      local.get 4
      i64.const 0
      i64.const 0
      local.get 5
      i64.load offset=200
      i64.sub
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 160
      i32.add
      local.get 2
      i64.const 0
      local.get 5
      i64.load offset=184
      i64.const 1
      i64.shl
      local.get 5
      i64.load offset=176
      i64.const 63
      i64.shr_u
      i64.or
      i64.const 1
      i64.sub
      local.tee 2
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 144
      i32.add
      local.get 3
      i64.const 15
      i64.shl
      i64.const 0
      local.get 2
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 112
      i32.add
      local.get 2
      i64.const 0
      i64.const 0
      local.get 5
      i64.load offset=168
      local.get 5
      i64.load offset=160
      local.tee 12
      local.get 5
      i64.load offset=152
      i64.add
      local.tee 4
      local.get 12
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.get 4
      i64.const 1
      i64.gt_u
      i64.extend_i32_u
      i64.add
      i64.sub
      i64.const 0
      call $__multi3
      local.get 5
      i32.const 128
      i32.add
      i64.const 1
      local.get 4
      i64.sub
      i64.const 0
      local.get 2
      i64.const 0
      call $__multi3
      local.get 6
      local.get 9
      local.get 8
      i32.sub
      i32.add
      local.set 6
      block (result i32)  ;; label = @2
        local.get 5
        i64.load offset=112
        local.tee 19
        i64.const 1
        i64.shl
        local.tee 14
        local.get 5
        i64.load offset=136
        local.tee 15
        i64.const 1
        i64.shl
        local.get 5
        i64.load offset=128
        i64.const 63
        i64.shr_u
        i64.or
        i64.add
        local.tee 16
        i64.const 13927
        i64.sub
        local.tee 20
        i64.const 32
        i64.shr_u
        local.tee 2
        local.get 10
        i64.const 281474976710656
        i64.or
        local.tee 21
        i64.const 31
        i64.shr_u
        i64.const 4294967295
        i64.and
        local.tee 4
        i64.mul
        local.tee 17
        local.get 1
        i64.const 1
        i64.shl
        local.tee 12
        i64.const 32
        i64.shr_u
        local.tee 11
        local.get 16
        local.get 20
        i64.gt_u
        i64.extend_i32_u
        local.get 14
        local.get 16
        i64.gt_u
        i64.extend_i32_u
        local.get 5
        i64.load offset=120
        i64.const 1
        i64.shl
        local.get 19
        i64.const 63
        i64.shr_u
        i64.or
        local.get 15
        i64.const 63
        i64.shr_u
        i64.add
        i64.add
        i64.add
        i64.const 1
        i64.sub
        local.tee 19
        i64.const 32
        i64.shr_u
        local.tee 16
        i64.mul
        i64.add
        local.tee 14
        local.get 17
        i64.lt_u
        i64.extend_i32_u
        local.get 14
        local.get 14
        local.get 19
        i64.const 4294967295
        i64.and
        local.tee 19
        local.get 1
        i64.const 63
        i64.shr_u
        local.tee 22
        local.get 10
        i64.const 1
        i64.shl
        i64.or
        i64.const 4294967295
        i64.and
        local.tee 10
        i64.mul
        i64.add
        local.tee 14
        i64.gt_u
        i64.extend_i32_u
        i64.add
        local.get 4
        local.get 16
        i64.mul
        i64.add
        local.get 4
        local.get 19
        i64.mul
        local.tee 17
        local.get 10
        local.get 16
        i64.mul
        i64.add
        local.tee 15
        local.get 17
        i64.lt_u
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 15
        i64.const 32
        i64.shr_u
        i64.or
        i64.add
        local.get 14
        local.get 14
        local.get 15
        i64.const 32
        i64.shl
        i64.add
        local.tee 14
        i64.gt_u
        i64.extend_i32_u
        i64.add
        local.get 14
        local.get 14
        local.get 20
        i64.const 4294967295
        i64.and
        local.tee 20
        local.get 10
        i64.mul
        local.tee 17
        local.get 2
        local.get 11
        i64.mul
        i64.add
        local.tee 15
        local.get 17
        i64.lt_u
        i64.extend_i32_u
        local.get 15
        local.get 15
        local.get 19
        local.get 12
        i64.const 4294967294
        i64.and
        local.tee 17
        i64.mul
        i64.add
        local.tee 15
        i64.gt_u
        i64.extend_i32_u
        i64.add
        i64.add
        local.tee 14
        i64.gt_u
        i64.extend_i32_u
        i64.add
        local.get 14
        local.get 4
        local.get 20
        i64.mul
        local.tee 23
        local.get 16
        local.get 17
        i64.mul
        i64.add
        local.tee 4
        local.get 2
        local.get 10
        i64.mul
        i64.add
        local.tee 10
        local.get 11
        local.get 19
        i64.mul
        i64.add
        local.tee 16
        i64.const 32
        i64.shr_u
        local.get 10
        local.get 16
        i64.gt_u
        i64.extend_i32_u
        local.get 4
        local.get 23
        i64.lt_u
        i64.extend_i32_u
        local.get 4
        local.get 10
        i64.gt_u
        i64.extend_i32_u
        i64.add
        i64.add
        i64.const 32
        i64.shl
        i64.or
        i64.add
        local.tee 4
        local.get 14
        i64.lt_u
        i64.extend_i32_u
        i64.add
        local.get 4
        local.get 15
        local.get 2
        local.get 17
        i64.mul
        local.tee 2
        local.get 11
        local.get 20
        i64.mul
        i64.add
        local.tee 11
        i64.const 32
        i64.shr_u
        local.get 2
        local.get 11
        i64.gt_u
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.or
        i64.add
        local.tee 2
        local.get 15
        i64.lt_u
        i64.extend_i32_u
        local.get 2
        local.get 16
        i64.const 32
        i64.shl
        i64.add
        local.get 2
        i64.lt_u
        i64.extend_i32_u
        i64.add
        i64.add
        local.tee 2
        local.get 4
        i64.lt_u
        i64.extend_i32_u
        i64.add
        local.tee 4
        i64.const 562949953421311
        i64.le_u
        if  ;; label = @3
          local.get 21
          i64.const 1
          i64.shl
          local.get 22
          i64.or
          local.set 21
          local.get 5
          i32.const 80
          i32.add
          local.get 2
          local.get 4
          local.get 3
          local.get 18
          call $__multi3
          local.get 1
          i64.const 49
          i64.shl
          local.get 5
          i64.load offset=88
          i64.sub
          local.get 5
          i64.load offset=80
          local.tee 1
          i64.const 0
          i64.ne
          i64.extend_i32_u
          i64.sub
          local.set 10
          i64.const 0
          local.get 1
          i64.sub
          local.set 11
          local.get 6
          i32.const 16382
          i32.add
          br 1 (;@2;)
        end
        local.get 5
        i32.const 96
        i32.add
        local.get 4
        i64.const 63
        i64.shl
        local.get 2
        i64.const 1
        i64.shr_u
        i64.or
        local.tee 2
        local.get 4
        i64.const 1
        i64.shr_u
        local.tee 4
        local.get 3
        local.get 18
        call $__multi3
        local.get 1
        i64.const 48
        i64.shl
        local.get 5
        i64.load offset=104
        i64.sub
        local.get 5
        i64.load offset=96
        local.tee 12
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.sub
        local.set 10
        i64.const 0
        local.get 12
        i64.sub
        local.set 11
        local.get 1
        local.set 12
        local.get 6
        i32.const 16383
        i32.add
      end
      local.tee 6
      i32.const 32767
      i32.ge_s
      if  ;; label = @2
        local.get 13
        i64.const 9223090561878065152
        i64.or
        local.set 13
        i64.const 0
        local.set 1
        br 1 (;@1;)
      end
      block (result i64)  ;; label = @2
        local.get 6
        i32.const 0
        i32.gt_s
        if  ;; label = @3
          local.get 10
          i64.const 1
          i64.shl
          local.get 11
          i64.const 63
          i64.shr_u
          i64.or
          local.set 10
          local.get 4
          i64.const 281474976710655
          i64.and
          local.get 6
          i64.extend_i32_u
          i64.const 48
          i64.shl
          i64.or
          local.set 12
          local.get 11
          i64.const 1
          i64.shl
          br 1 (;@2;)
        end
        local.get 6
        i32.const -113
        i32.le_s
        if  ;; label = @3
          i64.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 5
        i32.const -64
        i32.sub
        local.get 2
        local.get 4
        i32.const 1
        local.get 6
        i32.sub
        call $__lshrti3
        local.get 5
        i32.const 48
        i32.add
        local.get 12
        local.get 21
        local.get 6
        i32.const 112
        i32.add
        call $__ashlti3
        local.get 5
        i32.const 32
        i32.add
        local.get 3
        local.get 18
        local.get 5
        i64.load offset=64
        local.tee 2
        local.get 5
        i64.load offset=72
        local.tee 12
        call $__multi3
        local.get 5
        i64.load offset=56
        local.get 5
        i64.load offset=40
        i64.const 1
        i64.shl
        local.get 5
        i64.load offset=32
        local.tee 1
        i64.const 63
        i64.shr_u
        i64.or
        i64.sub
        local.get 5
        i64.load offset=48
        local.tee 4
        local.get 1
        i64.const 1
        i64.shl
        local.tee 1
        i64.lt_u
        i64.extend_i32_u
        i64.sub
        local.set 10
        local.get 4
        local.get 1
        i64.sub
      end
      local.set 4
      local.get 5
      i32.const 16
      i32.add
      local.get 3
      local.get 18
      i64.const 3
      i64.const 0
      call $__multi3
      local.get 5
      local.get 3
      local.get 18
      i64.const 5
      i64.const 0
      call $__multi3
      local.get 12
      local.get 2
      local.get 2
      local.get 3
      local.get 2
      i64.const 1
      i64.and
      local.tee 1
      local.get 4
      i64.add
      local.tee 3
      i64.lt_u
      local.get 10
      local.get 1
      local.get 3
      i64.gt_u
      i64.extend_i32_u
      i64.add
      local.tee 1
      local.get 18
      i64.gt_u
      local.get 1
      local.get 18
      i64.eq
      select
      i64.extend_i32_u
      i64.add
      local.tee 2
      i64.gt_u
      i64.extend_i32_u
      i64.add
      local.tee 4
      local.get 2
      local.get 2
      local.get 4
      i64.const 9223090561878065152
      i64.lt_u
      local.get 3
      local.get 5
      i64.load offset=16
      i64.gt_u
      local.get 1
      local.get 5
      i64.load offset=24
      local.tee 4
      i64.gt_u
      local.get 1
      local.get 4
      i64.eq
      select
      i32.and
      i64.extend_i32_u
      i64.add
      local.tee 2
      i64.gt_u
      i64.extend_i32_u
      i64.add
      local.tee 4
      local.get 2
      local.get 4
      i64.const 9223090561878065152
      i64.lt_u
      local.get 3
      local.get 5
      i64.load
      i64.gt_u
      local.get 1
      local.get 5
      i64.load offset=8
      local.tee 3
      i64.gt_u
      local.get 1
      local.get 3
      i64.eq
      select
      i32.and
      i64.extend_i32_u
      i64.add
      local.tee 1
      local.get 2
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.get 13
      i64.or
      local.set 13
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 13
    i64.store offset=8
    local.get 5
    i32.const 336
    i32.add
    global.set $__stack_pointer)
  (func $__extenddftf2 (type 18) (param i32 f64)
    (local i64 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block (result i64)  ;; label = @1
      local.get 1
      i64.reinterpret_f64
      local.tee 3
      i64.const 9223372036854775807
      i64.and
      local.tee 2
      i64.const 4503599627370496
      i64.sub
      i64.const 9214364837600034815
      i64.le_u
      if  ;; label = @2
        local.get 2
        i64.const 60
        i64.shl
        local.set 4
        local.get 2
        i64.const 4
        i64.shr_u
        i64.const 4323455642275676160
        i64.add
        br 1 (;@1;)
      end
      local.get 2
      i64.const 9218868437227405312
      i64.ge_u
      if  ;; label = @2
        local.get 3
        i64.const 60
        i64.shl
        local.set 4
        local.get 3
        i64.const 4
        i64.shr_u
        i64.const 9223090561878065152
        i64.or
        br 1 (;@1;)
      end
      local.get 2
      i64.eqz
      if  ;; label = @2
        i64.const 0
        br 1 (;@1;)
      end
      local.get 5
      local.get 2
      i64.const 0
      local.get 3
      i32.wrap_i64
      i32.clz
      i32.const 32
      i32.add
      local.get 2
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.clz
      local.get 2
      i64.const 4294967296
      i64.lt_u
      select
      local.tee 6
      i32.const 49
      i32.add
      call $__ashlti3
      local.get 5
      i64.load
      local.set 4
      local.get 5
      i64.load offset=8
      i64.const 281474976710656
      i64.xor
      i32.const 15372
      local.get 6
      i32.sub
      i64.extend_i32_u
      i64.const 48
      i64.shl
      i64.or
    end
    local.set 2
    local.get 0
    local.get 4
    i64.store
    local.get 0
    local.get 2
    local.get 3
    i64.const -9223372036854775808
    i64.and
    i64.or
    i64.store offset=8
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__floatsitf (type 5) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    block (result i64)  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        i64.const 0
        br 1 (;@1;)
      end
      local.get 3
      local.get 1
      local.get 1
      i32.const 31
      i32.shr_s
      local.tee 2
      i32.add
      local.get 2
      i32.xor
      local.tee 2
      i64.extend_i32_u
      i64.const 0
      local.get 2
      i32.clz
      local.tee 2
      i32.const 81
      i32.add
      call $__ashlti3
      local.get 3
      i64.load offset=8
      i64.const 281474976710656
      i64.xor
      i32.const 16414
      local.get 2
      i32.sub
      i64.extend_i32_u
      i64.const 48
      i64.shl
      i64.add
      local.get 1
      i32.const -2147483648
      i32.and
      i64.extend_i32_u
      i64.const 32
      i64.shl
      i64.or
      local.set 4
      local.get 3
      i64.load
    end
    i64.store
    local.get 0
    local.get 4
    i64.store offset=8
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__floatunsitf (type 5) (param i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    block (result i64)  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        i64.const 0
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i64.extend_i32_u
      i64.const 0
      local.get 1
      i32.clz
      local.tee 1
      i32.const 81
      i32.add
      call $__ashlti3
      local.get 2
      i64.load offset=8
      i64.const 281474976710656
      i64.xor
      i32.const 16414
      local.get 1
      i32.sub
      i64.extend_i32_u
      i64.const 48
      i64.shl
      i64.add
      local.set 3
      local.get 2
      i64.load
    end
    i64.store
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__lshrti3 (type 9) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      local.get 3
      i32.const 64
      i32.and
      if  ;; label = @2
        local.get 2
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shr_u
        local.set 1
        i64.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shl
      local.get 1
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shr_u
      i64.or
      local.set 1
      local.get 2
      local.get 4
      i64.shr_u
      local.set 2
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__multf3 (type 2) (param i32 i64 i64 i64 i64)
    (local i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 4
    i64.const 281474976710655
    i64.and
    local.tee 13
    i64.const 15
    i64.shl
    local.get 3
    i64.const 49
    i64.shr_u
    i64.or
    local.set 14
    local.get 2
    local.get 4
    i64.xor
    i64.const -9223372036854775808
    i64.and
    local.set 10
    local.get 2
    i64.const 281474976710655
    i64.and
    local.tee 11
    i64.const 32
    i64.shr_u
    local.set 15
    local.get 13
    i64.const 17
    i64.shr_u
    local.set 16
    local.get 4
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 32767
    i32.and
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i64.const 48
        i64.shr_u
        i32.wrap_i64
        i32.const 32767
        i32.and
        local.tee 9
        i32.const 32767
        i32.sub
        i32.const -32766
        i32.ge_u
        if  ;; label = @3
          local.get 7
          i32.const 32767
          i32.sub
          i32.const -32767
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 1
        i64.eqz
        local.get 2
        i64.const 9223372036854775807
        i64.and
        local.tee 12
        i64.const 9223090561878065152
        i64.lt_u
        local.get 12
        i64.const 9223090561878065152
        i64.eq
        select
        i32.eqz
        if  ;; label = @3
          local.get 2
          i64.const 140737488355328
          i64.or
          local.set 10
          br 2 (;@1;)
        end
        local.get 3
        i64.eqz
        local.get 4
        i64.const 9223372036854775807
        i64.and
        local.tee 2
        i64.const 9223090561878065152
        i64.lt_u
        local.get 2
        i64.const 9223090561878065152
        i64.eq
        select
        i32.eqz
        if  ;; label = @3
          local.get 4
          i64.const 140737488355328
          i64.or
          local.set 10
          local.get 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        local.get 12
        i64.const 9223090561878065152
        i64.xor
        i64.or
        i64.eqz
        if  ;; label = @3
          local.get 2
          local.get 3
          i64.or
          i64.eqz
          if  ;; label = @4
            i64.const 9223231299366420480
            local.set 10
            i64.const 0
            local.set 1
            br 3 (;@1;)
          end
          local.get 10
          i64.const 9223090561878065152
          i64.or
          local.set 10
          i64.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 3
        local.get 2
        i64.const 9223090561878065152
        i64.xor
        i64.or
        i64.eqz
        if  ;; label = @3
          local.get 1
          local.get 12
          i64.or
          local.set 2
          i64.const 0
          local.set 1
          local.get 2
          i64.eqz
          if  ;; label = @4
            i64.const 9223231299366420480
            local.set 10
            br 3 (;@1;)
          end
          local.get 10
          i64.const 9223090561878065152
          i64.or
          local.set 10
          br 2 (;@1;)
        end
        local.get 1
        local.get 12
        i64.or
        i64.eqz
        if  ;; label = @3
          i64.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i64.or
        i64.eqz
        if  ;; label = @3
          i64.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 12
        i64.const 281474976710655
        i64.le_u
        if  ;; label = @3
          local.get 5
          i32.const 80
          i32.add
          local.get 1
          local.get 11
          local.get 1
          local.get 11
          local.get 11
          i64.eqz
          local.tee 6
          select
          i64.clz
          local.get 6
          i32.const 6
          i32.shl
          i64.extend_i32_u
          i64.add
          i32.wrap_i64
          local.tee 6
          i32.const 15
          i32.sub
          call $__ashlti3
          i32.const 16
          local.get 6
          i32.sub
          local.set 6
          local.get 5
          i64.load offset=88
          local.tee 11
          i64.const 32
          i64.shr_u
          local.set 15
          local.get 5
          i64.load offset=80
          local.set 1
        end
        local.get 2
        i64.const 281474976710655
        i64.gt_u
        br_if 0 (;@2;)
        local.get 5
        i32.const -64
        i32.sub
        local.get 3
        local.get 13
        local.get 3
        local.get 13
        local.get 13
        i64.eqz
        local.tee 8
        select
        i64.clz
        local.get 8
        i32.const 6
        i32.shl
        i64.extend_i32_u
        i64.add
        i32.wrap_i64
        local.tee 8
        i32.const 15
        i32.sub
        call $__ashlti3
        local.get 6
        local.get 8
        i32.sub
        i32.const 16
        i32.add
        local.set 6
        local.get 5
        i64.load offset=72
        local.tee 2
        i64.const 15
        i64.shl
        local.get 5
        i64.load offset=64
        local.tee 3
        i64.const 49
        i64.shr_u
        i64.or
        local.set 14
        local.get 2
        i64.const 17
        i64.shr_u
        local.set 16
      end
      local.get 3
      i64.const 15
      i64.shl
      i64.const 4294934528
      i64.and
      local.tee 2
      local.get 1
      i64.const 32
      i64.shr_u
      local.tee 4
      i64.mul
      local.tee 18
      local.get 3
      i64.const 17
      i64.shr_u
      i64.const 4294967295
      i64.and
      local.tee 12
      local.get 1
      i64.const 4294967295
      i64.and
      local.tee 1
      i64.mul
      i64.add
      local.tee 17
      i64.const 32
      i64.shl
      local.tee 13
      local.get 1
      local.get 2
      i64.mul
      i64.add
      local.tee 3
      local.get 13
      i64.lt_u
      i64.extend_i32_u
      local.get 2
      local.get 11
      i64.const 4294967295
      i64.and
      local.tee 11
      i64.mul
      local.tee 21
      local.get 4
      local.get 12
      i64.mul
      i64.add
      local.tee 19
      local.get 14
      i64.const 4294967295
      i64.and
      local.tee 13
      local.get 1
      i64.mul
      i64.add
      local.tee 20
      local.get 17
      local.get 18
      i64.lt_u
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 17
      i64.const 32
      i64.shr_u
      i64.or
      i64.add
      local.tee 17
      local.get 2
      local.get 15
      i64.const 65536
      i64.or
      local.tee 14
      i64.mul
      local.tee 22
      local.get 11
      local.get 12
      i64.mul
      i64.add
      local.tee 15
      local.get 4
      local.get 13
      i64.mul
      i64.add
      local.tee 18
      local.get 16
      i64.const 2147483647
      i64.and
      i64.const 2147483648
      i64.or
      local.tee 2
      local.get 1
      i64.mul
      i64.add
      local.tee 16
      i64.const 32
      i64.shl
      i64.add
      local.tee 23
      i64.add
      local.set 1
      local.get 7
      local.get 9
      i32.add
      local.get 6
      i32.add
      i32.const 16383
      i32.sub
      local.set 6
      block  ;; label = @2
        local.get 11
        local.get 13
        i64.mul
        local.tee 24
        local.get 12
        local.get 14
        i64.mul
        i64.add
        local.tee 12
        local.get 24
        i64.lt_u
        i64.extend_i32_u
        local.get 12
        local.get 2
        local.get 4
        i64.mul
        i64.add
        local.tee 4
        local.get 12
        i64.lt_u
        i64.extend_i32_u
        i64.add
        local.get 2
        local.get 14
        i64.mul
        i64.add
        local.get 4
        local.get 4
        local.get 19
        local.get 21
        i64.lt_u
        i64.extend_i32_u
        local.get 19
        local.get 20
        i64.gt_u
        i64.extend_i32_u
        i64.add
        i64.add
        local.tee 4
        i64.gt_u
        i64.extend_i32_u
        i64.add
        local.get 2
        local.get 11
        i64.mul
        local.tee 11
        local.get 13
        local.get 14
        i64.mul
        i64.add
        local.tee 2
        local.get 11
        i64.lt_u
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 2
        i64.const 32
        i64.shr_u
        i64.or
        i64.add
        local.get 4
        local.get 2
        i64.const 32
        i64.shl
        i64.add
        local.tee 2
        local.get 4
        i64.lt_u
        i64.extend_i32_u
        i64.add
        local.get 2
        local.get 2
        local.get 16
        local.get 18
        i64.lt_u
        i64.extend_i32_u
        local.get 15
        local.get 22
        i64.lt_u
        i64.extend_i32_u
        local.get 15
        local.get 18
        i64.gt_u
        i64.extend_i32_u
        i64.add
        i64.add
        i64.const 32
        i64.shl
        local.get 16
        i64.const 32
        i64.shr_u
        i64.or
        i64.add
        local.tee 2
        i64.gt_u
        i64.extend_i32_u
        i64.add
        local.get 2
        local.get 2
        local.get 17
        local.get 20
        i64.lt_u
        i64.extend_i32_u
        local.get 17
        local.get 23
        i64.gt_u
        i64.extend_i32_u
        i64.add
        i64.add
        local.tee 2
        i64.gt_u
        i64.extend_i32_u
        i64.add
        local.tee 4
        i64.const 281474976710656
        i64.and
        i64.eqz
        i32.eqz
        if  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          br 1 (;@2;)
        end
        local.get 3
        i64.const 63
        i64.shr_u
        local.set 11
        local.get 4
        i64.const 1
        i64.shl
        local.get 2
        i64.const 63
        i64.shr_u
        i64.or
        local.set 4
        local.get 2
        i64.const 1
        i64.shl
        local.get 1
        i64.const 63
        i64.shr_u
        i64.or
        local.set 2
        local.get 3
        i64.const 1
        i64.shl
        local.set 3
        local.get 11
        local.get 1
        i64.const 1
        i64.shl
        i64.or
        local.set 1
      end
      local.get 6
      i32.const 32767
      i32.ge_s
      if  ;; label = @2
        local.get 10
        i64.const 9223090561878065152
        i64.or
        local.set 10
        i64.const 0
        local.set 1
        br 1 (;@1;)
      end
      block (result i64)  ;; label = @2
        local.get 6
        i32.const 0
        i32.le_s
        if  ;; label = @3
          i32.const 1
          local.get 6
          i32.sub
          local.tee 7
          i32.const 128
          i32.ge_u
          if  ;; label = @4
            i64.const 0
            local.set 1
            br 3 (;@1;)
          end
          local.get 5
          i32.const 48
          i32.add
          local.get 3
          local.get 1
          local.get 6
          i32.const 127
          i32.add
          local.tee 6
          call $__ashlti3
          local.get 5
          i32.const 32
          i32.add
          local.get 2
          local.get 4
          local.get 6
          call $__ashlti3
          local.get 5
          i32.const 16
          i32.add
          local.get 3
          local.get 1
          local.get 7
          call $__lshrti3
          local.get 5
          local.get 2
          local.get 4
          local.get 7
          call $__lshrti3
          local.get 5
          i64.load offset=48
          local.get 5
          i64.load offset=56
          i64.or
          i64.const 0
          i64.ne
          i64.extend_i32_u
          local.get 5
          i64.load offset=32
          local.get 5
          i64.load offset=16
          i64.or
          i64.or
          local.set 3
          local.get 5
          i64.load offset=40
          local.get 5
          i64.load offset=24
          i64.or
          local.set 1
          local.get 5
          i64.load
          local.set 2
          local.get 5
          i64.load offset=8
          br 1 (;@2;)
        end
        local.get 4
        i64.const 281474976710655
        i64.and
        local.get 6
        i64.extend_i32_u
        i64.const 48
        i64.shl
        i64.or
      end
      local.get 10
      i64.or
      local.set 10
      local.get 3
      i64.eqz
      local.get 1
      i64.const 0
      i64.ge_s
      local.get 1
      i64.const -9223372036854775808
      i64.eq
      select
      i32.eqz
      if  ;; label = @2
        local.get 10
        local.get 2
        i64.const 1
        i64.add
        local.tee 1
        local.get 2
        i64.lt_u
        i64.extend_i32_u
        i64.add
        local.set 10
        br 1 (;@1;)
      end
      local.get 3
      local.get 1
      i64.const -9223372036854775808
      i64.xor
      i64.or
      i64.eqz
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 10
      local.get 2
      local.get 2
      i64.const 1
      i64.and
      i64.add
      local.tee 1
      local.get 2
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.set 10
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 10
    i64.store offset=8
    local.get 5
    i32.const 96
    i32.add
    global.set $__stack_pointer)
  (func $__multi3 (type 2) (param i32 i64 i64 i64 i64)
    (local i64)
    local.get 0
    local.get 1
    local.get 4
    i64.mul
    local.get 2
    local.get 3
    i64.mul
    i64.add
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 2
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 4
    i64.mul
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 1
    i64.mul
    local.tee 5
    i64.const 32
    i64.shr_u
    local.get 3
    local.get 4
    i64.mul
    i64.add
    local.tee 3
    i64.const 32
    i64.shr_u
    i64.add
    local.get 1
    local.get 2
    i64.mul
    local.get 3
    i64.const 4294967295
    i64.and
    i64.add
    local.tee 1
    i64.const 32
    i64.shr_u
    i64.add
    i64.store offset=8
    local.get 0
    local.get 5
    i64.const 4294967295
    i64.and
    local.get 1
    i64.const 32
    i64.shl
    i64.or
    i64.store)
  (func $__subtf3 (type 2) (param i32 i64 i64 i64 i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    i64.const -9223372036854775808
    i64.xor
    call $__addtf3
    local.get 5
    i64.load
    local.set 1
    local.get 0
    local.get 5
    i64.load offset=8
    i64.store offset=8
    local.get 0
    local.get 1
    i64.store
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $dlmalloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 11
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.const 244
                          i32.le_u
                          if  ;; label = @12
                            i32.const 3636
                            i32.load
                            local.tee 6
                            i32.const 16
                            local.get 0
                            i32.const 11
                            i32.add
                            i32.const -8
                            i32.and
                            local.get 0
                            i32.const 11
                            i32.lt_u
                            select
                            local.tee 7
                            i32.const 3
                            i32.shr_u
                            local.tee 2
                            i32.shr_u
                            local.tee 1
                            i32.const 3
                            i32.and
                            if  ;; label = @13
                              local.get 1
                              i32.const -1
                              i32.xor
                              i32.const 1
                              i32.and
                              local.get 2
                              i32.add
                              local.tee 3
                              i32.const 3
                              i32.shl
                              local.tee 1
                              i32.const 3684
                              i32.add
                              i32.load
                              local.tee 4
                              i32.const 8
                              i32.add
                              local.set 0
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=8
                                local.tee 2
                                local.get 1
                                i32.const 3676
                                i32.add
                                local.tee 1
                                i32.eq
                                if  ;; label = @15
                                  i32.const 3636
                                  local.get 6
                                  i32.const -2
                                  local.get 3
                                  i32.rotl
                                  i32.and
                                  i32.store
                                  br 1 (;@14;)
                                end
                                local.get 2
                                local.get 1
                                i32.store offset=12
                                local.get 1
                                local.get 2
                                i32.store offset=8
                              end
                              local.get 4
                              local.get 3
                              i32.const 3
                              i32.shl
                              local.tee 1
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 1
                              local.get 4
                              i32.add
                              local.tee 1
                              local.get 1
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 7
                            i32.const 3644
                            i32.load
                            local.tee 10
                            i32.le_u
                            br_if 1 (;@11;)
                            local.get 1
                            if  ;; label = @13
                              block  ;; label = @14
                                i32.const 2
                                local.get 2
                                i32.shl
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.or
                                local.get 1
                                local.get 2
                                i32.shl
                                i32.and
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.and
                                i32.const 1
                                i32.sub
                                local.tee 0
                                local.get 0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 2
                                i32.shr_u
                                local.tee 1
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 0
                                local.get 2
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                i32.add
                                local.tee 3
                                i32.const 3
                                i32.shl
                                local.tee 0
                                i32.const 3684
                                i32.add
                                i32.load
                                local.tee 4
                                i32.load offset=8
                                local.tee 1
                                local.get 0
                                i32.const 3676
                                i32.add
                                local.tee 0
                                i32.eq
                                if  ;; label = @15
                                  i32.const 3636
                                  local.get 6
                                  i32.const -2
                                  local.get 3
                                  i32.rotl
                                  i32.and
                                  local.tee 6
                                  i32.store
                                  br 1 (;@14;)
                                end
                                local.get 1
                                local.get 0
                                i32.store offset=12
                                local.get 0
                                local.get 1
                                i32.store offset=8
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 0
                              local.get 4
                              local.get 7
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 7
                              i32.add
                              local.tee 2
                              local.get 3
                              i32.const 3
                              i32.shl
                              local.tee 1
                              local.get 7
                              i32.sub
                              local.tee 3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 1
                              local.get 4
                              i32.add
                              local.get 3
                              i32.store
                              local.get 10
                              if  ;; label = @14
                                local.get 10
                                i32.const 3
                                i32.shr_u
                                local.tee 1
                                i32.const 3
                                i32.shl
                                i32.const 3676
                                i32.add
                                local.set 5
                                i32.const 3656
                                i32.load
                                local.set 4
                                block (result i32)  ;; label = @15
                                  local.get 6
                                  i32.const 1
                                  local.get 1
                                  i32.shl
                                  local.tee 1
                                  i32.and
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 3636
                                    local.get 1
                                    local.get 6
                                    i32.or
                                    i32.store
                                    local.get 5
                                    br 1 (;@15;)
                                  end
                                  local.get 5
                                  i32.load offset=8
                                end
                                local.set 1
                                local.get 5
                                local.get 4
                                i32.store offset=8
                                local.get 1
                                local.get 4
                                i32.store offset=12
                                local.get 4
                                local.get 5
                                i32.store offset=12
                                local.get 4
                                local.get 1
                                i32.store offset=8
                              end
                              i32.const 3656
                              local.get 2
                              i32.store
                              i32.const 3644
                              local.get 3
                              i32.store
                              br 12 (;@1;)
                            end
                            i32.const 3640
                            i32.load
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const 1
                            i32.sub
                            local.tee 0
                            local.get 0
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 2
                            i32.shr_u
                            local.tee 1
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 0
                            local.get 2
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            local.tee 1
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 0
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            local.tee 1
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 0
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            local.tee 1
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 0
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 3940
                            i32.add
                            i32.load
                            local.tee 1
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 7
                            i32.sub
                            local.set 3
                            local.get 1
                            local.set 2
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 2
                                i32.load offset=16
                                local.tee 0
                                i32.eqz
                                if  ;; label = @15
                                  local.get 2
                                  i32.load offset=20
                                  local.tee 0
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                local.get 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 7
                                i32.sub
                                local.tee 2
                                local.get 3
                                local.get 2
                                local.get 3
                                i32.lt_u
                                local.tee 2
                                select
                                local.set 3
                                local.get 0
                                local.get 1
                                local.get 2
                                select
                                local.set 1
                                local.get 0
                                local.set 2
                                br 1 (;@13;)
                              end
                            end
                            local.get 1
                            i32.load offset=24
                            local.set 8
                            local.get 1
                            local.get 1
                            i32.load offset=12
                            local.tee 4
                            i32.ne
                            if  ;; label = @13
                              local.get 1
                              i32.load offset=8
                              local.tee 0
                              i32.const 3652
                              i32.load
                              i32.lt_u
                              drop
                              local.get 0
                              local.get 4
                              i32.store offset=12
                              local.get 4
                              local.get 0
                              i32.store offset=8
                              br 11 (;@2;)
                            end
                            local.get 1
                            i32.const 20
                            i32.add
                            local.tee 2
                            i32.load
                            local.tee 0
                            i32.eqz
                            if  ;; label = @13
                              local.get 1
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.set 2
                            end
                            loop  ;; label = @13
                              local.get 2
                              local.set 5
                              local.get 0
                              local.tee 4
                              i32.const 20
                              i32.add
                              local.tee 2
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 4
                              i32.const 16
                              i32.add
                              local.set 2
                              local.get 4
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                            local.get 5
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 7
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 11
                          i32.add
                          local.tee 0
                          i32.const -8
                          i32.and
                          local.set 7
                          i32.const 3640
                          i32.load
                          local.tee 9
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 7
                          i32.sub
                          local.set 3
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block (result i32)  ;; label = @15
                                  i32.const 0
                                  local.get 7
                                  i32.const 256
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  drop
                                  i32.const 31
                                  local.get 7
                                  i32.const 16777215
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  drop
                                  local.get 0
                                  i32.const 8
                                  i32.shr_u
                                  local.tee 0
                                  local.get 0
                                  i32.const 1048320
                                  i32.add
                                  i32.const 16
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 2
                                  i32.shl
                                  local.tee 0
                                  local.get 0
                                  i32.const 520192
                                  i32.add
                                  i32.const 16
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 1
                                  i32.shl
                                  local.tee 0
                                  local.get 0
                                  i32.const 245760
                                  i32.add
                                  i32.const 16
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 0
                                  i32.shl
                                  i32.const 15
                                  i32.shr_u
                                  local.get 1
                                  local.get 2
                                  i32.or
                                  local.get 0
                                  i32.or
                                  i32.sub
                                  local.tee 0
                                  i32.const 1
                                  i32.shl
                                  local.get 7
                                  local.get 0
                                  i32.const 21
                                  i32.add
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  i32.or
                                  i32.const 28
                                  i32.add
                                end
                                local.tee 6
                                i32.const 2
                                i32.shl
                                i32.const 3940
                                i32.add
                                i32.load
                                local.tee 2
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 0
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 0
                                local.get 7
                                i32.const 0
                                i32.const 25
                                local.get 6
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 6
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 1
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 2
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 7
                                    i32.sub
                                    local.tee 5
                                    local.get 3
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 2
                                    local.set 4
                                    local.get 5
                                    local.tee 3
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 3
                                    local.get 2
                                    local.set 0
                                    br 3 (;@13;)
                                  end
                                  local.get 0
                                  local.get 2
                                  i32.load offset=20
                                  local.tee 5
                                  local.get 5
                                  local.get 2
                                  local.get 1
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.load offset=16
                                  local.tee 2
                                  i32.eq
                                  select
                                  local.get 0
                                  local.get 5
                                  select
                                  local.set 0
                                  local.get 1
                                  i32.const 1
                                  i32.shl
                                  local.set 1
                                  local.get 2
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              local.get 4
                              i32.or
                              i32.eqz
                              if  ;; label = @14
                                i32.const 0
                                local.set 4
                                i32.const 2
                                local.get 6
                                i32.shl
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.or
                                local.get 9
                                i32.and
                                local.tee 0
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.and
                                i32.const 1
                                i32.sub
                                local.tee 0
                                local.get 0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 2
                                i32.shr_u
                                local.tee 1
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 0
                                local.get 2
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 3940
                                i32.add
                                i32.load
                                local.set 0
                              end
                              local.get 0
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 7
                              i32.sub
                              local.tee 1
                              local.get 3
                              i32.lt_u
                              local.set 2
                              local.get 1
                              local.get 3
                              local.get 2
                              select
                              local.set 3
                              local.get 0
                              local.get 4
                              local.get 2
                              select
                              local.set 4
                              local.get 0
                              i32.load offset=16
                              local.tee 1
                              if (result i32)  ;; label = @14
                                local.get 1
                              else
                                local.get 0
                                i32.load offset=20
                              end
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 4
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 3644
                          i32.load
                          local.get 7
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 4
                          i32.load offset=24
                          local.set 6
                          local.get 4
                          local.get 4
                          i32.load offset=12
                          local.tee 1
                          i32.ne
                          if  ;; label = @12
                            local.get 4
                            i32.load offset=8
                            local.tee 0
                            i32.const 3652
                            i32.load
                            i32.lt_u
                            drop
                            local.get 0
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 0
                            i32.store offset=8
                            br 9 (;@3;)
                          end
                          local.get 4
                          i32.const 20
                          i32.add
                          local.tee 2
                          i32.load
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            local.get 4
                            i32.load offset=16
                            local.tee 0
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 4
                            i32.const 16
                            i32.add
                            local.set 2
                          end
                          loop  ;; label = @12
                            local.get 2
                            local.set 5
                            local.get 0
                            local.tee 1
                            i32.const 20
                            i32.add
                            local.tee 2
                            i32.load
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 1
                            i32.const 16
                            i32.add
                            local.set 2
                            local.get 1
                            i32.load offset=16
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        local.get 7
                        i32.const 3644
                        i32.load
                        local.tee 2
                        i32.le_u
                        if  ;; label = @11
                          i32.const 3656
                          i32.load
                          local.set 3
                          block  ;; label = @12
                            local.get 2
                            local.get 7
                            i32.sub
                            local.tee 1
                            i32.const 16
                            i32.ge_u
                            if  ;; label = @13
                              i32.const 3644
                              local.get 1
                              i32.store
                              i32.const 3656
                              local.get 3
                              local.get 7
                              i32.add
                              local.tee 0
                              i32.store
                              local.get 0
                              local.get 1
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 2
                              local.get 3
                              i32.add
                              local.get 1
                              i32.store
                              local.get 3
                              local.get 7
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            i32.const 3656
                            i32.const 0
                            i32.store
                            i32.const 3644
                            i32.const 0
                            i32.store
                            local.get 3
                            local.get 2
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 2
                            local.get 3
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                          end
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        local.get 7
                        i32.const 3648
                        i32.load
                        local.tee 8
                        i32.lt_u
                        if  ;; label = @11
                          i32.const 3648
                          local.get 8
                          local.get 7
                          i32.sub
                          local.tee 1
                          i32.store
                          i32.const 3660
                          i32.const 3660
                          i32.load
                          local.tee 2
                          local.get 7
                          i32.add
                          local.tee 0
                          i32.store
                          local.get 0
                          local.get 1
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 2
                          local.get 7
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 2
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        i32.const 0
                        local.set 0
                        local.get 7
                        i32.const 47
                        i32.add
                        local.tee 9
                        block (result i32)  ;; label = @11
                          i32.const 4108
                          i32.load
                          if  ;; label = @12
                            i32.const 4116
                            i32.load
                            br 1 (;@11;)
                          end
                          i32.const 4120
                          i64.const -1
                          i64.store align=4
                          i32.const 4112
                          i64.const 17592186048512
                          i64.store align=4
                          i32.const 4108
                          local.get 11
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store
                          i32.const 4128
                          i32.const 0
                          i32.store
                          i32.const 4080
                          i32.const 0
                          i32.store
                          i32.const 4096
                        end
                        local.tee 1
                        i32.add
                        local.tee 6
                        i32.const 0
                        local.get 1
                        i32.sub
                        local.tee 5
                        i32.and
                        local.tee 2
                        local.get 7
                        i32.le_u
                        br_if 9 (;@1;)
                        i32.const 4076
                        i32.load
                        local.tee 4
                        if  ;; label = @11
                          i32.const 4068
                          i32.load
                          local.tee 3
                          local.get 2
                          i32.add
                          local.tee 1
                          local.get 3
                          i32.le_u
                          local.get 1
                          local.get 4
                          i32.gt_u
                          i32.or
                          br_if 10 (;@1;)
                        end
                        i32.const 4080
                        i32.load8_u
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 3660
                            i32.load
                            local.tee 3
                            if  ;; label = @13
                              i32.const 4084
                              local.set 0
                              loop  ;; label = @14
                                local.get 3
                                local.get 0
                                i32.load
                                local.tee 1
                                i32.ge_u
                                if  ;; label = @15
                                  local.get 1
                                  local.get 0
                                  i32.load offset=4
                                  i32.add
                                  local.get 3
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 0
                                i32.load offset=8
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call $sbrk
                            local.tee 1
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 2
                            local.set 6
                            i32.const 4112
                            i32.load
                            local.tee 3
                            i32.const 1
                            i32.sub
                            local.tee 0
                            local.get 1
                            i32.and
                            if  ;; label = @13
                              local.get 2
                              local.get 1
                              i32.sub
                              local.get 0
                              local.get 1
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              i32.add
                              local.set 6
                            end
                            local.get 6
                            local.get 7
                            i32.le_u
                            local.get 6
                            i32.const 2147483646
                            i32.gt_u
                            i32.or
                            br_if 5 (;@7;)
                            i32.const 4076
                            i32.load
                            local.tee 4
                            if  ;; label = @13
                              i32.const 4068
                              i32.load
                              local.tee 3
                              local.get 6
                              i32.add
                              local.tee 0
                              local.get 3
                              i32.le_u
                              local.get 0
                              local.get 4
                              i32.gt_u
                              i32.or
                              br_if 6 (;@7;)
                            end
                            local.get 6
                            call $sbrk
                            local.tee 0
                            local.get 1
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 6
                          local.get 8
                          i32.sub
                          local.get 5
                          i32.and
                          local.tee 6
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 6
                          call $sbrk
                          local.tee 1
                          local.get 0
                          i32.load
                          local.get 0
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 1
                          local.set 0
                        end
                        local.get 0
                        i32.const -1
                        i32.eq
                        local.get 7
                        i32.const 48
                        i32.add
                        local.get 6
                        i32.le_u
                        i32.or
                        i32.eqz
                        if  ;; label = @11
                          i32.const 4116
                          i32.load
                          local.tee 1
                          local.get 9
                          local.get 6
                          i32.sub
                          i32.add
                          i32.const 0
                          local.get 1
                          i32.sub
                          i32.and
                          local.tee 1
                          i32.const 2147483646
                          i32.gt_u
                          if  ;; label = @12
                            local.get 0
                            local.set 1
                            br 7 (;@5;)
                          end
                          local.get 1
                          call $sbrk
                          i32.const -1
                          i32.ne
                          if  ;; label = @12
                            local.get 1
                            local.get 6
                            i32.add
                            local.set 6
                            local.get 0
                            local.set 1
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 6
                          i32.sub
                          call $sbrk
                          drop
                          br 4 (;@7;)
                        end
                        local.get 0
                        local.tee 1
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 4
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 1
                    br 5 (;@3;)
                  end
                  local.get 1
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 4080
                i32.const 4080
                i32.load
                i32.const 4
                i32.or
                i32.store
              end
              local.get 2
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 2
              call $sbrk
              local.tee 1
              i32.const -1
              i32.eq
              i32.const 0
              call $sbrk
              local.tee 0
              i32.const -1
              i32.eq
              i32.or
              local.get 0
              local.get 1
              i32.le_u
              i32.or
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              i32.sub
              local.tee 6
              local.get 7
              i32.const 40
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 4068
            i32.const 4068
            i32.load
            local.get 6
            i32.add
            local.tee 0
            i32.store
            i32.const 4072
            i32.load
            local.get 0
            i32.lt_u
            if  ;; label = @5
              i32.const 4072
              local.get 0
              i32.store
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 3660
                  i32.load
                  local.tee 5
                  if  ;; label = @8
                    i32.const 4084
                    local.set 0
                    loop  ;; label = @9
                      local.get 1
                      local.get 0
                      i32.load
                      local.tee 3
                      local.get 0
                      i32.load offset=4
                      local.tee 2
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 0 (;@9;)
                    end
                    br 2 (;@6;)
                  end
                  i32.const 3652
                  i32.load
                  local.tee 0
                  i32.const 0
                  local.get 0
                  local.get 1
                  i32.le_u
                  select
                  i32.eqz
                  if  ;; label = @8
                    i32.const 3652
                    local.get 1
                    i32.store
                  end
                  i32.const 0
                  local.set 0
                  i32.const 4088
                  local.get 6
                  i32.store
                  i32.const 4084
                  local.get 1
                  i32.store
                  i32.const 3668
                  i32.const -1
                  i32.store
                  i32.const 3672
                  i32.const 4108
                  i32.load
                  i32.store
                  i32.const 4096
                  i32.const 0
                  i32.store
                  loop  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.shl
                    local.tee 3
                    i32.const 3684
                    i32.add
                    local.get 3
                    i32.const 3676
                    i32.add
                    local.tee 2
                    i32.store
                    local.get 3
                    i32.const 3688
                    i32.add
                    local.get 2
                    i32.store
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.const 32
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 3648
                  local.get 6
                  i32.const 40
                  i32.sub
                  local.tee 3
                  i32.const -8
                  local.get 1
                  i32.sub
                  i32.const 7
                  i32.and
                  i32.const 0
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.const 7
                  i32.and
                  select
                  local.tee 0
                  i32.sub
                  local.tee 2
                  i32.store
                  i32.const 3660
                  local.get 0
                  local.get 1
                  i32.add
                  local.tee 0
                  i32.store
                  local.get 0
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 3
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 3664
                  i32.const 4124
                  i32.load
                  i32.store
                  br 2 (;@5;)
                end
                local.get 0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                local.get 3
                local.get 5
                i32.gt_u
                i32.or
                local.get 1
                local.get 5
                i32.le_u
                i32.or
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                local.get 6
                i32.add
                i32.store offset=4
                i32.const 3660
                local.get 5
                i32.const -8
                local.get 5
                i32.sub
                i32.const 7
                i32.and
                i32.const 0
                local.get 5
                i32.const 8
                i32.add
                i32.const 7
                i32.and
                select
                local.tee 0
                i32.add
                local.tee 2
                i32.store
                i32.const 3648
                i32.const 3648
                i32.load
                local.get 6
                i32.add
                local.tee 1
                local.get 0
                i32.sub
                local.tee 0
                i32.store
                local.get 2
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 5
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 3664
                i32.const 4124
                i32.load
                i32.store
                br 1 (;@5;)
              end
              i32.const 3652
              i32.load
              local.get 1
              i32.gt_u
              if  ;; label = @6
                i32.const 3652
                local.get 1
                i32.store
              end
              local.get 1
              local.get 6
              i32.add
              local.set 2
              i32.const 4084
              local.set 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 2
                            local.get 0
                            i32.load
                            i32.ne
                            if  ;; label = @13
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 4084
                        local.set 0
                        loop  ;; label = @11
                          local.get 5
                          local.get 0
                          i32.load
                          local.tee 2
                          i32.ge_u
                          if  ;; label = @12
                            local.get 2
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 4
                            local.get 5
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 0 (;@11;)
                        end
                        unreachable
                      end
                      local.get 0
                      local.get 1
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 6
                      i32.add
                      i32.store offset=4
                      local.get 1
                      i32.const -8
                      local.get 1
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 1
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 9
                      local.get 7
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 2
                      i32.const -8
                      local.get 2
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 2
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 6
                      local.get 7
                      local.get 9
                      i32.add
                      local.tee 8
                      i32.sub
                      local.set 2
                      local.get 5
                      local.get 6
                      i32.eq
                      if  ;; label = @10
                        i32.const 3660
                        local.get 8
                        i32.store
                        i32.const 3648
                        i32.const 3648
                        i32.load
                        local.get 2
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 8
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      local.get 6
                      i32.const 3656
                      i32.load
                      i32.eq
                      if  ;; label = @10
                        i32.const 3656
                        local.get 8
                        i32.store
                        i32.const 3644
                        i32.const 3644
                        i32.load
                        local.get 2
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 8
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 8
                        i32.add
                        local.get 0
                        i32.store
                        br 3 (;@7;)
                      end
                      local.get 6
                      i32.load offset=4
                      local.tee 0
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.eq
                      if  ;; label = @10
                        local.get 0
                        i32.const -8
                        i32.and
                        local.set 5
                        block  ;; label = @11
                          local.get 0
                          i32.const 255
                          i32.le_u
                          if  ;; label = @12
                            local.get 6
                            i32.load offset=8
                            local.tee 3
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            local.tee 0
                            i32.const 3
                            i32.shl
                            i32.const 3676
                            i32.add
                            i32.eq
                            drop
                            local.get 3
                            local.get 6
                            i32.load offset=12
                            local.tee 1
                            i32.eq
                            if  ;; label = @13
                              i32.const 3636
                              i32.const 3636
                              i32.load
                              i32.const -2
                              local.get 0
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 3
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 3
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          local.get 6
                          i32.load offset=24
                          local.set 7
                          block  ;; label = @12
                            local.get 6
                            local.get 6
                            i32.load offset=12
                            local.tee 1
                            i32.ne
                            if  ;; label = @13
                              local.get 6
                              i32.load offset=8
                              local.tee 0
                              local.get 1
                              i32.store offset=12
                              local.get 1
                              local.get 0
                              i32.store offset=8
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 1
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 0
                              local.set 4
                              local.get 3
                              local.tee 1
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.set 0
                              local.get 1
                              i32.load offset=16
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            local.get 4
                            i32.const 0
                            i32.store
                          end
                          local.get 7
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 6
                            local.get 6
                            i32.load offset=28
                            local.tee 3
                            i32.const 2
                            i32.shl
                            i32.const 3940
                            i32.add
                            local.tee 0
                            i32.load
                            i32.eq
                            if  ;; label = @13
                              local.get 0
                              local.get 1
                              i32.store
                              local.get 1
                              br_if 1 (;@12;)
                              i32.const 3640
                              i32.const 3640
                              i32.load
                              i32.const -2
                              local.get 3
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 7
                            i32.const 16
                            i32.const 20
                            local.get 7
                            i32.load offset=16
                            local.get 6
                            i32.eq
                            select
                            i32.add
                            local.get 1
                            i32.store
                            local.get 1
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 1
                          local.get 7
                          i32.store offset=24
                          local.get 6
                          i32.load offset=16
                          local.tee 0
                          if  ;; label = @12
                            local.get 1
                            local.get 0
                            i32.store offset=16
                            local.get 0
                            local.get 1
                            i32.store offset=24
                          end
                          local.get 6
                          i32.load offset=20
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          local.get 0
                          i32.store offset=20
                          local.get 0
                          local.get 1
                          i32.store offset=24
                        end
                        local.get 5
                        local.get 6
                        i32.add
                        local.set 6
                        local.get 2
                        local.get 5
                        i32.add
                        local.set 2
                      end
                      local.get 6
                      local.get 6
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 8
                      local.get 2
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      local.get 8
                      i32.add
                      local.get 2
                      i32.store
                      local.get 2
                      i32.const 255
                      i32.le_u
                      if  ;; label = @10
                        local.get 2
                        i32.const 3
                        i32.shr_u
                        local.tee 0
                        i32.const 3
                        i32.shl
                        i32.const 3676
                        i32.add
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 3636
                          i32.load
                          local.tee 1
                          i32.const 1
                          local.get 0
                          i32.shl
                          local.tee 0
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 3636
                            local.get 0
                            local.get 1
                            i32.or
                            i32.store
                            local.get 2
                            br 1 (;@11;)
                          end
                          local.get 2
                          i32.load offset=8
                        end
                        local.set 0
                        local.get 2
                        local.get 8
                        i32.store offset=8
                        local.get 0
                        local.get 8
                        i32.store offset=12
                        local.get 8
                        local.get 2
                        i32.store offset=12
                        local.get 8
                        local.get 0
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 31
                      local.set 0
                      local.get 2
                      i32.const 16777215
                      i32.le_u
                      if  ;; label = @10
                        local.get 2
                        i32.const 8
                        i32.shr_u
                        local.tee 0
                        local.get 0
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 3
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 1
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 0
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 1
                        local.get 3
                        i32.or
                        local.get 0
                        i32.or
                        i32.sub
                        local.tee 0
                        i32.const 1
                        i32.shl
                        local.get 2
                        local.get 0
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 0
                      end
                      local.get 8
                      local.get 0
                      i32.store offset=28
                      local.get 8
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 0
                      i32.const 2
                      i32.shl
                      i32.const 3940
                      i32.add
                      local.set 4
                      block  ;; label = @10
                        i32.const 3640
                        i32.load
                        local.tee 3
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 1
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 3640
                          local.get 1
                          local.get 3
                          i32.or
                          i32.store
                          local.get 4
                          local.get 8
                          i32.store
                          local.get 8
                          local.get 4
                          i32.store offset=24
                          br 1 (;@10;)
                        end
                        local.get 2
                        i32.const 0
                        i32.const 25
                        local.get 0
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get 0
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set 0
                        local.get 4
                        i32.load
                        local.set 1
                        loop  ;; label = @11
                          local.get 1
                          local.tee 3
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 2
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 0
                          i32.const 29
                          i32.shr_u
                          local.set 1
                          local.get 0
                          i32.const 1
                          i32.shl
                          local.set 0
                          local.get 3
                          local.get 1
                          i32.const 4
                          i32.and
                          i32.add
                          local.tee 4
                          i32.load offset=16
                          local.tee 1
                          br_if 0 (;@11;)
                        end
                        local.get 4
                        local.get 8
                        i32.store offset=16
                        local.get 8
                        local.get 3
                        i32.store offset=24
                      end
                      local.get 8
                      local.get 8
                      i32.store offset=12
                      local.get 8
                      local.get 8
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    i32.const 3648
                    local.get 6
                    i32.const 40
                    i32.sub
                    local.tee 3
                    i32.const -8
                    local.get 1
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 1
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    local.tee 0
                    i32.sub
                    local.tee 2
                    i32.store
                    i32.const 3660
                    local.get 0
                    local.get 1
                    i32.add
                    local.tee 0
                    i32.store
                    local.get 0
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 3664
                    i32.const 4124
                    i32.load
                    i32.store
                    local.get 5
                    local.get 4
                    i32.const 39
                    local.get 4
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 4
                    i32.const 39
                    i32.sub
                    i32.const 7
                    i32.and
                    select
                    i32.add
                    i32.const 47
                    i32.sub
                    local.tee 0
                    local.get 0
                    local.get 5
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 2
                    i32.const 27
                    i32.store offset=4
                    local.get 2
                    i32.const 4092
                    i64.load align=4
                    i64.store offset=16 align=4
                    local.get 2
                    i32.const 4084
                    i64.load align=4
                    i64.store offset=8 align=4
                    i32.const 4092
                    local.get 2
                    i32.const 8
                    i32.add
                    i32.store
                    i32.const 4088
                    local.get 6
                    i32.store
                    i32.const 4084
                    local.get 1
                    i32.store
                    i32.const 4096
                    i32.const 0
                    i32.store
                    local.get 2
                    i32.const 24
                    i32.add
                    local.set 0
                    loop  ;; label = @9
                      local.get 0
                      i32.const 7
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 1
                      local.get 0
                      i32.const 4
                      i32.add
                      local.set 0
                      local.get 1
                      local.get 4
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 2
                    local.get 5
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 2
                    local.get 2
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 5
                    local.get 2
                    local.get 5
                    i32.sub
                    local.tee 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 2
                    local.get 4
                    i32.store
                    local.get 4
                    i32.const 255
                    i32.le_u
                    if  ;; label = @9
                      local.get 4
                      i32.const 3
                      i32.shr_u
                      local.tee 0
                      i32.const 3
                      i32.shl
                      i32.const 3676
                      i32.add
                      local.set 2
                      block (result i32)  ;; label = @10
                        i32.const 3636
                        i32.load
                        local.tee 1
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 0
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 3636
                          local.get 0
                          local.get 1
                          i32.or
                          i32.store
                          local.get 2
                          br 1 (;@10;)
                        end
                        local.get 2
                        i32.load offset=8
                      end
                      local.set 0
                      local.get 2
                      local.get 5
                      i32.store offset=8
                      local.get 0
                      local.get 5
                      i32.store offset=12
                      local.get 5
                      local.get 2
                      i32.store offset=12
                      local.get 5
                      local.get 0
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 31
                    local.set 0
                    local.get 5
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 4
                    i32.const 16777215
                    i32.le_u
                    if  ;; label = @9
                      local.get 4
                      i32.const 8
                      i32.shr_u
                      local.tee 0
                      local.get 0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 2
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 1
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 0
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 1
                      local.get 2
                      i32.or
                      local.get 0
                      i32.or
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.shl
                      local.get 4
                      local.get 0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 0
                    end
                    local.get 5
                    local.get 0
                    i32.store offset=28
                    local.get 0
                    i32.const 2
                    i32.shl
                    i32.const 3940
                    i32.add
                    local.set 3
                    block  ;; label = @9
                      i32.const 3640
                      i32.load
                      local.tee 2
                      i32.const 1
                      local.get 0
                      i32.shl
                      local.tee 1
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 3640
                        local.get 1
                        local.get 2
                        i32.or
                        i32.store
                        local.get 3
                        local.get 5
                        i32.store
                        local.get 5
                        local.get 3
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 4
                      i32.const 0
                      i32.const 25
                      local.get 0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 0
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 0
                      local.get 3
                      i32.load
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        local.tee 2
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 4
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 1
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 2
                        local.get 1
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 3
                        i32.load offset=16
                        local.tee 1
                        br_if 0 (;@10;)
                      end
                      local.get 3
                      local.get 5
                      i32.store offset=16
                      local.get 5
                      local.get 2
                      i32.store offset=24
                    end
                    local.get 5
                    local.get 5
                    i32.store offset=12
                    local.get 5
                    local.get 5
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 3
                  i32.load offset=8
                  local.tee 0
                  local.get 8
                  i32.store offset=12
                  local.get 3
                  local.get 8
                  i32.store offset=8
                  local.get 8
                  i32.const 0
                  i32.store offset=24
                  local.get 8
                  local.get 3
                  i32.store offset=12
                  local.get 8
                  local.get 0
                  i32.store offset=8
                end
                local.get 9
                i32.const 8
                i32.add
                local.set 0
                br 5 (;@1;)
              end
              local.get 2
              i32.load offset=8
              local.tee 0
              local.get 5
              i32.store offset=12
              local.get 2
              local.get 5
              i32.store offset=8
              local.get 5
              i32.const 0
              i32.store offset=24
              local.get 5
              local.get 2
              i32.store offset=12
              local.get 5
              local.get 0
              i32.store offset=8
            end
            i32.const 3648
            i32.load
            local.tee 0
            local.get 7
            i32.le_u
            br_if 0 (;@4;)
            i32.const 3648
            local.get 0
            local.get 7
            i32.sub
            local.tee 1
            i32.store
            i32.const 3660
            i32.const 3660
            i32.load
            local.tee 2
            local.get 7
            i32.add
            local.tee 0
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 7
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 2
            i32.const 8
            i32.add
            local.set 0
            br 3 (;@1;)
          end
          i32.const 3460
          i32.const 48
          i32.store
          i32.const 0
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 4
            i32.load offset=28
            local.tee 2
            i32.const 2
            i32.shl
            i32.const 3940
            i32.add
            local.tee 0
            i32.load
            local.get 4
            i32.eq
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 3640
              local.get 9
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              local.tee 9
              i32.store
              br 2 (;@3;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 4
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 6
          i32.store offset=24
          local.get 4
          i32.load offset=16
          local.tee 0
          if  ;; label = @4
            local.get 1
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 1
            i32.store offset=24
          end
          local.get 4
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 1
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 3
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 4
            local.get 3
            local.get 7
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 4
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 4
          local.get 7
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 4
          local.get 7
          i32.add
          local.tee 5
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          local.get 5
          i32.add
          local.get 3
          i32.store
          local.get 3
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.const 3
            i32.shr_u
            local.tee 0
            i32.const 3
            i32.shl
            i32.const 3676
            i32.add
            local.set 2
            block (result i32)  ;; label = @5
              i32.const 3636
              i32.load
              local.tee 1
              i32.const 1
              local.get 0
              i32.shl
              local.tee 0
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 3636
                local.get 0
                local.get 1
                i32.or
                i32.store
                local.get 2
                br 1 (;@5;)
              end
              local.get 2
              i32.load offset=8
            end
            local.set 0
            local.get 2
            local.get 5
            i32.store offset=8
            local.get 0
            local.get 5
            i32.store offset=12
            local.get 5
            local.get 2
            i32.store offset=12
            local.get 5
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          local.get 3
          i32.const 16777215
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.const 8
            i32.shr_u
            local.tee 0
            local.get 0
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 2
            i32.shl
            local.tee 0
            local.get 0
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 1
            i32.shl
            local.tee 0
            local.get 0
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 0
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 1
            local.get 2
            i32.or
            local.get 0
            i32.or
            i32.sub
            local.tee 0
            i32.const 1
            i32.shl
            local.get 3
            local.get 0
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 0
          end
          local.get 5
          local.get 0
          i32.store offset=28
          local.get 5
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 3940
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              i32.const 1
              local.get 0
              i32.shl
              local.tee 2
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 3640
                local.get 2
                local.get 9
                i32.or
                i32.store
                local.get 1
                local.get 5
                i32.store
                br 1 (;@5;)
              end
              local.get 3
              i32.const 0
              i32.const 25
              local.get 0
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 0
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 0
              local.get 1
              i32.load
              local.set 7
              loop  ;; label = @6
                local.get 7
                local.tee 1
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 3
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 2
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 1
                local.get 2
                i32.const 4
                i32.and
                i32.add
                local.tee 2
                i32.load offset=16
                local.tee 7
                br_if 0 (;@6;)
              end
              local.get 2
              local.get 5
              i32.store offset=16
            end
            local.get 5
            local.get 1
            i32.store offset=24
            local.get 5
            local.get 5
            i32.store offset=12
            local.get 5
            local.get 5
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.tee 0
          local.get 5
          i32.store offset=12
          local.get 1
          local.get 5
          i32.store offset=8
          local.get 5
          i32.const 0
          i32.store offset=24
          local.get 5
          local.get 1
          i32.store offset=12
          local.get 5
          local.get 0
          i32.store offset=8
        end
        local.get 4
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.load offset=28
          local.tee 2
          i32.const 2
          i32.shl
          i32.const 3940
          i32.add
          local.tee 0
          i32.load
          local.get 1
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 4
            i32.store
            local.get 4
            br_if 1 (;@3;)
            i32.const 3640
            local.get 9
            i32.const -2
            local.get 2
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          local.get 8
          i32.const 16
          i32.const 20
          local.get 8
          i32.load offset=16
          local.get 1
          i32.eq
          select
          i32.add
          local.get 4
          i32.store
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 8
        i32.store offset=24
        local.get 1
        i32.load offset=16
        local.tee 0
        if  ;; label = @3
          local.get 4
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 4
          i32.store offset=24
        end
        local.get 1
        i32.load offset=20
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store offset=20
        local.get 0
        local.get 4
        i32.store offset=24
      end
      block  ;; label = @2
        local.get 3
        i32.const 15
        i32.le_u
        if  ;; label = @3
          local.get 1
          local.get 3
          local.get 7
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 1
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 1
        local.get 7
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 1
        local.get 7
        i32.add
        local.tee 2
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 2
        local.get 3
        i32.add
        local.get 3
        i32.store
        local.get 10
        if  ;; label = @3
          local.get 10
          i32.const 3
          i32.shr_u
          local.tee 0
          i32.const 3
          i32.shl
          i32.const 3676
          i32.add
          local.set 5
          i32.const 3656
          i32.load
          local.set 4
          block (result i32)  ;; label = @4
            i32.const 1
            local.get 0
            i32.shl
            local.tee 0
            local.get 6
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 3636
              local.get 0
              local.get 6
              i32.or
              i32.store
              local.get 5
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=8
          end
          local.set 0
          local.get 5
          local.get 4
          i32.store offset=8
          local.get 0
          local.get 4
          i32.store offset=12
          local.get 4
          local.get 5
          i32.store offset=12
          local.get 4
          local.get 0
          i32.store offset=8
        end
        i32.const 3656
        local.get 2
        i32.store
        i32.const 3644
        local.get 3
        i32.store
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 11
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $dlfree (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.sub
      local.tee 3
      local.get 0
      i32.const 4
      i32.sub
      i32.load
      local.tee 1
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 3
        i32.load
        local.tee 1
        i32.sub
        local.tee 3
        i32.const 3652
        i32.load
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.add
        local.set 0
        local.get 3
        i32.const 3656
        i32.load
        i32.ne
        if  ;; label = @3
          local.get 1
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.load offset=8
            local.tee 2
            local.get 1
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 3676
            i32.add
            i32.eq
            drop
            local.get 2
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.eq
            if  ;; label = @5
              i32.const 3636
              i32.const 3636
              i32.load
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 2
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=8
            br 2 (;@2;)
          end
          local.get 3
          i32.load offset=24
          local.set 6
          block  ;; label = @4
            local.get 3
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.load offset=8
              local.tee 2
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 3
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 3
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 7
              local.get 4
              local.tee 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.set 2
              local.get 1
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 7
            i32.const 0
            i32.store
          end
          local.get 6
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 3
            local.get 3
            i32.load offset=28
            local.tee 2
            i32.const 2
            i32.shl
            i32.const 3940
            i32.add
            local.tee 4
            i32.load
            i32.eq
            if  ;; label = @5
              local.get 4
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 3640
              i32.const 3640
              i32.load
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 3
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 1
          local.get 6
          i32.store offset=24
          local.get 3
          i32.load offset=16
          local.tee 2
          if  ;; label = @4
            local.get 1
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          local.get 2
          i32.store offset=20
          local.get 2
          local.get 1
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        i32.const 3644
        local.get 0
        i32.store
        local.get 5
        local.get 1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 3
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        i32.add
        local.get 0
        i32.store
        return
      end
      local.get 3
      local.get 5
      i32.ge_u
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=4
      local.tee 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 2
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 5
          i32.const 3660
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3660
            local.get 3
            i32.store
            i32.const 3648
            i32.const 3648
            i32.load
            local.get 0
            i32.add
            local.tee 0
            i32.store
            local.get 3
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 3
            i32.const 3656
            i32.load
            i32.ne
            br_if 3 (;@1;)
            i32.const 3644
            i32.const 0
            i32.store
            i32.const 3656
            i32.const 0
            i32.store
            return
          end
          local.get 5
          i32.const 3656
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3656
            local.get 3
            i32.store
            i32.const 3644
            i32.const 3644
            i32.load
            local.get 0
            i32.add
            local.tee 0
            i32.store
            local.get 3
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 1
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 5
              i32.load offset=8
              local.tee 2
              local.get 1
              i32.const 3
              i32.shr_u
              local.tee 4
              i32.const 3
              i32.shl
              i32.const 3676
              i32.add
              i32.eq
              drop
              local.get 2
              local.get 5
              i32.load offset=12
              local.tee 1
              i32.eq
              if  ;; label = @6
                i32.const 3636
                i32.const 3636
                i32.load
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 2
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=24
            local.set 6
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=12
              local.tee 1
              i32.ne
              if  ;; label = @6
                local.get 5
                i32.load offset=8
                local.tee 2
                i32.const 3652
                i32.load
                i32.lt_u
                drop
                local.get 2
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 2
                i32.store offset=8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 5
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 1
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 7
                local.get 4
                local.tee 1
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 1
                i32.const 16
                i32.add
                local.set 2
                local.get 1
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 0
              i32.store
            end
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=28
              local.tee 2
              i32.const 2
              i32.shl
              i32.const 3940
              i32.add
              local.tee 4
              i32.load
              i32.eq
              if  ;; label = @6
                local.get 4
                local.get 1
                i32.store
                local.get 1
                br_if 1 (;@5;)
                i32.const 3640
                i32.const 3640
                i32.load
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 6
              i32.const 16
              i32.const 20
              local.get 6
              i32.load offset=16
              local.get 5
              i32.eq
              select
              i32.add
              local.get 1
              i32.store
              local.get 1
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 1
            local.get 6
            i32.store offset=24
            local.get 5
            i32.load offset=16
            local.tee 2
            if  ;; label = @5
              local.get 1
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 1
              i32.store offset=24
            end
            local.get 5
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.store offset=20
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 3
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.get 0
          i32.store
          local.get 3
          i32.const 3656
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 3644
          local.get 0
          i32.store
          return
        end
        local.get 5
        local.get 1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 3
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        i32.add
        local.get 0
        i32.store
      end
      local.get 0
      i32.const 255
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 1
        i32.const 3
        i32.shl
        i32.const 3676
        i32.add
        local.set 0
        block (result i32)  ;; label = @3
          i32.const 3636
          i32.load
          local.tee 2
          i32.const 1
          local.get 1
          i32.shl
          local.tee 1
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 3636
            local.get 1
            local.get 2
            i32.or
            i32.store
            local.get 0
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
        end
        local.set 2
        local.get 0
        local.get 3
        i32.store offset=8
        local.get 2
        local.get 3
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      local.get 3
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      i32.const 16777215
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 1
        local.get 1
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 1
        i32.shl
        local.tee 2
        local.get 2
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 4
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 1
        local.get 2
        i32.or
        local.get 4
        i32.or
        i32.sub
        local.tee 1
        i32.const 1
        i32.shl
        local.get 0
        local.get 1
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 3
      local.get 2
      i32.store offset=28
      local.get 2
      i32.const 2
      i32.shl
      i32.const 3940
      i32.add
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 3640
            i32.load
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 7
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 3640
              local.get 4
              local.get 7
              i32.or
              i32.store
              local.get 1
              local.get 3
              i32.store
              local.get 3
              local.get 1
              i32.store offset=24
              br 1 (;@4;)
            end
            local.get 0
            i32.const 0
            i32.const 25
            local.get 2
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 2
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 2
            local.get 1
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 1
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 1
              i32.const 4
              i32.and
              i32.add
              local.tee 7
              i32.const 16
              i32.add
              i32.load
              local.tee 1
              br_if 0 (;@5;)
            end
            local.get 7
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 4
            i32.store offset=24
          end
          local.get 3
          local.get 3
          i32.store offset=12
          local.get 3
          local.get 3
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 3
        i32.store offset=12
        local.get 4
        local.get 3
        i32.store offset=8
        local.get 3
        i32.const 0
        i32.store offset=24
        local.get 3
        local.get 4
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
      end
      i32.const 3668
      i32.const 3668
      i32.load
      i32.const 1
      i32.sub
      local.tee 0
      i32.const -1
      local.get 0
      select
      i32.store
    end)
  (func $dlrealloc (type 11) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      local.get 1
      call $dlmalloc
      return
    end
    local.get 1
    i32.const -64
    i32.ge_u
    if  ;; label = @1
      i32.const 3460
      i32.const 48
      i32.store
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      i32.const 16
      local.get 1
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.set 6
      local.get 0
      i32.const 8
      i32.sub
      local.tee 5
      i32.load offset=4
      local.tee 9
      i32.const -8
      i32.and
      local.set 4
      block  ;; label = @2
        local.get 9
        i32.const 3
        i32.and
        i32.eqz
        if  ;; label = @3
          i32.const 0
          local.get 6
          i32.const 256
          i32.lt_u
          br_if 2 (;@1;)
          drop
          local.get 6
          i32.const 4
          i32.add
          local.get 4
          i32.le_u
          if  ;; label = @4
            local.get 5
            local.set 2
            local.get 4
            local.get 6
            i32.sub
            i32.const 4116
            i32.load
            i32.const 1
            i32.shl
            i32.le_u
            br_if 2 (;@2;)
          end
          i32.const 0
          br 2 (;@1;)
        end
        local.get 4
        local.get 5
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 4
          local.get 6
          i32.ge_u
          if  ;; label = @4
            local.get 4
            local.get 6
            i32.sub
            local.tee 3
            i32.const 16
            i32.lt_u
            br_if 1 (;@3;)
            local.get 5
            local.get 9
            i32.const 1
            i32.and
            local.get 6
            i32.or
            i32.const 2
            i32.or
            i32.store offset=4
            local.get 5
            local.get 6
            i32.add
            local.tee 2
            local.get 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 7
            local.get 7
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 3
            call $dispose_chunk
            br 1 (;@3;)
          end
          local.get 7
          i32.const 3660
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3648
            i32.load
            local.get 4
            i32.add
            local.tee 4
            local.get 6
            i32.le_u
            br_if 2 (;@2;)
            local.get 5
            local.get 9
            i32.const 1
            i32.and
            local.get 6
            i32.or
            i32.const 2
            i32.or
            i32.store offset=4
            local.get 5
            local.get 6
            i32.add
            local.tee 3
            local.get 4
            local.get 6
            i32.sub
            local.tee 2
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 3648
            local.get 2
            i32.store
            i32.const 3660
            local.get 3
            i32.store
            br 1 (;@3;)
          end
          local.get 7
          i32.const 3656
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3644
            i32.load
            local.get 4
            i32.add
            local.tee 3
            local.get 6
            i32.lt_u
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 3
              local.get 6
              i32.sub
              local.tee 2
              i32.const 16
              i32.ge_u
              if  ;; label = @6
                local.get 5
                local.get 9
                i32.const 1
                i32.and
                local.get 6
                i32.or
                i32.const 2
                i32.or
                i32.store offset=4
                local.get 5
                local.get 6
                i32.add
                local.tee 4
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 5
                i32.add
                local.tee 3
                local.get 2
                i32.store
                local.get 3
                local.get 3
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                br 1 (;@5;)
              end
              local.get 5
              local.get 9
              i32.const 1
              i32.and
              local.get 3
              i32.or
              i32.const 2
              i32.or
              i32.store offset=4
              local.get 3
              local.get 5
              i32.add
              local.tee 2
              local.get 2
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.set 2
              i32.const 0
              local.set 4
            end
            i32.const 3656
            local.get 4
            i32.store
            i32.const 3644
            local.get 2
            i32.store
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=4
          local.tee 3
          i32.const 2
          i32.and
          br_if 1 (;@2;)
          local.get 3
          i32.const -8
          i32.and
          local.get 4
          i32.add
          local.tee 10
          local.get 6
          i32.lt_u
          br_if 1 (;@2;)
          local.get 10
          local.get 6
          i32.sub
          local.set 12
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 7
              i32.load offset=8
              local.tee 4
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 2
              i32.const 3
              i32.shl
              i32.const 3676
              i32.add
              i32.eq
              drop
              local.get 4
              local.get 7
              i32.load offset=12
              local.tee 3
              i32.eq
              if  ;; label = @6
                i32.const 3636
                i32.const 3636
                i32.load
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 4
              local.get 3
              i32.store offset=12
              local.get 3
              local.get 4
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 7
            i32.load offset=24
            local.set 11
            block  ;; label = @5
              local.get 7
              local.get 7
              i32.load offset=12
              local.tee 8
              i32.ne
              if  ;; label = @6
                local.get 7
                i32.load offset=8
                local.tee 2
                i32.const 3652
                i32.load
                i32.lt_u
                drop
                local.get 2
                local.get 8
                i32.store offset=12
                local.get 8
                local.get 2
                i32.store offset=8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 7
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                local.get 7
                i32.const 16
                i32.add
                local.tee 4
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                i32.const 0
                local.set 8
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 4
                local.set 3
                local.get 2
                local.tee 8
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                local.get 8
                i32.const 16
                i32.add
                local.set 4
                local.get 8
                i32.load offset=16
                local.tee 2
                br_if 0 (;@6;)
              end
              local.get 3
              i32.const 0
              i32.store
            end
            local.get 11
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 7
              local.get 7
              i32.load offset=28
              local.tee 3
              i32.const 2
              i32.shl
              i32.const 3940
              i32.add
              local.tee 2
              i32.load
              i32.eq
              if  ;; label = @6
                local.get 2
                local.get 8
                i32.store
                local.get 8
                br_if 1 (;@5;)
                i32.const 3640
                i32.const 3640
                i32.load
                i32.const -2
                local.get 3
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 11
              i32.const 16
              i32.const 20
              local.get 11
              i32.load offset=16
              local.get 7
              i32.eq
              select
              i32.add
              local.get 8
              i32.store
              local.get 8
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 8
            local.get 11
            i32.store offset=24
            local.get 7
            i32.load offset=16
            local.tee 2
            if  ;; label = @5
              local.get 8
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 8
              i32.store offset=24
            end
            local.get 7
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            local.get 2
            i32.store offset=20
            local.get 2
            local.get 8
            i32.store offset=24
          end
          local.get 12
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 5
            local.get 9
            i32.const 1
            i32.and
            local.get 10
            i32.or
            i32.const 2
            i32.or
            i32.store offset=4
            local.get 5
            local.get 10
            i32.add
            local.tee 2
            local.get 2
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 5
          local.get 9
          i32.const 1
          i32.and
          local.get 6
          i32.or
          i32.const 2
          i32.or
          i32.store offset=4
          local.get 5
          local.get 6
          i32.add
          local.tee 3
          local.get 12
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 5
          local.get 10
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          local.get 12
          call $dispose_chunk
        end
        local.get 5
        local.set 2
      end
      local.get 2
    end
    local.tee 2
    if  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      return
    end
    local.get 1
    call $dlmalloc
    local.tee 5
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 5
    local.get 0
    i32.const -4
    i32.const -8
    local.get 0
    i32.const 4
    i32.sub
    i32.load
    local.tee 2
    i32.const 3
    i32.and
    select
    local.get 2
    i32.const -8
    i32.and
    i32.add
    local.tee 2
    local.get 1
    local.get 1
    local.get 2
    i32.gt_u
    select
    call $__memcpy
    local.get 0
    call $dlfree
    local.get 5)
  (func $dispose_chunk (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 2
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          local.get 0
          local.get 2
          i32.sub
          local.tee 0
          i32.const 3656
          i32.load
          i32.ne
          if  ;; label = @4
            local.get 2
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 0
              i32.load offset=8
              local.tee 4
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 2
              i32.const 3
              i32.shl
              i32.const 3676
              i32.add
              i32.eq
              drop
              local.get 0
              i32.load offset=12
              local.tee 3
              local.get 4
              i32.ne
              br_if 2 (;@3;)
              i32.const 3636
              i32.const 3636
              i32.load
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 0
            i32.load offset=24
            local.set 6
            block  ;; label = @5
              local.get 0
              local.get 0
              i32.load offset=12
              local.tee 3
              i32.ne
              if  ;; label = @6
                local.get 0
                i32.load offset=8
                local.tee 2
                i32.const 3652
                i32.load
                i32.lt_u
                drop
                local.get 2
                local.get 3
                i32.store offset=12
                local.get 3
                local.get 2
                i32.store offset=8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 0
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 7
                local.get 4
                local.tee 3
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.set 2
                local.get 3
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 0
              i32.store
            end
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              local.get 0
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 3940
              i32.add
              local.tee 2
              i32.load
              i32.eq
              if  ;; label = @6
                local.get 2
                local.get 3
                i32.store
                local.get 3
                br_if 1 (;@5;)
                i32.const 3640
                i32.const 3640
                i32.load
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store
                br 4 (;@2;)
              end
              local.get 6
              i32.const 16
              i32.const 20
              local.get 6
              i32.load offset=16
              local.get 0
              i32.eq
              select
              i32.add
              local.get 3
              i32.store
              local.get 3
              i32.eqz
              br_if 3 (;@2;)
            end
            local.get 3
            local.get 6
            i32.store offset=24
            local.get 0
            i32.load offset=16
            local.tee 2
            if  ;; label = @5
              local.get 3
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 3
              i32.store offset=24
            end
            local.get 0
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            local.get 2
            i32.store offset=20
            local.get 2
            local.get 3
            i32.store offset=24
            br 2 (;@2;)
          end
          local.get 5
          i32.load offset=4
          local.tee 2
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 3644
          local.get 1
          i32.store
          local.get 5
          local.get 2
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 5
          local.get 1
          i32.store
          return
        end
        local.get 4
        local.get 3
        i32.store offset=12
        local.get 3
        local.get 4
        i32.store offset=8
      end
      block  ;; label = @2
        local.get 5
        i32.load offset=4
        local.tee 2
        i32.const 2
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 5
          i32.const 3660
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3660
            local.get 0
            i32.store
            i32.const 3648
            i32.const 3648
            i32.load
            local.get 1
            i32.add
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 3656
            i32.load
            i32.ne
            br_if 3 (;@1;)
            i32.const 3644
            i32.const 0
            i32.store
            i32.const 3656
            i32.const 0
            i32.store
            return
          end
          local.get 5
          i32.const 3656
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3656
            local.get 0
            i32.store
            i32.const 3644
            i32.const 3644
            i32.load
            local.get 1
            i32.add
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          local.get 2
          i32.const -8
          i32.and
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 5
              i32.load offset=8
              local.tee 4
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 2
              i32.const 3
              i32.shl
              i32.const 3676
              i32.add
              i32.eq
              drop
              local.get 4
              local.get 5
              i32.load offset=12
              local.tee 3
              i32.eq
              if  ;; label = @6
                i32.const 3636
                i32.const 3636
                i32.load
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 4
              local.get 3
              i32.store offset=12
              local.get 3
              local.get 4
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=24
            local.set 6
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=12
              local.tee 3
              i32.ne
              if  ;; label = @6
                local.get 5
                i32.load offset=8
                local.tee 2
                i32.const 3652
                i32.load
                i32.lt_u
                drop
                local.get 2
                local.get 3
                i32.store offset=12
                local.get 3
                local.get 2
                i32.store offset=8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 5
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.tee 4
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 4
                local.set 7
                local.get 2
                local.tee 3
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.set 4
                local.get 3
                i32.load offset=16
                local.tee 2
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 0
              i32.store
            end
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 3940
              i32.add
              local.tee 2
              i32.load
              i32.eq
              if  ;; label = @6
                local.get 2
                local.get 3
                i32.store
                local.get 3
                br_if 1 (;@5;)
                i32.const 3640
                i32.const 3640
                i32.load
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 6
              i32.const 16
              i32.const 20
              local.get 6
              i32.load offset=16
              local.get 5
              i32.eq
              select
              i32.add
              local.get 3
              i32.store
              local.get 3
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 3
            local.get 6
            i32.store offset=24
            local.get 5
            i32.load offset=16
            local.tee 2
            if  ;; label = @5
              local.get 3
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 3
              i32.store offset=24
            end
            local.get 5
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 2
            i32.store offset=20
            local.get 2
            local.get 3
            i32.store offset=24
          end
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          i32.const 3656
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 3644
          local.get 1
          i32.store
          return
        end
        local.get 5
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
      end
      local.get 1
      i32.const 255
      i32.le_u
      if  ;; label = @2
        local.get 1
        i32.const 3
        i32.shr_u
        local.tee 2
        i32.const 3
        i32.shl
        i32.const 3676
        i32.add
        local.set 1
        block (result i32)  ;; label = @3
          i32.const 3636
          i32.load
          local.tee 3
          i32.const 1
          local.get 2
          i32.shl
          local.tee 2
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 3636
            local.get 2
            local.get 3
            i32.or
            i32.store
            local.get 1
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
        end
        local.set 2
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 2
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 1
      i32.const 16777215
      i32.le_u
      if  ;; label = @2
        local.get 1
        i32.const 8
        i32.shr_u
        local.tee 2
        local.get 2
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 4
        i32.shl
        local.tee 2
        local.get 2
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 3
        i32.shl
        local.tee 2
        local.get 2
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 2
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 3
        local.get 4
        i32.or
        local.get 2
        i32.or
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 1
        local.get 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 0
      local.get 2
      i32.store offset=28
      local.get 2
      i32.const 2
      i32.shl
      i32.const 3940
      i32.add
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          i32.const 3640
          i32.load
          local.tee 4
          i32.const 1
          local.get 2
          i32.shl
          local.tee 3
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 3640
            local.get 3
            local.get 4
            i32.or
            i32.store
            local.get 7
            local.get 0
            i32.store
            local.get 0
            local.get 7
            i32.store offset=24
            br 1 (;@3;)
          end
          local.get 1
          i32.const 0
          i32.const 25
          local.get 2
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 2
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 2
          local.get 7
          i32.load
          local.set 3
          loop  ;; label = @4
            local.get 3
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 1
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 3
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 3
            i32.const 4
            i32.and
            i32.add
            local.tee 7
            i32.const 16
            i32.add
            i32.load
            local.tee 3
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 4
          i32.store offset=24
        end
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 4
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func $sbrk (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 2260
    i32.load
    local.tee 1
    local.get 0
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.tee 2
    i32.add
    local.set 0
    block  ;; label = @1
      local.get 2
      i32.const 0
      local.get 0
      local.get 1
      i32.le_u
      select
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 2260
      local.get 0
      i32.store
      local.get 1
      return
    end
    i32.const 3460
    i32.const 48
    i32.store
    i32.const -1)
  (func $__memcpy (type 6) (param i32 i32 i32)
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
  (func $emscripten_resize_heap (type 0) (param i32) (result i32)
    i32.const 0)
  (func $memset (type 6) (param i32 i32 i32)
    local.get 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.store8
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const 1
        i32.sub
        local.tee 2
        br_if 0 (;@2;)
      end
    end)
  (func $fmodl (type 2) (param i32 i64 i64 i64 i64)
    (local i32 i32 i32 i32 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 4
          i64.const 0
          i64.const 0
          call $__letf2
          i32.eqz
          br_if 0 (;@3;)
          block (result i32)  ;; label = @4
            local.get 4
            i64.const 281474976710655
            i64.and
            local.set 9
            block (result i32)  ;; label = @5
              local.get 4
              i64.const 48
              i64.shr_u
              i32.wrap_i64
              i32.const 32767
              i32.and
              local.tee 6
              i32.const 32767
              i32.ne
              if  ;; label = @6
                i32.const 4
                local.get 6
                br_if 1 (;@5;)
                drop
                i32.const 2
                i32.const 3
                local.get 3
                local.get 9
                i64.or
                i64.eqz
                select
                br 2 (;@4;)
              end
              local.get 3
              local.get 9
              i64.or
              i64.eqz
            end
          end
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i64.const 48
          i64.shr_u
          i32.wrap_i64
          local.tee 8
          i32.const 32767
          i32.and
          local.tee 6
          i32.const 32767
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 5
        i32.const 16
        i32.add
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        call $__multf3
        local.get 5
        local.get 5
        i64.load offset=16
        local.tee 1
        local.get 5
        i64.load offset=24
        local.tee 2
        local.get 1
        local.get 2
        call $__divtf3
        local.get 5
        i64.load offset=8
        local.set 2
        local.get 5
        i64.load
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i64.const 281474976710655
      i64.and
      local.get 6
      i64.extend_i32_u
      i64.const 48
      i64.shl
      i64.or
      local.tee 10
      local.get 3
      local.get 4
      i64.const 281474976710655
      i64.and
      local.get 4
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      i32.const 32767
      i32.and
      local.tee 7
      i64.extend_i32_u
      i64.const 48
      i64.shl
      i64.or
      local.tee 9
      call $__letf2
      i32.const 0
      i32.le_s
      if  ;; label = @2
        local.get 1
        local.get 10
        local.get 3
        local.get 9
        call $__letf2
        if  ;; label = @3
          local.get 1
          local.set 4
          br 2 (;@1;)
        end
        local.get 5
        i32.const 112
        i32.add
        local.get 1
        local.get 2
        i64.const 0
        i64.const 0
        call $__multf3
        local.get 5
        i64.load offset=120
        local.set 2
        local.get 5
        i64.load offset=112
        local.set 4
        br 1 (;@1;)
      end
      local.get 6
      if (result i64)  ;; label = @2
        local.get 1
      else
        local.get 5
        i32.const 96
        i32.add
        local.get 1
        local.get 10
        i64.const 0
        i64.const 4645181540655955968
        call $__multf3
        local.get 5
        i64.load offset=104
        local.tee 10
        i64.const 48
        i64.shr_u
        i32.wrap_i64
        i32.const 120
        i32.sub
        local.set 6
        local.get 5
        i64.load offset=96
      end
      local.set 4
      local.get 7
      i32.eqz
      if  ;; label = @2
        local.get 5
        i32.const 80
        i32.add
        local.get 3
        local.get 9
        i64.const 0
        i64.const 4645181540655955968
        call $__multf3
        local.get 5
        i64.load offset=88
        local.tee 9
        i64.const 48
        i64.shr_u
        i32.wrap_i64
        i32.const 120
        i32.sub
        local.set 7
        local.get 5
        i64.load offset=80
        local.set 3
      end
      local.get 9
      i64.const 281474976710655
      i64.and
      i64.const 281474976710656
      i64.or
      local.set 9
      local.get 10
      i64.const 281474976710655
      i64.and
      i64.const 281474976710656
      i64.or
      local.set 10
      local.get 6
      local.get 7
      i32.gt_s
      if  ;; label = @2
        loop  ;; label = @3
          block (result i64)  ;; label = @4
            local.get 10
            local.get 9
            i64.sub
            local.get 3
            local.get 4
            i64.gt_u
            i64.extend_i32_u
            i64.sub
            local.tee 11
            i64.const 0
            i64.ge_s
            if  ;; label = @5
              local.get 11
              local.get 4
              local.get 3
              i64.sub
              local.tee 4
              i64.or
              i64.eqz
              if  ;; label = @6
                local.get 5
                i32.const 32
                i32.add
                local.get 1
                local.get 2
                i64.const 0
                i64.const 0
                call $__multf3
                local.get 5
                i64.load offset=40
                local.set 2
                local.get 5
                i64.load offset=32
                local.set 4
                br 5 (;@1;)
              end
              local.get 11
              i64.const 1
              i64.shl
              local.get 4
              i64.const 63
              i64.shr_u
              i64.or
              br 1 (;@4;)
            end
            local.get 10
            i64.const 1
            i64.shl
            local.get 4
            i64.const 63
            i64.shr_u
            i64.or
          end
          local.set 10
          local.get 4
          i64.const 1
          i64.shl
          local.set 4
          local.get 6
          i32.const 1
          i32.sub
          local.tee 6
          local.get 7
          i32.gt_s
          br_if 0 (;@3;)
        end
        local.get 7
        local.set 6
      end
      block  ;; label = @2
        local.get 10
        local.get 9
        i64.sub
        local.get 3
        local.get 4
        i64.gt_u
        i64.extend_i32_u
        i64.sub
        local.tee 9
        i64.const 0
        i64.lt_s
        if  ;; label = @3
          local.get 10
          local.set 9
          br 1 (;@2;)
        end
        local.get 9
        local.get 4
        local.get 3
        i64.sub
        local.tee 4
        i64.or
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 5
        i32.const 48
        i32.add
        local.get 1
        local.get 2
        i64.const 0
        i64.const 0
        call $__multf3
        local.get 5
        i64.load offset=56
        local.set 2
        local.get 5
        i64.load offset=48
        local.set 4
        br 1 (;@1;)
      end
      local.get 9
      i64.const 281474976710655
      i64.le_u
      if  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i64.const 63
          i64.shr_u
          local.set 1
          local.get 6
          i32.const 1
          i32.sub
          local.set 6
          local.get 4
          i64.const 1
          i64.shl
          local.set 4
          local.get 1
          local.get 9
          i64.const 1
          i64.shl
          i64.or
          local.tee 9
          i64.const 281474976710656
          i64.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 32768
      i32.and
      local.set 7
      local.get 6
      i32.const 0
      i32.le_s
      if  ;; label = @2
        local.get 5
        i32.const -64
        i32.sub
        local.get 4
        local.get 9
        i64.const 281474976710655
        i64.and
        local.get 6
        i32.const 120
        i32.add
        local.get 7
        i32.or
        i64.extend_i32_u
        i64.const 48
        i64.shl
        i64.or
        i64.const 0
        i64.const 4577627546245398528
        call $__multf3
        local.get 5
        i64.load offset=72
        local.set 2
        local.get 5
        i64.load offset=64
        local.set 4
        br 1 (;@1;)
      end
      local.get 9
      i64.const 281474976710655
      i64.and
      local.get 6
      local.get 7
      i32.or
      i64.extend_i32_u
      i64.const 48
      i64.shl
      i64.or
      local.set 2
    end
    local.get 0
    local.get 4
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8
    local.get 5
    i32.const 128
    i32.add
    global.set $__stack_pointer)
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
  (func $__emscripten_stdout_seek (type 8) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func $__towrite (type 0) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 1
    i32.const 1
    i32.sub
    local.get 1
    i32.or
    i32.store offset=72
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
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
    i32.const 0)
  (func $wctomb (type 11) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 127
          i32.le_u
          br_if 1 (;@2;)
          block  ;; label = @4
            i32.const 3608
            i32.load
            i32.load
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const -128
              i32.and
              i32.const 57216
              i32.eq
              br_if 3 (;@2;)
              br 1 (;@4;)
            end
            local.get 1
            i32.const 2047
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8
              i32.const 2
              br 4 (;@1;)
            end
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            local.get 1
            i32.const 55296
            i32.ge_u
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 3
              br 4 (;@1;)
            end
            local.get 1
            i32.const 65536
            i32.sub
            i32.const 1048575
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=3
              local.get 0
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 240
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 4
              br 4 (;@1;)
            end
          end
          i32.const 3460
          i32.const 25
          i32.store
          i32.const -1
        else
          i32.const 1
        end
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store8
      i32.const 1
    end)
  (func $printf_core (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 1057
    i32.store offset=76
    local.get 5
    i32.const 55
    i32.add
    local.set 20
    local.get 5
    i32.const 56
    i32.add
    local.set 16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 4
              i32.const 2147483647
              local.get 12
              i32.sub
              i32.gt_s
              br_if 1 (;@4;)
              local.get 4
              local.get 12
              i32.add
              local.set 12
              local.get 5
              i32.load offset=76
              local.tee 9
              local.set 4
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 9
                    i32.load8_u
                    local.tee 8
                    if  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 8
                            i32.const 255
                            i32.and
                            local.tee 6
                            i32.eqz
                            if  ;; label = @13
                              local.get 4
                              local.set 8
                              br 1 (;@12;)
                            end
                            local.get 6
                            i32.const 37
                            i32.ne
                            br_if 1 (;@11;)
                            local.get 4
                            local.set 8
                            loop  ;; label = @13
                              local.get 4
                              i32.load8_u offset=1
                              i32.const 37
                              i32.ne
                              br_if 1 (;@12;)
                              local.get 5
                              local.get 4
                              i32.const 2
                              i32.add
                              local.tee 6
                              i32.store offset=76
                              local.get 8
                              i32.const 1
                              i32.add
                              local.set 8
                              local.get 4
                              i32.load8_u offset=2
                              local.set 10
                              local.get 6
                              local.set 4
                              local.get 10
                              i32.const 37
                              i32.eq
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          local.get 9
                          i32.sub
                          local.tee 4
                          i32.const 2147483647
                          local.get 12
                          i32.sub
                          local.tee 21
                          i32.gt_s
                          br_if 7 (;@4;)
                          local.get 0
                          if  ;; label = @12
                            local.get 0
                            local.get 9
                            local.get 4
                            call $out
                          end
                          local.get 4
                          br_if 6 (;@5;)
                          i32.const -1
                          local.set 15
                          i32.const 1
                          local.set 6
                          local.get 5
                          i32.load offset=76
                          i32.load8_s offset=1
                          call $isdigit
                          local.set 8
                          local.get 5
                          i32.load offset=76
                          local.set 4
                          block  ;; label = @12
                            local.get 8
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 4
                            i32.load8_u offset=2
                            i32.const 36
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 4
                            i32.load8_s offset=1
                            i32.const 48
                            i32.sub
                            local.set 15
                            i32.const 1
                            local.set 17
                            i32.const 3
                            local.set 6
                          end
                          local.get 5
                          local.get 4
                          local.get 6
                          i32.add
                          local.tee 4
                          i32.store offset=76
                          i32.const 0
                          local.set 13
                          block  ;; label = @12
                            local.get 4
                            i32.load8_s
                            local.tee 11
                            i32.const 32
                            i32.sub
                            local.tee 8
                            i32.const 31
                            i32.gt_u
                            if  ;; label = @13
                              local.get 4
                              local.set 6
                              br 1 (;@12;)
                            end
                            local.get 4
                            local.set 6
                            i32.const 1
                            local.get 8
                            i32.shl
                            local.tee 7
                            i32.const 75913
                            i32.and
                            i32.eqz
                            br_if 0 (;@12;)
                            loop  ;; label = @13
                              local.get 5
                              local.get 4
                              i32.const 1
                              i32.add
                              local.tee 6
                              i32.store offset=76
                              local.get 7
                              local.get 13
                              i32.or
                              local.set 13
                              local.get 4
                              i32.load8_s offset=1
                              local.tee 11
                              i32.const 32
                              i32.sub
                              local.tee 8
                              i32.const 32
                              i32.ge_u
                              br_if 1 (;@12;)
                              local.get 6
                              local.set 4
                              i32.const 1
                              local.get 8
                              i32.shl
                              local.tee 7
                              i32.const 75913
                              i32.and
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 11
                            i32.const 42
                            i32.eq
                            if  ;; label = @13
                              local.get 5
                              block (result i32)  ;; label = @14
                                block  ;; label = @15
                                  local.get 6
                                  i32.load8_s offset=1
                                  call $isdigit
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.load offset=76
                                  local.tee 4
                                  i32.load8_u offset=2
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 4
                                  i32.load8_s offset=1
                                  i32.const 2
                                  i32.shl
                                  local.get 3
                                  i32.add
                                  i32.const 192
                                  i32.sub
                                  i32.const 10
                                  i32.store
                                  local.get 4
                                  i32.load8_s offset=1
                                  i32.const 3
                                  i32.shl
                                  local.get 2
                                  i32.add
                                  i32.const 384
                                  i32.sub
                                  i32.load
                                  local.set 14
                                  i32.const 1
                                  local.set 17
                                  local.get 4
                                  i32.const 3
                                  i32.add
                                  br 1 (;@14;)
                                end
                                local.get 17
                                br_if 6 (;@8;)
                                i32.const 0
                                local.set 17
                                i32.const 0
                                local.set 14
                                local.get 0
                                if  ;; label = @15
                                  local.get 1
                                  local.get 1
                                  i32.load
                                  local.tee 4
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 4
                                  i32.load
                                  local.set 14
                                end
                                local.get 5
                                i32.load offset=76
                                i32.const 1
                                i32.add
                              end
                              local.tee 4
                              i32.store offset=76
                              local.get 14
                              i32.const 0
                              i32.ge_s
                              br_if 1 (;@12;)
                              i32.const 0
                              local.get 14
                              i32.sub
                              local.set 14
                              local.get 13
                              i32.const 8192
                              i32.or
                              local.set 13
                              br 1 (;@12;)
                            end
                            local.get 5
                            i32.const 76
                            i32.add
                            call $getint
                            local.tee 14
                            i32.const 0
                            i32.lt_s
                            br_if 8 (;@4;)
                            local.get 5
                            i32.load offset=76
                            local.set 4
                          end
                          i32.const 0
                          local.set 6
                          i32.const -1
                          local.set 7
                          block  ;; label = @12
                            local.get 4
                            i32.load8_u
                            i32.const 46
                            i32.ne
                            if  ;; label = @13
                              i32.const 0
                              local.set 18
                              br 1 (;@12;)
                            end
                            local.get 4
                            i32.load8_u offset=1
                            i32.const 42
                            i32.eq
                            if  ;; label = @13
                              local.get 5
                              block (result i32)  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load8_s offset=2
                                  call $isdigit
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.load offset=76
                                  local.tee 4
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 4
                                  i32.load8_s offset=2
                                  i32.const 2
                                  i32.shl
                                  local.get 3
                                  i32.add
                                  i32.const 192
                                  i32.sub
                                  i32.const 10
                                  i32.store
                                  local.get 4
                                  i32.load8_s offset=2
                                  i32.const 3
                                  i32.shl
                                  local.get 2
                                  i32.add
                                  i32.const 384
                                  i32.sub
                                  i32.load
                                  local.set 7
                                  local.get 4
                                  i32.const 4
                                  i32.add
                                  br 1 (;@14;)
                                end
                                local.get 17
                                br_if 6 (;@8;)
                                local.get 0
                                if (result i32)  ;; label = @15
                                  local.get 1
                                  local.get 1
                                  i32.load
                                  local.tee 4
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 4
                                  i32.load
                                else
                                  i32.const 0
                                end
                                local.set 7
                                local.get 5
                                i32.load offset=76
                                i32.const 2
                                i32.add
                              end
                              local.tee 4
                              i32.store offset=76
                              local.get 7
                              i32.const -1
                              i32.xor
                              i32.const 31
                              i32.shr_u
                              local.set 18
                              br 1 (;@12;)
                            end
                            local.get 5
                            local.get 4
                            i32.const 1
                            i32.add
                            i32.store offset=76
                            i32.const 1
                            local.set 18
                            local.get 5
                            i32.const 76
                            i32.add
                            call $getint
                            local.set 7
                            local.get 5
                            i32.load offset=76
                            local.set 4
                          end
                          loop  ;; label = @12
                            local.get 6
                            local.set 19
                            i32.const 28
                            local.set 8
                            local.get 4
                            i32.load8_s
                            i32.const 123
                            i32.sub
                            i32.const -58
                            i32.lt_u
                            br_if 9 (;@3;)
                            local.get 5
                            local.get 4
                            i32.const 1
                            i32.add
                            local.tee 11
                            i32.store offset=76
                            local.get 4
                            i32.load8_s
                            local.set 6
                            local.get 11
                            local.set 4
                            local.get 6
                            local.get 19
                            i32.const 58
                            i32.mul
                            i32.add
                            i32.const 1567
                            i32.add
                            i32.load8_u
                            local.tee 6
                            i32.const 1
                            i32.sub
                            i32.const 8
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.const 27
                              i32.ne
                              if  ;; label = @14
                                local.get 6
                                i32.eqz
                                br_if 11 (;@3;)
                                local.get 15
                                i32.const 0
                                i32.ge_s
                                if  ;; label = @15
                                  local.get 3
                                  local.get 15
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 6
                                  i32.store
                                  local.get 5
                                  local.get 2
                                  local.get 15
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  i64.load
                                  i64.store offset=64
                                  br 2 (;@13;)
                                end
                                local.get 0
                                i32.eqz
                                br_if 8 (;@6;)
                                local.get 5
                                i32.const -64
                                i32.sub
                                local.get 6
                                local.get 1
                                call $pop_arg
                                local.get 5
                                i32.load offset=76
                                local.set 11
                                br 2 (;@12;)
                              end
                              local.get 15
                              i32.const 0
                              i32.ge_s
                              br_if 10 (;@3;)
                            end
                            i32.const 0
                            local.set 4
                            local.get 0
                            i32.eqz
                            br_if 7 (;@5;)
                          end
                          local.get 13
                          i32.const -65537
                          i32.and
                          local.tee 10
                          local.get 13
                          local.get 13
                          i32.const 8192
                          i32.and
                          select
                          local.set 6
                          i32.const 0
                          local.set 13
                          i32.const 1033
                          local.set 15
                          local.get 16
                          local.set 8
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block (result i32)  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block (result i32)  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 11
                                                          i32.const 1
                                                          i32.sub
                                                          i32.load8_s
                                                          local.tee 4
                                                          i32.const -33
                                                          i32.and
                                                          local.get 4
                                                          local.get 4
                                                          i32.const 15
                                                          i32.and
                                                          i32.const 3
                                                          i32.eq
                                                          select
                                                          local.get 4
                                                          local.get 19
                                                          select
                                                          local.tee 4
                                                          i32.const 88
                                                          i32.sub
                                                          br_table 4 (;@23;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 14 (;@13;) 20 (;@7;) 15 (;@12;) 6 (;@21;) 14 (;@13;) 14 (;@13;) 14 (;@13;) 20 (;@7;) 6 (;@21;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 2 (;@25;) 5 (;@22;) 3 (;@24;) 20 (;@7;) 20 (;@7;) 9 (;@18;) 20 (;@7;) 1 (;@26;) 20 (;@7;) 20 (;@7;) 4 (;@23;) 0 (;@27;)
                                                        end
                                                        block  ;; label = @27
                                                          local.get 4
                                                          i32.const 65
                                                          i32.sub
                                                          br_table 14 (;@13;) 20 (;@7;) 11 (;@16;) 20 (;@7;) 14 (;@13;) 14 (;@13;) 14 (;@13;) 0 (;@27;)
                                                        end
                                                        local.get 4
                                                        i32.const 83
                                                        i32.eq
                                                        br_if 9 (;@17;)
                                                        br 19 (;@7;)
                                                      end
                                                      local.get 5
                                                      i64.load offset=64
                                                      local.set 22
                                                      i32.const 1033
                                                      br 5 (;@20;)
                                                    end
                                                    i32.const 0
                                                    local.set 4
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  local.get 19
                                                                  i32.const 255
                                                                  i32.and
                                                                  br_table 0 (;@31;) 1 (;@30;) 2 (;@29;) 3 (;@28;) 4 (;@27;) 26 (;@5;) 5 (;@26;) 6 (;@25;) 26 (;@5;)
                                                                end
                                                                local.get 5
                                                                i32.load offset=64
                                                                local.get 12
                                                                i32.store
                                                                br 25 (;@5;)
                                                              end
                                                              local.get 5
                                                              i32.load offset=64
                                                              local.get 12
                                                              i32.store
                                                              br 24 (;@5;)
                                                            end
                                                            local.get 5
                                                            i32.load offset=64
                                                            local.get 12
                                                            i64.extend_i32_s
                                                            i64.store
                                                            br 23 (;@5;)
                                                          end
                                                          local.get 5
                                                          i32.load offset=64
                                                          local.get 12
                                                          i32.store16
                                                          br 22 (;@5;)
                                                        end
                                                        local.get 5
                                                        i32.load offset=64
                                                        local.get 12
                                                        i32.store8
                                                        br 21 (;@5;)
                                                      end
                                                      local.get 5
                                                      i32.load offset=64
                                                      local.get 12
                                                      i32.store
                                                      br 20 (;@5;)
                                                    end
                                                    local.get 5
                                                    i32.load offset=64
                                                    local.get 12
                                                    i64.extend_i32_s
                                                    i64.store
                                                    br 19 (;@5;)
                                                  end
                                                  local.get 7
                                                  i32.const 8
                                                  local.get 7
                                                  i32.const 8
                                                  i32.gt_u
                                                  select
                                                  local.set 7
                                                  local.get 6
                                                  i32.const 8
                                                  i32.or
                                                  local.set 6
                                                  i32.const 120
                                                  local.set 4
                                                end
                                                local.get 16
                                                local.set 10
                                                local.get 4
                                                i32.const 32
                                                i32.and
                                                local.set 9
                                                local.get 5
                                                i64.load offset=64
                                                local.tee 22
                                                i64.eqz
                                                i32.eqz
                                                if  ;; label = @23
                                                  loop  ;; label = @24
                                                    local.get 10
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee 10
                                                    local.get 22
                                                    i32.wrap_i64
                                                    i32.const 15
                                                    i32.and
                                                    i32.const 2096
                                                    i32.add
                                                    i32.load8_u
                                                    local.get 9
                                                    i32.or
                                                    i32.store8
                                                    local.get 22
                                                    i64.const 15
                                                    i64.gt_u
                                                    local.set 11
                                                    local.get 22
                                                    i64.const 4
                                                    i64.shr_u
                                                    local.set 22
                                                    local.get 11
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 10
                                                local.set 9
                                                local.get 6
                                                i32.const 8
                                                i32.and
                                                i32.eqz
                                                local.get 5
                                                i64.load offset=64
                                                i64.eqz
                                                i32.or
                                                br_if 3 (;@19;)
                                                local.get 4
                                                i32.const 4
                                                i32.shr_u
                                                i32.const 1033
                                                i32.add
                                                local.set 15
                                                i32.const 2
                                                local.set 13
                                                br 3 (;@19;)
                                              end
                                              local.get 16
                                              local.set 4
                                              local.get 5
                                              i64.load offset=64
                                              local.tee 22
                                              i64.eqz
                                              i32.eqz
                                              if  ;; label = @22
                                                loop  ;; label = @23
                                                  local.get 4
                                                  i32.const 1
                                                  i32.sub
                                                  local.tee 4
                                                  local.get 22
                                                  i32.wrap_i64
                                                  i32.const 7
                                                  i32.and
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get 22
                                                  i64.const 7
                                                  i64.gt_u
                                                  local.set 9
                                                  local.get 22
                                                  i64.const 3
                                                  i64.shr_u
                                                  local.set 22
                                                  local.get 9
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 4
                                              local.set 9
                                              local.get 6
                                              i32.const 8
                                              i32.and
                                              i32.eqz
                                              br_if 2 (;@19;)
                                              local.get 7
                                              local.get 16
                                              local.get 9
                                              i32.sub
                                              local.tee 4
                                              i32.const 1
                                              i32.add
                                              local.get 4
                                              local.get 7
                                              i32.lt_s
                                              select
                                              local.set 7
                                              br 2 (;@19;)
                                            end
                                            local.get 5
                                            i64.load offset=64
                                            local.tee 22
                                            i64.const 0
                                            i64.lt_s
                                            if  ;; label = @21
                                              local.get 5
                                              i64.const 0
                                              local.get 22
                                              i64.sub
                                              local.tee 22
                                              i64.store offset=64
                                              i32.const 1
                                              local.set 13
                                              i32.const 1033
                                              br 1 (;@20;)
                                            end
                                            local.get 6
                                            i32.const 2048
                                            i32.and
                                            if  ;; label = @21
                                              i32.const 1
                                              local.set 13
                                              i32.const 1034
                                              br 1 (;@20;)
                                            end
                                            i32.const 1035
                                            i32.const 1033
                                            local.get 6
                                            i32.const 1
                                            i32.and
                                            local.tee 13
                                            select
                                          end
                                          local.set 15
                                          local.get 16
                                          local.set 9
                                          block  ;; label = @20
                                            local.get 22
                                            i64.const 4294967296
                                            i64.lt_u
                                            if  ;; label = @21
                                              local.get 22
                                              local.set 23
                                              br 1 (;@20;)
                                            end
                                            loop  ;; label = @21
                                              local.get 9
                                              i32.const 1
                                              i32.sub
                                              local.tee 9
                                              local.get 22
                                              local.get 22
                                              i64.const 10
                                              i64.div_u
                                              local.tee 23
                                              i64.const 10
                                              i64.mul
                                              i64.sub
                                              i32.wrap_i64
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get 22
                                              i64.const 42949672959
                                              i64.gt_u
                                              local.set 4
                                              local.get 23
                                              local.set 22
                                              local.get 4
                                              br_if 0 (;@21;)
                                            end
                                          end
                                          local.get 23
                                          i32.wrap_i64
                                          local.tee 10
                                          if  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 9
                                              i32.const 1
                                              i32.sub
                                              local.tee 9
                                              local.get 10
                                              local.get 10
                                              i32.const 10
                                              i32.div_u
                                              local.tee 4
                                              i32.const 10
                                              i32.mul
                                              i32.sub
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get 10
                                              i32.const 9
                                              i32.gt_u
                                              local.set 11
                                              local.get 4
                                              local.set 10
                                              local.get 11
                                              br_if 0 (;@21;)
                                            end
                                          end
                                        end
                                        local.get 7
                                        i32.const 0
                                        i32.lt_s
                                        local.get 18
                                        i32.and
                                        br_if 14 (;@4;)
                                        local.get 6
                                        i32.const -65537
                                        i32.and
                                        local.get 6
                                        local.get 18
                                        select
                                        local.set 6
                                        local.get 5
                                        i64.load offset=64
                                        local.tee 22
                                        i64.const 0
                                        i64.ne
                                        local.get 7
                                        i32.or
                                        i32.eqz
                                        if  ;; label = @19
                                          local.get 16
                                          local.tee 9
                                          local.set 8
                                          i32.const 0
                                          local.set 7
                                          br 12 (;@7;)
                                        end
                                        local.get 7
                                        local.get 22
                                        i64.eqz
                                        local.get 16
                                        local.get 9
                                        i32.sub
                                        i32.add
                                        local.tee 4
                                        local.get 4
                                        local.get 7
                                        i32.lt_s
                                        select
                                        local.set 7
                                        br 11 (;@7;)
                                      end
                                      block (result i32)  ;; label = @18
                                        i32.const 2147483647
                                        local.get 7
                                        local.get 7
                                        i32.const 0
                                        i32.lt_s
                                        select
                                        local.tee 11
                                        local.tee 6
                                        i32.const 0
                                        i32.ne
                                        local.set 8
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 5
                                              i32.load offset=64
                                              local.tee 4
                                              i32.const 1050
                                              local.get 4
                                              select
                                              local.tee 9
                                              local.tee 4
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              local.get 6
                                              i32.eqz
                                              i32.or
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 4
                                                i32.load8_u
                                                i32.eqz
                                                br_if 2 (;@20;)
                                                local.get 6
                                                i32.const 1
                                                i32.sub
                                                local.tee 6
                                                i32.const 0
                                                i32.ne
                                                local.set 8
                                                local.get 4
                                                i32.const 1
                                                i32.add
                                                local.tee 4
                                                i32.const 3
                                                i32.and
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                local.get 6
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 8
                                            i32.eqz
                                            br_if 1 (;@19;)
                                          end
                                          block  ;; label = @20
                                            local.get 4
                                            i32.load8_u
                                            i32.eqz
                                            local.get 6
                                            i32.const 4
                                            i32.lt_u
                                            i32.or
                                            br_if 0 (;@20;)
                                            loop  ;; label = @21
                                              local.get 4
                                              i32.load
                                              local.tee 8
                                              i32.const -1
                                              i32.xor
                                              local.get 8
                                              i32.const 16843009
                                              i32.sub
                                              i32.and
                                              i32.const -2139062144
                                              i32.and
                                              br_if 1 (;@20;)
                                              local.get 4
                                              i32.const 4
                                              i32.add
                                              local.set 4
                                              local.get 6
                                              i32.const 4
                                              i32.sub
                                              local.tee 6
                                              i32.const 3
                                              i32.gt_u
                                              br_if 0 (;@21;)
                                            end
                                          end
                                          local.get 6
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          loop  ;; label = @20
                                            local.get 4
                                            local.get 4
                                            i32.load8_u
                                            i32.eqz
                                            br_if 2 (;@18;)
                                            drop
                                            local.get 4
                                            i32.const 1
                                            i32.add
                                            local.set 4
                                            local.get 6
                                            i32.const 1
                                            i32.sub
                                            local.tee 6
                                            br_if 0 (;@20;)
                                          end
                                        end
                                        i32.const 0
                                      end
                                      local.tee 4
                                      local.get 9
                                      i32.sub
                                      local.get 11
                                      local.get 4
                                      select
                                      local.tee 4
                                      local.get 9
                                      i32.add
                                      local.set 8
                                      local.get 7
                                      i32.const 0
                                      i32.ge_s
                                      if  ;; label = @18
                                        local.get 10
                                        local.set 6
                                        local.get 4
                                        local.set 7
                                        br 11 (;@7;)
                                      end
                                      local.get 10
                                      local.set 6
                                      local.get 4
                                      local.set 7
                                      local.get 8
                                      i32.load8_u
                                      br_if 13 (;@4;)
                                      br 10 (;@7;)
                                    end
                                    local.get 7
                                    if  ;; label = @17
                                      local.get 5
                                      i32.load offset=64
                                      br 2 (;@15;)
                                    end
                                    i32.const 0
                                    local.set 4
                                    local.get 0
                                    i32.const 32
                                    local.get 14
                                    i32.const 0
                                    local.get 6
                                    call $pad
                                    br 2 (;@14;)
                                  end
                                  local.get 5
                                  i32.const 0
                                  i32.store offset=12
                                  local.get 5
                                  local.get 5
                                  i64.load offset=64
                                  i64.store32 offset=8
                                  local.get 5
                                  local.get 5
                                  i32.const 8
                                  i32.add
                                  local.tee 4
                                  i32.store offset=64
                                  i32.const -1
                                  local.set 7
                                  local.get 4
                                end
                                local.set 8
                                i32.const 0
                                local.set 4
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 8
                                    i32.load
                                    local.tee 9
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 5
                                    i32.const 4
                                    i32.add
                                    local.get 9
                                    call $wctomb
                                    local.tee 9
                                    i32.const 0
                                    i32.lt_s
                                    local.tee 10
                                    local.get 9
                                    local.get 7
                                    local.get 4
                                    i32.sub
                                    i32.gt_u
                                    i32.or
                                    i32.eqz
                                    if  ;; label = @17
                                      local.get 8
                                      i32.const 4
                                      i32.add
                                      local.set 8
                                      local.get 7
                                      local.get 4
                                      local.get 9
                                      i32.add
                                      local.tee 4
                                      i32.gt_u
                                      br_if 1 (;@16;)
                                      br 2 (;@15;)
                                    end
                                  end
                                  local.get 10
                                  br_if 13 (;@2;)
                                end
                                i32.const 61
                                local.set 8
                                local.get 4
                                i32.const 0
                                i32.lt_s
                                br_if 11 (;@3;)
                                local.get 0
                                i32.const 32
                                local.get 14
                                local.get 4
                                local.get 6
                                call $pad
                                local.get 4
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 4
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 7
                                local.get 5
                                i32.load offset=64
                                local.set 8
                                loop  ;; label = @15
                                  local.get 8
                                  i32.load
                                  local.tee 9
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  local.get 5
                                  i32.const 4
                                  i32.add
                                  local.get 9
                                  call $wctomb
                                  local.tee 9
                                  local.get 7
                                  i32.add
                                  local.tee 7
                                  local.get 4
                                  i32.gt_u
                                  br_if 1 (;@14;)
                                  local.get 0
                                  local.get 5
                                  i32.const 4
                                  i32.add
                                  local.get 9
                                  call $out
                                  local.get 8
                                  i32.const 4
                                  i32.add
                                  local.set 8
                                  local.get 4
                                  local.get 7
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.const 32
                              local.get 14
                              local.get 4
                              local.get 6
                              i32.const 8192
                              i32.xor
                              call $pad
                              local.get 14
                              local.get 4
                              local.get 4
                              local.get 14
                              i32.lt_s
                              select
                              local.set 4
                              br 8 (;@5;)
                            end
                            local.get 7
                            i32.const 0
                            i32.lt_s
                            local.get 18
                            i32.and
                            br_if 8 (;@4;)
                            i32.const 61
                            local.set 8
                            local.get 0
                            local.get 5
                            f64.load offset=64
                            local.get 14
                            local.get 7
                            local.get 6
                            local.get 4
                            i32.const 0
                            call_indirect (type 19)
                            local.tee 4
                            i32.const 0
                            i32.ge_s
                            br_if 7 (;@5;)
                            br 9 (;@3;)
                          end
                          local.get 5
                          local.get 5
                          i64.load offset=64
                          i64.store8 offset=55
                          i32.const 1
                          local.set 7
                          local.get 20
                          local.set 9
                          local.get 10
                          local.set 6
                          br 4 (;@7;)
                        end
                        local.get 5
                        local.get 4
                        i32.const 1
                        i32.add
                        local.tee 6
                        i32.store offset=76
                        local.get 4
                        i32.load8_u offset=1
                        local.set 8
                        local.get 6
                        local.set 4
                        br 0 (;@10;)
                      end
                      unreachable
                    end
                    local.get 0
                    br_if 7 (;@1;)
                    local.get 17
                    i32.eqz
                    br_if 2 (;@6;)
                    i32.const 1
                    local.set 4
                    loop  ;; label = @9
                      local.get 3
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      local.tee 0
                      if  ;; label = @10
                        local.get 2
                        local.get 4
                        i32.const 3
                        i32.shl
                        i32.add
                        local.get 0
                        local.get 1
                        call $pop_arg
                        i32.const 1
                        local.set 12
                        local.get 4
                        i32.const 1
                        i32.add
                        local.tee 4
                        i32.const 10
                        i32.ne
                        br_if 1 (;@9;)
                        br 9 (;@1;)
                      end
                    end
                    i32.const 1
                    local.set 12
                    local.get 4
                    i32.const 10
                    i32.ge_u
                    br_if 7 (;@1;)
                    loop  ;; label = @9
                      local.get 3
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      br_if 1 (;@8;)
                      local.get 4
                      i32.const 1
                      i32.add
                      local.tee 4
                      i32.const 10
                      i32.ne
                      br_if 0 (;@9;)
                    end
                    br 7 (;@1;)
                  end
                  i32.const 28
                  local.set 8
                  br 4 (;@3;)
                end
                local.get 8
                local.get 9
                i32.sub
                local.tee 11
                local.get 7
                local.get 7
                local.get 11
                i32.lt_s
                select
                local.tee 7
                i32.const 2147483647
                local.get 13
                i32.sub
                i32.gt_s
                br_if 2 (;@4;)
                i32.const 61
                local.set 8
                local.get 7
                local.get 13
                i32.add
                local.tee 10
                local.get 14
                local.get 10
                local.get 14
                i32.gt_s
                select
                local.tee 4
                local.get 21
                i32.gt_s
                br_if 3 (;@3;)
                local.get 0
                i32.const 32
                local.get 4
                local.get 10
                local.get 6
                call $pad
                local.get 0
                local.get 15
                local.get 13
                call $out
                local.get 0
                i32.const 48
                local.get 4
                local.get 10
                local.get 6
                i32.const 65536
                i32.xor
                call $pad
                local.get 0
                i32.const 48
                local.get 7
                local.get 11
                i32.const 0
                call $pad
                local.get 0
                local.get 9
                local.get 11
                call $out
                local.get 0
                i32.const 32
                local.get 4
                local.get 10
                local.get 6
                i32.const 8192
                i32.xor
                call $pad
                br 1 (;@5;)
              end
            end
            i32.const 0
            local.set 12
            br 3 (;@1;)
          end
          i32.const 61
          local.set 8
        end
        i32.const 3460
        local.get 8
        i32.store
      end
      i32.const -1
      local.set 12
    end
    local.get 5
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 12)
  (func $out (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.set 3
        block  ;; label = @3
          local.get 2
          local.get 0
          local.tee 1
          i32.load offset=16
          local.tee 0
          if (result i32)  ;; label = @4
            local.get 0
          else
            local.get 1
            call $__towrite
            br_if 1 (;@3;)
            local.get 1
            i32.load offset=16
          end
          local.get 1
          i32.load offset=20
          local.tee 5
          i32.sub
          i32.gt_u
          if  ;; label = @4
            local.get 1
            local.get 3
            local.get 2
            local.get 1
            i32.load offset=36
            call_indirect (type 1)
            drop
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 1
            i32.load offset=80
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 2
            local.set 0
            loop  ;; label = @5
              local.get 0
              local.tee 4
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              local.get 4
              i32.const 1
              i32.sub
              local.tee 0
              i32.add
              i32.load8_u
              i32.const 10
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 1
            local.get 3
            local.get 4
            local.get 1
            i32.load offset=36
            call_indirect (type 1)
            local.get 4
            i32.lt_u
            br_if 1 (;@3;)
            local.get 3
            local.get 4
            i32.add
            local.set 3
            local.get 2
            local.get 4
            i32.sub
            local.set 2
            local.get 1
            i32.load offset=20
            local.set 5
          end
          local.get 5
          local.get 3
          local.get 2
          call $__memcpy
          local.get 1
          local.get 1
          i32.load offset=20
          local.get 2
          i32.add
          i32.store offset=20
        end
      end
    end)
  (func $getint (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load
    i32.load8_s
    call $isdigit
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    loop  ;; label = @1
      local.get 0
      i32.load
      local.set 3
      i32.const -1
      local.set 1
      local.get 2
      i32.const 214748364
      i32.le_u
      if  ;; label = @2
        i32.const -1
        local.get 3
        i32.load8_s
        i32.const 48
        i32.sub
        local.tee 4
        local.get 2
        i32.const 10
        i32.mul
        local.tee 1
        i32.add
        local.get 4
        i32.const 2147483647
        local.get 1
        i32.sub
        i32.gt_s
        select
        local.set 1
      end
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      i32.store
      local.get 1
      local.set 2
      local.get 3
      i32.load8_s offset=1
      call $isdigit
      br_if 0 (;@1;)
    end
    local.get 2)
  (func $pop_arg (type 6) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 9
                          i32.sub
                          br_table 0 (;@11;) 8 (;@3;) 9 (;@2;) 10 (;@1;) 8 (;@3;) 9 (;@2;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 10 (;@1;) 9 (;@2;) 10 (;@1;) 10 (;@1;) 8 (;@3;) 9 (;@2;) 5 (;@6;) 6 (;@5;) 7 (;@4;)
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i32.load
                        i32.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load16_s
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load16_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load8_s
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                local.tee 1
                i32.const 4
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load8_u
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              i32.const 7
              i32.add
              i32.const -8
              i32.and
              local.tee 1
              i32.const 8
              i32.add
              i32.store
              local.get 0
              local.get 1
              f64.load
              f64.store
              return
            end
            local.get 0
            local.get 2
            i32.const 0
            call_indirect (type 5)
          end
          return
        end
        local.get 2
        local.get 2
        i32.load
        local.tee 1
        i32.const 4
        i32.add
        i32.store
        local.get 0
        local.get 1
        i64.load32_s
        i64.store
        return
      end
      local.get 2
      local.get 2
      i32.load
      local.tee 1
      i32.const 4
      i32.add
      i32.store
      local.get 0
      local.get 1
      i64.load32_u
      i64.store
      return
    end
    local.get 2
    local.get 2
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 1
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 1
    i64.load
    i64.store)
  (func $pad (type 20) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 256
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 4
    i32.const 73728
    i32.and
    local.get 2
    local.get 3
    i32.le_s
    i32.or
    i32.eqz
    if  ;; label = @1
      local.get 5
      local.get 1
      i32.const 255
      i32.and
      local.get 2
      local.get 3
      i32.sub
      local.tee 2
      i32.const 256
      local.get 2
      i32.const 256
      i32.lt_u
      local.tee 1
      select
      call $memset
      local.get 1
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call $out
          local.get 2
          i32.const 256
          i32.sub
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 2
      call $out
    end
    local.get 5
    i32.const 256
    i32.add
    global.set $__stack_pointer)
  (func $scalbn (type 21) (param i32) (result f64)
    (local f64)
    f64.const 0x1p+0 (;=1;)
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 1024
      i32.ge_s
      if  ;; label = @2
        f64.const 0x1p+1023 (;=8.98847e+307;)
        local.set 1
        local.get 0
        i32.const 2047
        i32.lt_u
        if  ;; label = @3
          local.get 0
          i32.const 1023
          i32.sub
          local.set 0
          br 2 (;@1;)
        end
        f64.const inf (;=inf;)
        local.set 1
        local.get 0
        i32.const 3069
        local.get 0
        i32.const 3069
        i32.lt_u
        select
        i32.const 2046
        i32.sub
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.const -1023
      i32.gt_s
      br_if 0 (;@1;)
      f64.const 0x1p-969 (;=2.00417e-292;)
      local.set 1
      local.get 0
      i32.const -1992
      i32.gt_u
      if  ;; label = @2
        local.get 0
        i32.const 969
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      local.set 1
      local.get 0
      i32.const -2960
      local.get 0
      i32.const -2960
      i32.gt_u
      select
      i32.const 1938
      i32.add
      local.set 0
    end
    local.get 1
    local.get 0
    i32.const 1023
    i32.add
    i64.extend_i32_u
    i64.const 52
    i64.shl
    f64.reinterpret_i64
    f64.mul)
  (func $stackSave (type 4) (result i32)
    global.get $__stack_pointer)
  (func $stackRestore (type 3) (param i32)
    local.get 0
    global.set $__stack_pointer)
  (func $stackAlloc (type 0) (param i32) (result i32)
    global.get $__stack_pointer
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set $__stack_pointer
    local.get 0)
  (table (;0;) 8 8 funcref)
  (memory (;0;) 256 256)
  (global $__stack_pointer (mut i32) (i32.const 5248064))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "_start" (func $_start))
  (export "__errno_location" (func $__errno_location))
  (export "stackSave" (func $stackSave))
  (export "stackRestore" (func $stackRestore))
  (export "stackAlloc" (func $stackAlloc))
  (elem (;0;) (i32.const 1) func $__wasm_call_ctors $__stdio_close $__stdio_read $__stdio_seek $emscripten_resize_heap $__stdio_write $__emscripten_stdout_seek)
  (data $.rodata (i32.const 1024) "infinity\00-+   0X0x\00%s\00nan\00(null)\00hello, %s\0a\00\00\00\00\00\d1t\9e\00W\9d\bd*\80pR\0f\ff\ff>'\0a\00\00\00d\00\00\00\e8\03\00\00\10'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\18\00\00\005\00\00\00q\00\00\00k\ff\ff\ff\ce\fb\ff\ff\92\bf\ff\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\01\02\03\04\05\06\07\08\09\ff\ff\ff\ff\ff\ff\ff\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\22#\ff\ff\ff\ff\ff\ff\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\22#\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\01\02\04\07\03\06\05\00\00\00\00\00\00\00\02\00\00\c0\03\00\00\c0\04\00\00\c0\05\00\00\c0\06\00\00\c0\07\00\00\c0\08\00\00\c0\09\00\00\c0\0a\00\00\c0\0b\00\00\c0\0c\00\00\c0\0d\00\00\c0\0e\00\00\c0\0f\00\00\c0\10\00\00\c0\11\00\00\c0\12\00\00\c0\13\00\00\c0\14\00\00\c0\15\00\00\c0\16\00\00\c0\17\00\00\c0\18\00\00\c0\19\00\00\c0\1a\00\00\c0\1b\00\00\c0\1c\00\00\c0\1d\00\00\c0\1e\00\00\c0\1f\00\00\c0\00\00\00\b3\01\00\00\c3\02\00\00\c3\03\00\00\c3\04\00\00\c3\05\00\00\c3\06\00\00\c3\07\00\00\c3\08\00\00\c3\09\00\00\c3\0a\00\00\c3\0b\00\00\c3\0c\00\00\c3\0d\00\00\d3\0e\00\00\c3\0f\00\00\c3\00\00\0c\bb\01\00\0c\c3\02\00\0c\c3\03\00\0c\c3\04\00\0c\db\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19")
  (data $.rodata.1 (i32.const 1713) "\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data $.rodata.2 (i32.const 1771) "\0c")
  (data $.rodata.3 (i32.const 1783) "\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data $.rodata.4 (i32.const 1829) "\10")
  (data $.rodata.5 (i32.const 1841) "\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data $.rodata.6 (i32.const 1887) "\12")
  (data $.rodata.7 (i32.const 1899) "\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data $.rodata.8 (i32.const 1954) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data $.rodata.9 (i32.const 2003) "\14")
  (data $.rodata.10 (i32.const 2015) "\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data $.rodata.11 (i32.const 2061) "\16")
  (data $.rodata.12 (i32.const 2073) "\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $.data (i32.const 2112) "\09")
  (data $.data.1 (i32.const 2124) "\02")
  (data $.data.2 (i32.const 2144) "\03\00\00\00\00\00\00\00\04\00\00\00x\09\00\00\00\04")
  (data $.data.3 (i32.const 2188) "\ff\ff\ff\ff")
  (data $.data.4 (i32.const 2256) "@\08\00\00@\14P\00\05")
  (data $.data.5 (i32.const 2276) "\05")
  (data $.data.6 (i32.const 2300) "\06\00\00\00\07\00\00\008\10\00\00\00\04")
  (data $.data.7 (i32.const 2324) "\01")
  (data $.data.8 (i32.const 2340) "\ff\ff\ff\ff\0a")
  (data $.data.9 (i32.const 2408) "\d8\08"))

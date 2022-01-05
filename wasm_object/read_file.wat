(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i64 i32) (result i64)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32) (result i32)))
  (type (;8;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__wasi_fd_write (type 5)))
  (import "wasi_snapshot_preview1" "fd_read" (func $__wasi_fd_read (type 5)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__wasi_fd_close (type 0)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__wasi_fd_seek (type 8)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__wasi_proc_exit (type 2)))
  (func $__wasm_call_ctors (type 6)
    nop)
  (func $_start (type 6)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 10
    global.set $__stack_pointer
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 13
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1068
        i32.const 1055
        i32.load8_s
        call $strchr
        i32.eqz
        if  ;; label = @3
          i32.const 1240
          i32.const 28
          i32.store
          br 1 (;@2;)
        end
        i32.const 2
        local.set 0
        i32.const 1055
        i32.const 43
        call $strchr
        i32.eqz
        if  ;; label = @3
          i32.const 1055
          i32.load8_u
          i32.const 114
          i32.ne
          local.set 0
        end
        local.get 0
        i32.const 128
        i32.or
        local.get 0
        i32.const 1055
        i32.const 120
        call $strchr
        select
        local.tee 0
        i32.const 524288
        i32.or
        local.get 0
        i32.const 1055
        i32.const 101
        call $strchr
        select
        local.tee 0
        local.get 0
        i32.const 64
        i32.or
        i32.const 1055
        i32.load8_u
        i32.const 114
        i32.eq
        select
        drop
        local.get 13
        i32.const 438
        i32.store
        block (result i32)  ;; label = @3
          i32.const 0
          i32.const 1057
          call $strcmp
          i32.eqz
          br_if 0 (;@3;)
          drop
          i32.const 1
          i32.const 1033
          call $strcmp
          i32.eqz
          br_if 0 (;@3;)
          drop
          i32.const -63
          i32.const 2
          i32.const 1045
          call $strcmp
          select
        end
        local.tee 0
        i32.const -4095
        i32.ge_u
        if  ;; label = @3
          i32.const 1240
          i32.const 0
          local.get 0
          i32.sub
          i32.store
          i32.const -1
          local.set 0
        end
        local.get 0
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
        local.get 0
        local.set 9
        global.get $__stack_pointer
        i32.const 32
        i32.sub
        local.tee 12
        global.set $__stack_pointer
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1068
              i32.const 1055
              i32.load8_s
              call $strchr
              i32.eqz
              if  ;; label = @6
                i32.const 1240
                i32.const 28
                i32.store
                br 1 (;@5;)
              end
              global.get $__stack_pointer
              i32.const 16
              i32.sub
              local.tee 14
              global.set $__stack_pointer
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                i32.const 1312
                                i32.load
                                local.tee 8
                                i32.eqz
                                br_if 0 (;@14;)
                                i32.const -1184
                                local.set 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    i32.const 1628
                                    i32.load
                                    local.tee 2
                                    if  ;; label = @17
                                      i32.const 1342177280
                                      local.set 0
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          local.get 2
                                          i32.load offset=4
                                          i32.const -8
                                          i32.and
                                          i32.const 1184
                                          i32.sub
                                          local.tee 7
                                          local.get 4
                                          i32.ge_u
                                          br_if 0 (;@19;)
                                          local.get 2
                                          local.set 3
                                          local.get 7
                                          local.tee 4
                                          br_if 0 (;@19;)
                                          i32.const 0
                                          local.set 4
                                          local.get 2
                                          local.set 1
                                          br 3 (;@16;)
                                        end
                                        local.get 1
                                        local.get 2
                                        i32.load offset=20
                                        local.tee 7
                                        local.get 7
                                        local.get 2
                                        local.get 0
                                        i32.const 29
                                        i32.shr_u
                                        i32.const 4
                                        i32.and
                                        i32.add
                                        i32.load offset=16
                                        local.tee 2
                                        i32.eq
                                        select
                                        local.get 1
                                        local.get 7
                                        select
                                        local.set 1
                                        local.get 0
                                        i32.const 1
                                        i32.shl
                                        local.set 0
                                        local.get 2
                                        br_if 0 (;@18;)
                                      end
                                    end
                                    local.get 1
                                    local.get 3
                                    i32.or
                                    i32.eqz
                                    if  ;; label = @17
                                      i32.const 0
                                      local.set 3
                                      local.get 8
                                      i32.const -32
                                      i32.and
                                      local.tee 0
                                      i32.eqz
                                      br_if 3 (;@14;)
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
                                      i32.const 1612
                                      i32.add
                                      i32.load
                                      local.set 1
                                    end
                                    local.get 1
                                    i32.eqz
                                    br_if 1 (;@15;)
                                  end
                                  loop  ;; label = @16
                                    local.get 1
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    i32.const 1184
                                    i32.sub
                                    local.tee 0
                                    local.get 4
                                    i32.lt_u
                                    local.set 2
                                    local.get 0
                                    local.get 4
                                    local.get 2
                                    select
                                    local.set 4
                                    local.get 1
                                    local.get 3
                                    local.get 2
                                    select
                                    local.set 3
                                    local.get 1
                                    i32.load offset=16
                                    local.tee 0
                                    if (result i32)  ;; label = @17
                                      local.get 0
                                    else
                                      local.get 1
                                      i32.load offset=20
                                    end
                                    local.tee 1
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 3
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 4
                                i32.const 1316
                                i32.load
                                i32.const 1184
                                i32.sub
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 3
                                i32.load offset=24
                                local.set 5
                                local.get 3
                                local.get 3
                                i32.load offset=12
                                local.tee 0
                                i32.ne
                                if  ;; label = @15
                                  local.get 3
                                  i32.load offset=8
                                  local.tee 1
                                  i32.const 1324
                                  i32.load
                                  i32.lt_u
                                  drop
                                  local.get 1
                                  local.get 0
                                  i32.store offset=12
                                  local.get 0
                                  local.get 1
                                  i32.store offset=8
                                  br 8 (;@7;)
                                end
                                local.get 3
                                i32.const 20
                                i32.add
                                local.tee 2
                                i32.load
                                local.tee 1
                                i32.eqz
                                if  ;; label = @15
                                  local.get 3
                                  i32.load offset=16
                                  local.tee 1
                                  i32.eqz
                                  br_if 2 (;@13;)
                                  local.get 3
                                  i32.const 16
                                  i32.add
                                  local.set 2
                                end
                                loop  ;; label = @15
                                  local.get 2
                                  local.set 7
                                  local.get 1
                                  local.tee 0
                                  i32.const 20
                                  i32.add
                                  local.tee 2
                                  i32.load
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  local.get 0
                                  i32.const 16
                                  i32.add
                                  local.set 2
                                  local.get 0
                                  i32.load offset=16
                                  local.tee 1
                                  br_if 0 (;@15;)
                                end
                                local.get 7
                                i32.const 0
                                i32.store
                                br 7 (;@7;)
                              end
                              i32.const 1316
                              i32.load
                              local.tee 2
                              i32.const 1184
                              i32.ge_u
                              if  ;; label = @14
                                i32.const 1328
                                i32.load
                                local.set 4
                                block  ;; label = @15
                                  local.get 2
                                  i32.const 1184
                                  i32.sub
                                  local.tee 1
                                  i32.const 16
                                  i32.ge_u
                                  if  ;; label = @16
                                    i32.const 1316
                                    local.get 1
                                    i32.store
                                    i32.const 1328
                                    local.get 4
                                    i32.const 1184
                                    i32.add
                                    local.tee 0
                                    i32.store
                                    local.get 0
                                    local.get 1
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    local.get 2
                                    local.get 4
                                    i32.add
                                    local.get 1
                                    i32.store
                                    local.get 4
                                    i32.const 1187
                                    i32.store offset=4
                                    br 1 (;@15;)
                                  end
                                  i32.const 1328
                                  i32.const 0
                                  i32.store
                                  i32.const 1316
                                  i32.const 0
                                  i32.store
                                  local.get 4
                                  local.get 2
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 2
                                  local.get 4
                                  i32.add
                                  local.tee 0
                                  local.get 0
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                end
                                local.get 4
                                i32.const 8
                                i32.add
                                local.set 1
                                br 8 (;@6;)
                              end
                              i32.const 1320
                              i32.load
                              local.tee 8
                              i32.const 1184
                              i32.gt_u
                              if  ;; label = @14
                                i32.const 1320
                                local.get 8
                                i32.const 1184
                                i32.sub
                                local.tee 1
                                i32.store
                                i32.const 1332
                                i32.const 1332
                                i32.load
                                local.tee 2
                                i32.const 1184
                                i32.add
                                local.tee 0
                                i32.store
                                local.get 0
                                local.get 1
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 2
                                i32.const 1187
                                i32.store offset=4
                                local.get 2
                                i32.const 8
                                i32.add
                                local.set 1
                                br 8 (;@6;)
                              end
                              i32.const 0
                              local.set 1
                              block (result i32)  ;; label = @14
                                i32.const 1780
                                i32.load
                                if  ;; label = @15
                                  i32.const 1788
                                  i32.load
                                  br 1 (;@14;)
                                end
                                i32.const 1792
                                i64.const -1
                                i64.store align=4
                                i32.const 1784
                                i64.const 17592186048512
                                i64.store align=4
                                i32.const 1780
                                local.get 14
                                i32.const 12
                                i32.add
                                i32.const -16
                                i32.and
                                i32.const 1431655768
                                i32.xor
                                i32.store
                                i32.const 1800
                                i32.const 0
                                i32.store
                                i32.const 1752
                                i32.const 0
                                i32.store
                                i32.const 4096
                              end
                              local.tee 0
                              i32.const 1231
                              i32.add
                              local.tee 5
                              i32.const 0
                              local.get 0
                              i32.sub
                              local.tee 7
                              i32.and
                              local.tee 2
                              i32.const 1184
                              i32.le_u
                              br_if 7 (;@6;)
                              i32.const 1748
                              i32.load
                              local.tee 3
                              if  ;; label = @14
                                i32.const 1740
                                i32.load
                                local.tee 4
                                local.get 2
                                i32.add
                                local.tee 0
                                local.get 4
                                i32.le_u
                                local.get 0
                                local.get 3
                                i32.gt_u
                                i32.or
                                br_if 8 (;@6;)
                              end
                              i32.const 1752
                              i32.load8_u
                              i32.const 4
                              i32.and
                              br_if 3 (;@10;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  i32.const 1332
                                  i32.load
                                  local.tee 4
                                  if  ;; label = @16
                                    i32.const 1756
                                    local.set 1
                                    loop  ;; label = @17
                                      local.get 4
                                      local.get 1
                                      i32.load
                                      local.tee 0
                                      i32.ge_u
                                      if  ;; label = @18
                                        local.get 0
                                        local.get 1
                                        i32.load offset=4
                                        i32.add
                                        local.get 4
                                        i32.gt_u
                                        br_if 3 (;@15;)
                                      end
                                      local.get 1
                                      i32.load offset=8
                                      local.tee 1
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  i32.const 0
                                  call $sbrk
                                  local.tee 0
                                  i32.const -1
                                  i32.eq
                                  br_if 4 (;@11;)
                                  local.get 2
                                  local.set 3
                                  i32.const 1784
                                  i32.load
                                  local.tee 4
                                  i32.const 1
                                  i32.sub
                                  local.tee 1
                                  local.get 0
                                  i32.and
                                  if  ;; label = @16
                                    local.get 2
                                    local.get 0
                                    i32.sub
                                    local.get 0
                                    local.get 1
                                    i32.add
                                    i32.const 0
                                    local.get 4
                                    i32.sub
                                    i32.and
                                    i32.add
                                    local.set 3
                                  end
                                  local.get 3
                                  i32.const 1184
                                  i32.le_u
                                  local.get 3
                                  i32.const 2147483646
                                  i32.gt_u
                                  i32.or
                                  br_if 4 (;@11;)
                                  i32.const 1748
                                  i32.load
                                  local.tee 7
                                  if  ;; label = @16
                                    i32.const 1740
                                    i32.load
                                    local.tee 4
                                    local.get 3
                                    i32.add
                                    local.tee 1
                                    local.get 4
                                    i32.le_u
                                    local.get 1
                                    local.get 7
                                    i32.gt_u
                                    i32.or
                                    br_if 5 (;@11;)
                                  end
                                  local.get 3
                                  call $sbrk
                                  local.tee 1
                                  local.get 0
                                  i32.ne
                                  br_if 1 (;@14;)
                                  br 6 (;@9;)
                                end
                                local.get 5
                                local.get 8
                                i32.sub
                                local.get 7
                                i32.and
                                local.tee 3
                                i32.const 2147483646
                                i32.gt_u
                                br_if 3 (;@11;)
                                local.get 3
                                call $sbrk
                                local.tee 0
                                local.get 1
                                i32.load
                                local.get 1
                                i32.load offset=4
                                i32.add
                                i32.eq
                                br_if 2 (;@12;)
                                local.get 0
                                local.set 1
                              end
                              local.get 1
                              i32.const -1
                              i32.eq
                              local.get 3
                              i32.const 1232
                              i32.ge_u
                              i32.or
                              i32.eqz
                              if  ;; label = @14
                                i32.const 1788
                                i32.load
                                local.tee 0
                                i32.const 1231
                                local.get 3
                                i32.sub
                                i32.add
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.and
                                local.tee 0
                                i32.const 2147483646
                                i32.gt_u
                                if  ;; label = @15
                                  local.get 1
                                  local.set 0
                                  br 6 (;@9;)
                                end
                                local.get 0
                                call $sbrk
                                i32.const -1
                                i32.ne
                                if  ;; label = @15
                                  local.get 0
                                  local.get 3
                                  i32.add
                                  local.set 3
                                  local.get 1
                                  local.set 0
                                  br 6 (;@9;)
                                end
                                i32.const 0
                                local.get 3
                                i32.sub
                                call $sbrk
                                drop
                                br 3 (;@11;)
                              end
                              local.get 1
                              local.tee 0
                              i32.const -1
                              i32.ne
                              br_if 4 (;@9;)
                              br 2 (;@11;)
                            end
                            i32.const 0
                            local.set 0
                            br 5 (;@7;)
                          end
                          local.get 0
                          i32.const -1
                          i32.ne
                          br_if 2 (;@9;)
                        end
                        i32.const 1752
                        i32.const 1752
                        i32.load
                        i32.const 4
                        i32.or
                        i32.store
                      end
                      local.get 2
                      i32.const 2147483646
                      i32.gt_u
                      br_if 1 (;@8;)
                      local.get 2
                      call $sbrk
                      local.tee 0
                      i32.const -1
                      i32.eq
                      i32.const 0
                      call $sbrk
                      local.tee 1
                      i32.const -1
                      i32.eq
                      i32.or
                      local.get 0
                      local.get 1
                      i32.ge_u
                      i32.or
                      br_if 1 (;@8;)
                      local.get 1
                      local.get 0
                      i32.sub
                      local.tee 3
                      i32.const 1224
                      i32.le_u
                      br_if 1 (;@8;)
                    end
                    i32.const 1740
                    i32.const 1740
                    i32.load
                    local.get 3
                    i32.add
                    local.tee 1
                    i32.store
                    i32.const 1744
                    i32.load
                    local.get 1
                    i32.lt_u
                    if  ;; label = @9
                      i32.const 1744
                      local.get 1
                      i32.store
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 1332
                          i32.load
                          local.tee 5
                          if  ;; label = @12
                            i32.const 1756
                            local.set 1
                            loop  ;; label = @13
                              local.get 0
                              local.get 1
                              i32.load
                              local.tee 4
                              local.get 1
                              i32.load offset=4
                              local.tee 2
                              i32.add
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 1
                              i32.load offset=8
                              local.tee 1
                              br_if 0 (;@13;)
                            end
                            br 2 (;@10;)
                          end
                          i32.const 1324
                          i32.load
                          local.tee 1
                          i32.const 0
                          local.get 0
                          local.get 1
                          i32.ge_u
                          select
                          i32.eqz
                          if  ;; label = @12
                            i32.const 1324
                            local.get 0
                            i32.store
                          end
                          i32.const 0
                          local.set 1
                          i32.const 1760
                          local.get 3
                          i32.store
                          i32.const 1756
                          local.get 0
                          i32.store
                          i32.const 1340
                          i32.const -1
                          i32.store
                          i32.const 1344
                          i32.const 1780
                          i32.load
                          i32.store
                          i32.const 1768
                          i32.const 0
                          i32.store
                          loop  ;; label = @12
                            local.get 1
                            i32.const 3
                            i32.shl
                            local.tee 4
                            i32.const 1356
                            i32.add
                            local.get 4
                            i32.const 1348
                            i32.add
                            local.tee 2
                            i32.store
                            local.get 4
                            i32.const 1360
                            i32.add
                            local.get 2
                            i32.store
                            local.get 1
                            i32.const 1
                            i32.add
                            local.tee 1
                            i32.const 32
                            i32.ne
                            br_if 0 (;@12;)
                          end
                          i32.const 1320
                          local.get 3
                          i32.const 40
                          i32.sub
                          local.tee 4
                          i32.const -8
                          local.get 0
                          i32.sub
                          i32.const 7
                          i32.and
                          i32.const 0
                          local.get 0
                          i32.const 8
                          i32.add
                          i32.const 7
                          i32.and
                          select
                          local.tee 1
                          i32.sub
                          local.tee 2
                          i32.store
                          i32.const 1332
                          local.get 0
                          local.get 1
                          i32.add
                          local.tee 1
                          i32.store
                          local.get 1
                          local.get 2
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 4
                          i32.add
                          i32.const 40
                          i32.store offset=4
                          i32.const 1336
                          i32.const 1796
                          i32.load
                          i32.store
                          br 2 (;@9;)
                        end
                        local.get 1
                        i32.load8_u offset=12
                        i32.const 8
                        i32.and
                        local.get 4
                        local.get 5
                        i32.gt_u
                        i32.or
                        local.get 0
                        local.get 5
                        i32.le_u
                        i32.or
                        br_if 0 (;@10;)
                        local.get 1
                        local.get 2
                        local.get 3
                        i32.add
                        i32.store offset=4
                        i32.const 1332
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
                        i32.const 1320
                        i32.const 1320
                        i32.load
                        local.get 3
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
                        i32.const 1336
                        i32.const 1796
                        i32.load
                        i32.store
                        br 1 (;@9;)
                      end
                      i32.const 1324
                      i32.load
                      local.get 0
                      i32.gt_u
                      if  ;; label = @10
                        i32.const 1324
                        local.get 0
                        i32.store
                      end
                      local.get 0
                      local.get 3
                      i32.add
                      local.set 2
                      i32.const 1756
                      local.set 1
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 2
                                    local.get 1
                                    i32.load
                                    i32.ne
                                    if  ;; label = @17
                                      local.get 1
                                      i32.load offset=8
                                      local.tee 1
                                      br_if 1 (;@16;)
                                      br 2 (;@15;)
                                    end
                                  end
                                  local.get 1
                                  i32.load8_u offset=12
                                  i32.const 8
                                  i32.and
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                i32.const 1756
                                local.set 1
                                loop  ;; label = @15
                                  local.get 5
                                  local.get 1
                                  i32.load
                                  local.tee 2
                                  i32.ge_u
                                  if  ;; label = @16
                                    local.get 2
                                    local.get 1
                                    i32.load offset=4
                                    i32.add
                                    local.tee 7
                                    local.get 5
                                    i32.gt_u
                                    br_if 3 (;@13;)
                                  end
                                  local.get 1
                                  i32.load offset=8
                                  local.set 1
                                  br 0 (;@15;)
                                end
                                unreachable
                              end
                              local.get 1
                              local.get 0
                              i32.store
                              local.get 1
                              local.get 1
                              i32.load offset=4
                              local.get 3
                              i32.add
                              i32.store offset=4
                              local.get 0
                              i32.const -8
                              local.get 0
                              i32.sub
                              i32.const 7
                              i32.and
                              i32.const 0
                              local.get 0
                              i32.const 8
                              i32.add
                              i32.const 7
                              i32.and
                              select
                              i32.add
                              local.tee 8
                              i32.const 1187
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
                              local.tee 3
                              local.get 8
                              i32.const 1184
                              i32.add
                              local.tee 6
                              i32.sub
                              local.set 2
                              local.get 3
                              local.get 5
                              i32.eq
                              if  ;; label = @14
                                i32.const 1332
                                local.get 6
                                i32.store
                                i32.const 1320
                                i32.const 1320
                                i32.load
                                local.get 2
                                i32.add
                                local.tee 0
                                i32.store
                                local.get 6
                                local.get 0
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                br 3 (;@11;)
                              end
                              local.get 3
                              i32.const 1328
                              i32.load
                              i32.eq
                              if  ;; label = @14
                                i32.const 1328
                                local.get 6
                                i32.store
                                i32.const 1316
                                i32.const 1316
                                i32.load
                                local.get 2
                                i32.add
                                local.tee 0
                                i32.store
                                local.get 6
                                local.get 0
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 0
                                local.get 6
                                i32.add
                                local.get 0
                                i32.store
                                br 3 (;@11;)
                              end
                              local.get 3
                              i32.load offset=4
                              local.tee 0
                              i32.const 3
                              i32.and
                              i32.const 1
                              i32.eq
                              if  ;; label = @14
                                local.get 0
                                i32.const -8
                                i32.and
                                local.set 5
                                block  ;; label = @15
                                  local.get 0
                                  i32.const 255
                                  i32.le_u
                                  if  ;; label = @16
                                    local.get 3
                                    i32.load offset=8
                                    local.tee 4
                                    local.get 0
                                    i32.const 3
                                    i32.shr_u
                                    local.tee 0
                                    i32.const 3
                                    i32.shl
                                    i32.const 1348
                                    i32.add
                                    i32.eq
                                    drop
                                    local.get 4
                                    local.get 3
                                    i32.load offset=12
                                    local.tee 1
                                    i32.eq
                                    if  ;; label = @17
                                      i32.const 1308
                                      i32.const 1308
                                      i32.load
                                      i32.const -2
                                      local.get 0
                                      i32.rotl
                                      i32.and
                                      i32.store
                                      br 2 (;@15;)
                                    end
                                    local.get 4
                                    local.get 1
                                    i32.store offset=12
                                    local.get 1
                                    local.get 4
                                    i32.store offset=8
                                    br 1 (;@15;)
                                  end
                                  local.get 3
                                  i32.load offset=24
                                  local.set 11
                                  block  ;; label = @16
                                    local.get 3
                                    local.get 3
                                    i32.load offset=12
                                    local.tee 0
                                    i32.ne
                                    if  ;; label = @17
                                      local.get 3
                                      i32.load offset=8
                                      local.tee 1
                                      local.get 0
                                      i32.store offset=12
                                      local.get 0
                                      local.get 1
                                      i32.store offset=8
                                      br 1 (;@16;)
                                    end
                                    block  ;; label = @17
                                      local.get 3
                                      i32.const 20
                                      i32.add
                                      local.tee 1
                                      i32.load
                                      local.tee 4
                                      br_if 0 (;@17;)
                                      local.get 3
                                      i32.const 16
                                      i32.add
                                      local.tee 1
                                      i32.load
                                      local.tee 4
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 0
                                      br 1 (;@16;)
                                    end
                                    loop  ;; label = @17
                                      local.get 1
                                      local.set 7
                                      local.get 4
                                      local.tee 0
                                      i32.const 20
                                      i32.add
                                      local.tee 1
                                      i32.load
                                      local.tee 4
                                      br_if 0 (;@17;)
                                      local.get 0
                                      i32.const 16
                                      i32.add
                                      local.set 1
                                      local.get 0
                                      i32.load offset=16
                                      local.tee 4
                                      br_if 0 (;@17;)
                                    end
                                    local.get 7
                                    i32.const 0
                                    i32.store
                                  end
                                  local.get 11
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    local.get 3
                                    local.get 3
                                    i32.load offset=28
                                    local.tee 4
                                    i32.const 2
                                    i32.shl
                                    i32.const 1612
                                    i32.add
                                    local.tee 1
                                    i32.load
                                    i32.eq
                                    if  ;; label = @17
                                      local.get 1
                                      local.get 0
                                      i32.store
                                      local.get 0
                                      br_if 1 (;@16;)
                                      i32.const 1312
                                      i32.const 1312
                                      i32.load
                                      i32.const -2
                                      local.get 4
                                      i32.rotl
                                      i32.and
                                      i32.store
                                      br 2 (;@15;)
                                    end
                                    local.get 11
                                    i32.const 16
                                    i32.const 20
                                    local.get 11
                                    i32.load offset=16
                                    local.get 3
                                    i32.eq
                                    select
                                    i32.add
                                    local.get 0
                                    i32.store
                                    local.get 0
                                    i32.eqz
                                    br_if 1 (;@15;)
                                  end
                                  local.get 0
                                  local.get 11
                                  i32.store offset=24
                                  local.get 3
                                  i32.load offset=16
                                  local.tee 1
                                  if  ;; label = @16
                                    local.get 0
                                    local.get 1
                                    i32.store offset=16
                                    local.get 1
                                    local.get 0
                                    i32.store offset=24
                                  end
                                  local.get 3
                                  i32.load offset=20
                                  local.tee 1
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 0
                                  local.get 1
                                  i32.store offset=20
                                  local.get 1
                                  local.get 0
                                  i32.store offset=24
                                end
                                local.get 3
                                local.get 5
                                i32.add
                                local.set 3
                                local.get 2
                                local.get 5
                                i32.add
                                local.set 2
                              end
                              local.get 3
                              local.get 3
                              i32.load offset=4
                              i32.const -2
                              i32.and
                              i32.store offset=4
                              local.get 6
                              local.get 2
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 2
                              local.get 6
                              i32.add
                              local.get 2
                              i32.store
                              local.get 2
                              i32.const 255
                              i32.le_u
                              if  ;; label = @14
                                local.get 2
                                i32.const 3
                                i32.shr_u
                                local.tee 0
                                i32.const 3
                                i32.shl
                                i32.const 1348
                                i32.add
                                local.set 2
                                block (result i32)  ;; label = @15
                                  i32.const 1308
                                  i32.load
                                  local.tee 1
                                  i32.const 1
                                  local.get 0
                                  i32.shl
                                  local.tee 0
                                  i32.and
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 1308
                                    local.get 0
                                    local.get 1
                                    i32.or
                                    i32.store
                                    local.get 2
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.load offset=8
                                end
                                local.set 0
                                local.get 2
                                local.get 6
                                i32.store offset=8
                                local.get 0
                                local.get 6
                                i32.store offset=12
                                local.get 6
                                local.get 2
                                i32.store offset=12
                                local.get 6
                                local.get 0
                                i32.store offset=8
                                br 3 (;@11;)
                              end
                              i32.const 31
                              local.set 1
                              local.get 2
                              i32.const 16777215
                              i32.le_u
                              if  ;; label = @14
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
                                local.tee 4
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
                                local.get 4
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
                                local.set 1
                              end
                              local.get 6
                              local.get 1
                              i32.store offset=28
                              local.get 6
                              i64.const 0
                              i64.store offset=16 align=4
                              local.get 1
                              i32.const 2
                              i32.shl
                              i32.const 1612
                              i32.add
                              local.set 3
                              block  ;; label = @14
                                i32.const 1312
                                i32.load
                                local.tee 4
                                i32.const 1
                                local.get 1
                                i32.shl
                                local.tee 0
                                i32.and
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 1312
                                  local.get 0
                                  local.get 4
                                  i32.or
                                  i32.store
                                  local.get 3
                                  local.get 6
                                  i32.store
                                  local.get 6
                                  local.get 3
                                  i32.store offset=24
                                  br 1 (;@14;)
                                end
                                local.get 2
                                i32.const 0
                                i32.const 25
                                local.get 1
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 1
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 1
                                local.get 3
                                i32.load
                                local.set 0
                                loop  ;; label = @15
                                  local.get 0
                                  local.tee 4
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 2
                                  i32.eq
                                  br_if 3 (;@12;)
                                  local.get 1
                                  i32.const 29
                                  i32.shr_u
                                  local.set 0
                                  local.get 1
                                  i32.const 1
                                  i32.shl
                                  local.set 1
                                  local.get 4
                                  local.get 0
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  local.tee 3
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 0 (;@15;)
                                end
                                local.get 3
                                local.get 6
                                i32.store offset=16
                                local.get 6
                                local.get 4
                                i32.store offset=24
                              end
                              local.get 6
                              local.get 6
                              i32.store offset=12
                              local.get 6
                              local.get 6
                              i32.store offset=8
                              br 2 (;@11;)
                            end
                            i32.const 1320
                            local.get 3
                            i32.const 40
                            i32.sub
                            local.tee 4
                            i32.const -8
                            local.get 0
                            i32.sub
                            i32.const 7
                            i32.and
                            i32.const 0
                            local.get 0
                            i32.const 8
                            i32.add
                            i32.const 7
                            i32.and
                            select
                            local.tee 1
                            i32.sub
                            local.tee 2
                            i32.store
                            i32.const 1332
                            local.get 0
                            local.get 1
                            i32.add
                            local.tee 1
                            i32.store
                            local.get 1
                            local.get 2
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 4
                            i32.add
                            i32.const 40
                            i32.store offset=4
                            i32.const 1336
                            i32.const 1796
                            i32.load
                            i32.store
                            local.get 5
                            local.get 7
                            i32.const 39
                            local.get 7
                            i32.sub
                            i32.const 7
                            i32.and
                            i32.const 0
                            local.get 7
                            i32.const 39
                            i32.sub
                            i32.const 7
                            i32.and
                            select
                            i32.add
                            i32.const 47
                            i32.sub
                            local.tee 1
                            local.get 1
                            local.get 5
                            i32.const 16
                            i32.add
                            i32.lt_u
                            select
                            local.tee 2
                            i32.const 27
                            i32.store offset=4
                            local.get 2
                            i32.const 1764
                            i64.load align=4
                            i64.store offset=16 align=4
                            local.get 2
                            i32.const 1756
                            i64.load align=4
                            i64.store offset=8 align=4
                            i32.const 1764
                            local.get 2
                            i32.const 8
                            i32.add
                            i32.store
                            i32.const 1760
                            local.get 3
                            i32.store
                            i32.const 1756
                            local.get 0
                            i32.store
                            i32.const 1768
                            i32.const 0
                            i32.store
                            local.get 2
                            i32.const 24
                            i32.add
                            local.set 1
                            loop  ;; label = @13
                              local.get 1
                              i32.const 7
                              i32.store offset=4
                              local.get 1
                              i32.const 8
                              i32.add
                              local.set 0
                              local.get 1
                              i32.const 4
                              i32.add
                              local.set 1
                              local.get 0
                              local.get 7
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                            local.get 2
                            local.get 5
                            i32.eq
                            br_if 3 (;@9;)
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
                            local.tee 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 2
                            local.get 3
                            i32.store
                            local.get 3
                            i32.const 255
                            i32.le_u
                            if  ;; label = @13
                              local.get 3
                              i32.const 3
                              i32.shr_u
                              local.tee 0
                              i32.const 3
                              i32.shl
                              i32.const 1348
                              i32.add
                              local.set 2
                              block (result i32)  ;; label = @14
                                i32.const 1308
                                i32.load
                                local.tee 1
                                i32.const 1
                                local.get 0
                                i32.shl
                                local.tee 0
                                i32.and
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 1308
                                  local.get 0
                                  local.get 1
                                  i32.or
                                  i32.store
                                  local.get 2
                                  br 1 (;@14;)
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
                              br 4 (;@9;)
                            end
                            i32.const 31
                            local.set 1
                            local.get 5
                            i64.const 0
                            i64.store offset=16 align=4
                            local.get 3
                            i32.const 16777215
                            i32.le_u
                            if  ;; label = @13
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
                              local.set 1
                            end
                            local.get 5
                            local.get 1
                            i32.store offset=28
                            local.get 1
                            i32.const 2
                            i32.shl
                            i32.const 1612
                            i32.add
                            local.set 4
                            block  ;; label = @13
                              i32.const 1312
                              i32.load
                              local.tee 2
                              i32.const 1
                              local.get 1
                              i32.shl
                              local.tee 0
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                i32.const 1312
                                local.get 0
                                local.get 2
                                i32.or
                                i32.store
                                local.get 4
                                local.get 5
                                i32.store
                                local.get 5
                                local.get 4
                                i32.store offset=24
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 0
                              i32.const 25
                              local.get 1
                              i32.const 1
                              i32.shr_u
                              i32.sub
                              local.get 1
                              i32.const 31
                              i32.eq
                              select
                              i32.shl
                              local.set 1
                              local.get 4
                              i32.load
                              local.set 0
                              loop  ;; label = @14
                                local.get 0
                                local.tee 2
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.eq
                                br_if 4 (;@10;)
                                local.get 1
                                i32.const 29
                                i32.shr_u
                                local.set 0
                                local.get 1
                                i32.const 1
                                i32.shl
                                local.set 1
                                local.get 2
                                local.get 0
                                i32.const 4
                                i32.and
                                i32.add
                                local.tee 4
                                i32.load offset=16
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                              local.get 4
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
                            br 3 (;@9;)
                          end
                          local.get 4
                          i32.load offset=8
                          local.tee 0
                          local.get 6
                          i32.store offset=12
                          local.get 4
                          local.get 6
                          i32.store offset=8
                          local.get 6
                          i32.const 0
                          i32.store offset=24
                          local.get 6
                          local.get 4
                          i32.store offset=12
                          local.get 6
                          local.get 0
                          i32.store offset=8
                        end
                        local.get 8
                        i32.const 8
                        i32.add
                        local.set 1
                        br 4 (;@6;)
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
                    i32.const 1320
                    i32.load
                    local.tee 0
                    i32.const 1184
                    i32.le_u
                    br_if 0 (;@8;)
                    i32.const 1320
                    local.get 0
                    i32.const 1184
                    i32.sub
                    local.tee 1
                    i32.store
                    i32.const 1332
                    i32.const 1332
                    i32.load
                    local.tee 2
                    i32.const 1184
                    i32.add
                    local.tee 0
                    i32.store
                    local.get 0
                    local.get 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 2
                    i32.const 1187
                    i32.store offset=4
                    local.get 2
                    i32.const 8
                    i32.add
                    local.set 1
                    br 2 (;@6;)
                  end
                  i32.const 1240
                  i32.const 48
                  i32.store
                  i32.const 0
                  local.set 1
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 5
                  i32.eqz
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 3
                    i32.load offset=28
                    local.tee 2
                    i32.const 2
                    i32.shl
                    i32.const 1612
                    i32.add
                    local.tee 1
                    i32.load
                    local.get 3
                    i32.eq
                    if  ;; label = @9
                      local.get 1
                      local.get 0
                      i32.store
                      local.get 0
                      br_if 1 (;@8;)
                      i32.const 1312
                      local.get 8
                      i32.const -2
                      local.get 2
                      i32.rotl
                      i32.and
                      local.tee 8
                      i32.store
                      br 2 (;@7;)
                    end
                    local.get 5
                    i32.const 16
                    i32.const 20
                    local.get 5
                    i32.load offset=16
                    local.get 3
                    i32.eq
                    select
                    i32.add
                    local.get 0
                    i32.store
                    local.get 0
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 0
                  local.get 5
                  i32.store offset=24
                  local.get 3
                  i32.load offset=16
                  local.tee 1
                  if  ;; label = @8
                    local.get 0
                    local.get 1
                    i32.store offset=16
                    local.get 1
                    local.get 0
                    i32.store offset=24
                  end
                  local.get 3
                  i32.load offset=20
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 1
                  i32.store offset=20
                  local.get 1
                  local.get 0
                  i32.store offset=24
                end
                block  ;; label = @7
                  local.get 4
                  i32.const 15
                  i32.le_u
                  if  ;; label = @8
                    local.get 3
                    local.get 4
                    i32.const 1184
                    i32.add
                    local.tee 0
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 3
                    i32.add
                    local.tee 0
                    local.get 0
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.const 1187
                  i32.store offset=4
                  local.get 3
                  i32.const 1184
                  i32.add
                  local.tee 5
                  local.get 4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 4
                  local.get 5
                  i32.add
                  local.get 4
                  i32.store
                  local.get 4
                  i32.const 255
                  i32.le_u
                  if  ;; label = @8
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    local.tee 0
                    i32.const 3
                    i32.shl
                    i32.const 1348
                    i32.add
                    local.set 2
                    block (result i32)  ;; label = @9
                      i32.const 1308
                      i32.load
                      local.tee 1
                      i32.const 1
                      local.get 0
                      i32.shl
                      local.tee 0
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1308
                        local.get 0
                        local.get 1
                        i32.or
                        i32.store
                        local.get 2
                        br 1 (;@9;)
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
                    br 1 (;@7;)
                  end
                  i32.const 31
                  local.set 1
                  local.get 4
                  i32.const 16777215
                  i32.le_u
                  if  ;; label = @8
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
                    local.set 1
                  end
                  local.get 5
                  local.get 1
                  i32.store offset=28
                  local.get 5
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 1
                  i32.const 2
                  i32.shl
                  i32.const 1612
                  i32.add
                  local.set 0
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 8
                      i32.const 1
                      local.get 1
                      i32.shl
                      local.tee 2
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1312
                        local.get 2
                        local.get 8
                        i32.or
                        i32.store
                        local.get 0
                        local.get 5
                        i32.store
                        br 1 (;@9;)
                      end
                      local.get 4
                      i32.const 0
                      i32.const 25
                      local.get 1
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 1
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 1
                      local.get 0
                      i32.load
                      local.set 2
                      loop  ;; label = @10
                        local.get 2
                        local.tee 0
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 4
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 1
                        i32.const 29
                        i32.shr_u
                        local.set 2
                        local.get 1
                        i32.const 1
                        i32.shl
                        local.set 1
                        local.get 0
                        local.get 2
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 7
                        i32.load offset=16
                        local.tee 2
                        br_if 0 (;@10;)
                      end
                      local.get 7
                      local.get 5
                      i32.store offset=16
                    end
                    local.get 5
                    local.get 0
                    i32.store offset=24
                    local.get 5
                    local.get 5
                    i32.store offset=12
                    local.get 5
                    local.get 5
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load offset=8
                  local.tee 1
                  local.get 5
                  i32.store offset=12
                  local.get 0
                  local.get 5
                  i32.store offset=8
                  local.get 5
                  i32.const 0
                  i32.store offset=24
                  local.get 5
                  local.get 0
                  i32.store offset=12
                  local.get 5
                  local.get 1
                  i32.store offset=8
                end
                local.get 3
                i32.const 8
                i32.add
                local.set 1
              end
              local.get 14
              i32.const 16
              i32.add
              global.set $__stack_pointer
              local.get 1
              local.tee 0
              br_if 1 (;@4;)
            end
            i32.const 0
            br 1 (;@3;)
          end
          i32.const 144
          local.set 2
          loop  ;; label = @4
            local.get 1
            i32.const 0
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.sub
            local.tee 2
            br_if 0 (;@4;)
          end
          i32.const 1055
          i32.const 43
          call $strchr
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const 8
            i32.const 4
            i32.const 1055
            i32.load8_u
            i32.const 114
            i32.eq
            select
            i32.store
          end
          block  ;; label = @4
            i32.const 1055
            i32.load8_u
            i32.const 97
            i32.ne
            if  ;; label = @5
              local.get 0
              i32.load
              local.set 1
              br 1 (;@4;)
            end
            local.get 0
            local.get 0
            i32.load
            i32.const 128
            i32.or
            local.tee 1
            i32.store
          end
          local.get 0
          i32.const -1
          i32.store offset=80
          local.get 0
          i32.const 1024
          i32.store offset=48
          local.get 0
          local.get 9
          i32.store offset=60
          local.get 0
          local.get 0
          i32.const 152
          i32.add
          i32.store offset=44
          local.get 1
          i32.const 8
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 12
            local.get 12
            i32.const 24
            i32.add
            i32.store
          end
          local.get 0
          i32.const 2
          i32.store offset=40
          local.get 0
          i32.const 3
          i32.store offset=36
          local.get 0
          i32.const 4
          i32.store offset=32
          local.get 0
          i32.const 5
          i32.store offset=12
          i32.const 1245
          i32.load8_u
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const -1
            i32.store offset=76
          end
          local.get 0
          i32.const 1304
          i32.load
          i32.store offset=56
          i32.const 1304
          i32.load
          local.tee 1
          if  ;; label = @4
            local.get 1
            local.get 0
            i32.store offset=52
          end
          i32.const 1304
          local.get 0
          i32.store
          local.get 0
        end
        local.set 1
        local.get 12
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 1
        br_if 1 (;@1;)
        local.get 9
        call $__wasi_fd_close
        drop
      end
      i32.const 0
      local.set 1
    end
    local.get 13
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    local.tee 0
    i32.load offset=76
    drop
    i32.const 254
    local.set 9
    local.get 10
    local.set 2
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 1
              local.get 0
              i32.load offset=8
              local.tee 4
              i32.eq
              br_if 0 (;@5;)
              block (result i32)  ;; label = @6
                block (result i32)  ;; label = @7
                  local.get 4
                  local.get 1
                  i32.sub
                  local.tee 3
                  i32.const 0
                  i32.ne
                  local.set 4
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 3
                        i32.and
                        i32.eqz
                        local.get 3
                        i32.eqz
                        i32.or
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 1
                          i32.load8_u
                          i32.const 10
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 3
                          i32.const 1
                          i32.sub
                          local.tee 3
                          i32.const 0
                          i32.ne
                          local.set 4
                          local.get 1
                          i32.const 1
                          i32.add
                          local.tee 1
                          i32.const 3
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 3
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 4
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    block  ;; label = @9
                      local.get 1
                      i32.load8_u
                      i32.const 10
                      i32.eq
                      local.get 3
                      i32.const 4
                      i32.lt_u
                      i32.or
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 1
                        i32.load
                        i32.const 168430090
                        i32.xor
                        local.tee 4
                        i32.const -1
                        i32.xor
                        local.get 4
                        i32.const 16843009
                        i32.sub
                        i32.and
                        i32.const -2139062144
                        i32.and
                        br_if 1 (;@9;)
                        local.get 1
                        i32.const 4
                        i32.add
                        local.set 1
                        local.get 3
                        i32.const 4
                        i32.sub
                        local.tee 3
                        i32.const 3
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 3
                    i32.eqz
                    br_if 0 (;@8;)
                    loop  ;; label = @9
                      local.get 1
                      local.get 1
                      i32.load8_u
                      i32.const 10
                      i32.eq
                      br_if 2 (;@7;)
                      drop
                      local.get 1
                      i32.const 1
                      i32.add
                      local.set 1
                      local.get 3
                      i32.const 1
                      i32.sub
                      local.tee 3
                      br_if 0 (;@9;)
                    end
                  end
                  i32.const 0
                end
                local.tee 4
                if  ;; label = @7
                  local.get 4
                  local.get 0
                  i32.load offset=4
                  local.tee 3
                  i32.sub
                  i32.const 1
                  i32.add
                  br 1 (;@6;)
                end
                local.get 0
                i32.load offset=8
                local.get 0
                i32.load offset=4
                local.tee 3
                i32.sub
              end
              local.set 1
              local.get 2
              local.get 3
              local.get 1
              local.get 9
              local.get 1
              local.get 9
              i32.lt_u
              select
              local.tee 3
              call $__memcpy
              local.get 0
              local.get 0
              i32.load offset=4
              local.get 3
              i32.add
              local.tee 1
              i32.store offset=4
              local.get 2
              local.get 3
              i32.add
              local.set 2
              local.get 4
              br_if 2 (;@3;)
              local.get 9
              local.get 3
              i32.sub
              local.tee 9
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              local.get 0
              i32.load offset=8
              i32.eq
              br_if 0 (;@5;)
              local.get 0
              local.get 1
              i32.const 1
              i32.add
              i32.store offset=4
              local.get 1
              i32.load8_u
              local.set 3
              br 1 (;@4;)
            end
            global.get $__stack_pointer
            i32.const 16
            i32.sub
            local.tee 7
            global.set $__stack_pointer
            i32.const -1
            local.set 3
            block  ;; label = @5
              block (result i32)  ;; label = @6
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
                i32.load offset=20
                local.get 0
                i32.load offset=28
                i32.ne
                if  ;; label = @7
                  local.get 0
                  i32.const 0
                  i32.const 0
                  local.get 0
                  i32.load offset=36
                  call_indirect (type 1)
                  drop
                end
                local.get 0
                i32.const 0
                i32.store offset=28
                local.get 0
                i64.const 0
                i64.store offset=16
                local.get 0
                i32.load
                local.tee 4
                i32.const 4
                i32.and
                if  ;; label = @7
                  local.get 0
                  local.get 4
                  i32.const 32
                  i32.or
                  i32.store
                  i32.const -1
                  br 1 (;@6;)
                end
                local.get 0
                local.get 0
                i32.load offset=44
                local.get 0
                i32.load offset=48
                i32.add
                local.tee 1
                i32.store offset=8
                local.get 0
                local.get 1
                i32.store offset=4
                local.get 4
                i32.const 27
                i32.shl
                i32.const 31
                i32.shr_s
              end
              br_if 0 (;@5;)
              local.get 0
              local.get 7
              i32.const 15
              i32.add
              i32.const 1
              local.get 0
              i32.load offset=32
              call_indirect (type 1)
              i32.const 1
              i32.ne
              br_if 0 (;@5;)
              local.get 7
              i32.load8_u offset=15
              local.set 3
            end
            local.get 7
            i32.const 16
            i32.add
            global.set $__stack_pointer
            local.get 3
            i32.const 0
            i32.ge_s
            br_if 0 (;@4;)
            local.get 2
            local.get 10
            i32.eq
            br_if 3 (;@1;)
            local.get 0
            i32.load8_u
            i32.const 16
            i32.and
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 2
          local.get 3
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 3
          i32.const 255
          i32.and
          i32.const 10
          i32.eq
          br_if 0 (;@3;)
          local.get 9
          i32.const 1
          i32.sub
          local.tee 9
          br_if 1 (;@2;)
        end
      end
      local.get 10
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.store8
    end
    i32.const 1156
    i32.load
    drop
    block  ;; label = @1
      i32.const -1
      i32.const 0
      block (result i32)  ;; label = @2
        local.get 10
        call $strlen
        local.tee 2
        local.get 2
        block (result i32)  ;; label = @3
          i32.const 1156
          i32.load
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            local.get 10
            local.get 2
            call $__fwritex
            br 1 (;@3;)
          end
          local.get 10
          local.get 2
          call $__fwritex
        end
        local.tee 1
        i32.eq
        br_if 0 (;@2;)
        drop
        local.get 1
      end
      local.get 2
      i32.ne
      select
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 1160
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 1100
        i32.load
        local.tee 1
        i32.const 1096
        i32.load
        i32.eq
        br_if 0 (;@2;)
        i32.const 1100
        local.get 1
        i32.const 1
        i32.add
        i32.store
        local.get 1
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 10
      i32.store8 offset=15
      block  ;; label = @2
        block  ;; label = @3
          i32.const 1096
          i32.load
          local.tee 1
          if (result i32)  ;; label = @4
            local.get 1
          else
            call $__towrite
            br_if 2 (;@2;)
            i32.const 1096
            i32.load
          end
          i32.const 1100
          i32.load
          local.tee 1
          i32.eq
          br_if 0 (;@3;)
          i32.const 1160
          i32.load
          i32.const 10
          i32.eq
          br_if 0 (;@3;)
          i32.const 1100
          local.get 1
          i32.const 1
          i32.add
          i32.store
          local.get 1
          i32.const 10
          i32.store8
          br 1 (;@2;)
        end
        i32.const 1080
        local.get 2
        i32.const 15
        i32.add
        i32.const 1
        i32.const 1116
        i32.load
        call_indirect (type 1)
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.load8_u offset=15
        drop
      end
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
    end
    local.get 0
    i32.load offset=76
    drop
    local.get 0
    call $fflush
    drop
    local.get 0
    local.get 0
    i32.load offset=12
    call_indirect (type 0)
    drop
    local.get 0
    i32.load8_u
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load offset=52
      local.tee 2
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.load offset=56
        i32.store offset=56
      end
      local.get 0
      i32.load offset=56
      local.tee 1
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.store offset=52
      end
      local.get 0
      i32.const 1304
      i32.load
      i32.eq
      if  ;; label = @2
        i32.const 1304
        local.get 1
        i32.store
      end
      local.get 0
      i32.load offset=96
      call $dlfree
      local.get 0
      call $dlfree
    end
    local.get 10
    i32.const 112
    i32.add
    global.set $__stack_pointer
    i32.const 1304
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
    i32.const 1236
    i32.load
    call $close_file
    i32.const 1224
    i32.load
    call $close_file
    i32.const 1232
    i32.load
    call $close_file
    i32.const 0
    call $__wasi_proc_exit
    unreachable)
  (func $fflush (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1224
      i32.load
      if  ;; label = @2
        i32.const 1224
        i32.load
        call $fflush
        local.set 1
      end
      i32.const 1232
      i32.load
      if  ;; label = @2
        i32.const 1232
        i32.load
        call $fflush
        local.get 1
        i32.or
        local.set 1
      end
      i32.const 1304
      i32.load
      local.tee 0
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=76
          drop
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=28
          i32.ne
          if  ;; label = @4
            local.get 0
            call $fflush
            local.get 1
            i32.or
            local.set 1
          end
          local.get 0
          i32.load offset=56
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      local.get 1
      return
    end
    local.get 0
    i32.load offset=76
    i32.const 0
    i32.ge_s
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=28
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 1)
        drop
        local.get 0
        i32.load offset=20
        br_if 0 (;@2;)
        i32.const -1
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 3
        i32.sub
        i64.extend_i32_s
        i32.const 1
        local.get 0
        i32.load offset=40
        call_indirect (type 3)
        drop
      end
      i32.const 0
      local.set 1
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      i64.const 0
      i64.store offset=4 align=4
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 1)
  (func $close_file (type 2) (param i32)
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
      call_indirect (type 3)
      drop
    end)
  (func $__errno_location (type 4) (result i32)
    i32.const 1240)
  (func $__stdio_seek (type 3) (param i32 i64 i32) (result i64)
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
  (func $__stdio_close (type 0) (param i32) (result i32)
    local.get 0
    i32.load offset=60
    call $__wasi_fd_close)
  (func $strchr (type 7) (param i32 i32) (result i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.and
        local.tee 3
        if  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          if  ;; label = @4
            loop  ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 2
              i32.eqz
              local.get 2
              local.get 1
              i32.const 255
              i32.and
              i32.eq
              i32.or
              br_if 3 (;@2;)
              local.get 0
              i32.const 1
              i32.add
              local.tee 0
              i32.const 3
              i32.and
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 0
            i32.load
            local.tee 2
            i32.const -1
            i32.xor
            local.get 2
            i32.const 16843009
            i32.sub
            i32.and
            i32.const -2139062144
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 16843009
            i32.mul
            local.set 3
            loop  ;; label = @5
              local.get 2
              local.get 3
              i32.xor
              local.tee 2
              i32.const -1
              i32.xor
              local.get 2
              i32.const 16843009
              i32.sub
              i32.and
              i32.const -2139062144
              i32.and
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=4
              local.set 2
              local.get 0
              i32.const 4
              i32.add
              local.set 0
              local.get 2
              i32.const 16843009
              i32.sub
              local.get 2
              i32.const -1
              i32.xor
              i32.and
              i32.const -2139062144
              i32.and
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          loop  ;; label = @4
            local.get 0
            local.tee 2
            i32.load8_u
            local.tee 3
            if  ;; label = @5
              local.get 2
              i32.const 1
              i32.add
              local.set 0
              local.get 3
              local.get 1
              i32.const 255
              i32.and
              i32.ne
              br_if 1 (;@4;)
            end
          end
          local.get 2
          br 2 (;@1;)
        end
        local.get 0
        call $strlen
        local.get 0
        i32.add
        br 1 (;@1;)
      end
      local.get 0
    end
    local.tee 0
    i32.const 0
    local.get 0
    i32.load8_u
    local.get 1
    i32.const 255
    i32.and
    i32.eq
    select)
  (func $__wasi_syscall_ret (type 0) (param i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    i32.const 1240
    local.get 0
    i32.store
    i32.const -1)
  (func $dlfree (type 2) (param i32)
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
        i32.const 1324
        i32.load
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.add
        local.set 0
        local.get 3
        i32.const 1328
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
            i32.const 1348
            i32.add
            i32.eq
            drop
            local.get 2
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.eq
            if  ;; label = @5
              i32.const 1308
              i32.const 1308
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
            i32.const 1612
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
              i32.const 1312
              i32.const 1312
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
        i32.const 1316
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
          i32.const 1332
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 1332
            local.get 3
            i32.store
            i32.const 1320
            i32.const 1320
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
            i32.const 1328
            i32.load
            i32.ne
            br_if 3 (;@1;)
            i32.const 1316
            i32.const 0
            i32.store
            i32.const 1328
            i32.const 0
            i32.store
            return
          end
          local.get 5
          i32.const 1328
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 1328
            local.get 3
            i32.store
            i32.const 1316
            i32.const 1316
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
              i32.const 1348
              i32.add
              i32.eq
              drop
              local.get 2
              local.get 5
              i32.load offset=12
              local.tee 1
              i32.eq
              if  ;; label = @6
                i32.const 1308
                i32.const 1308
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
                i32.const 1324
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
              i32.const 1612
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
                i32.const 1312
                i32.const 1312
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
          i32.const 1328
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 1316
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
        i32.const 1348
        i32.add
        local.set 0
        block (result i32)  ;; label = @3
          i32.const 1308
          i32.load
          local.tee 2
          i32.const 1
          local.get 1
          i32.shl
          local.tee 1
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 1308
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
      i32.const 1612
      i32.add
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1312
            i32.load
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 7
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 1312
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
      i32.const 1340
      i32.const 1340
      i32.load
      i32.const 1
      i32.sub
      local.tee 0
      i32.const -1
      local.get 0
      select
      i32.store
    end)
  (func $sbrk (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 1072
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
      i32.const 1072
      local.get 0
      i32.store
      local.get 1
      return
    end
    i32.const 1240
    i32.const 48
    i32.store
    i32.const -1)
  (func $__memcpy (type 9) (param i32 i32 i32)
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
  (func $strcmp (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 1024
    local.set 2
    block  ;; label = @1
      i32.const 1024
      i32.load8_u
      local.tee 1
      i32.eqz
      local.get 1
      local.get 0
      i32.load8_u
      local.tee 3
      i32.ne
      i32.or
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load8_u offset=1
        local.set 3
        local.get 2
        i32.load8_u offset=1
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        local.get 3
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 3
    i32.sub)
  (func $emscripten_resize_heap (type 0) (param i32) (result i32)
    i32.const 0)
  (func $__emscripten_stdout_seek (type 3) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func $__towrite (type 4) (result i32)
    (local i32)
    i32.const 1152
    i32.const 1152
    i32.load
    local.tee 0
    i32.const 1
    i32.sub
    local.get 0
    i32.or
    i32.store
    i32.const 1080
    i32.load
    local.tee 0
    i32.const 8
    i32.and
    if  ;; label = @1
      i32.const 1080
      local.get 0
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    i32.const 1084
    i64.const 0
    i64.store align=4
    i32.const 1108
    i32.const 1124
    i32.load
    local.tee 0
    i32.store
    i32.const 1100
    local.get 0
    i32.store
    i32.const 1096
    local.get 0
    i32.const 1128
    i32.load
    i32.add
    i32.store
    i32.const 0)
  (func $__fwritex (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 1096
      i32.load
      local.tee 2
      if (result i32)  ;; label = @2
        local.get 2
      else
        call $__towrite
        br_if 1 (;@1;)
        i32.const 1096
        i32.load
      end
      i32.const 1100
      i32.load
      local.tee 4
      i32.sub
      i32.gt_u
      if  ;; label = @2
        i32.const 1080
        local.get 0
        local.get 1
        i32.const 1116
        i32.load
        call_indirect (type 1)
        return
      end
      block  ;; label = @2
        i32.const 1160
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
        i32.const 1080
        local.get 0
        local.get 2
        i32.const 1116
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
        i32.const 1100
        i32.load
        local.set 4
      end
      local.get 4
      local.get 0
      local.get 1
      call $__memcpy
      i32.const 1100
      i32.const 1100
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
  (func $strlen (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 3
      i32.and
      if  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          br_if 0 (;@3;)
        end
      end
      loop  ;; label = @2
        local.get 1
        local.tee 2
        i32.const 4
        i32.add
        local.set 1
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
        br_if 0 (;@2;)
      end
      local.get 3
      i32.const 255
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.sub
        return
      end
      loop  ;; label = @2
        local.get 2
        i32.load8_u offset=1
        local.set 3
        local.get 2
        i32.const 1
        i32.add
        local.tee 1
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func $stackSave (type 4) (result i32)
    global.get $__stack_pointer)
  (func $stackRestore (type 2) (param i32)
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
  (global $__stack_pointer (mut i32) (i32.const 5245728))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "_start" (func $_start))
  (export "__errno_location" (func $__errno_location))
  (export "stackSave" (func $stackSave))
  (export "stackRestore" (func $stackRestore))
  (export "stackAlloc" (func $stackAlloc))
  (elem (;0;) (i32.const 1) func $__wasm_call_ctors $__stdio_seek $__stdio_write $__stdio_read $__stdio_close $emscripten_resize_heap $__emscripten_stdout_seek)
  (data $.rodata (i32.const 1024) "temp.txt\00/dev/stdout\00/dev/stderr\00/dev/stdin\00rwa")
  (data $.data (i32.const 1072) " \0bP\00\00\00\00\00\05")
  (data $.data.1 (i32.const 1092) "\06")
  (data $.data.2 (i32.const 1116) "\03\00\00\00\07\00\00\00\18\07\00\00\00\04")
  (data $.data.3 (i32.const 1140) "\01")
  (data $.data.4 (i32.const 1156) "\ff\ff\ff\ff\0a")
  (data $.data.5 (i32.const 1224) "8\04"))

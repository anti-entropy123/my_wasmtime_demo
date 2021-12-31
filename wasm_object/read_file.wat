(module
  (type $t0 (func (param i32) (result i32)))
  (type $t1 (func (param i32 i32 i32) (result i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (result i32)))
  (type $t4 (func))
  (type $t5 (func (param i32 i32) (result i32)))
  (type $t6 (func (param i32 i64 i32) (result i64)))
  (type $t7 (func (param i32 i32 i32 i32) (result i32)))
  (type $t8 (func (param i32 i64 i64 i32)))
  (type $t9 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i32)))
  (type $t11 (func (param i64 i32) (result i32)))
  (type $t12 (func (param i32 i64 i32 i32) (result i32)))
  (type $t13 (func (param f64 i32) (result f64)))
  (type $t14 (func (param i64 i64) (result f64)))
  (type $t15 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t16 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type $t17 (func (param i32 i32 i32)))
  (type $t18 (func (param i32 i32 i32 i32)))
  (type $t19 (func (param i64 i32 i32) (result i32)))
  (type $t20 (func (param i32 i32 i32 i32 i32)))
  (type $t21 (func (param f64) (result i64)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__wasi_fd_write (type $t7)))
  (import "wasi_snapshot_preview1" "fd_read" (func $__wasi_fd_read (type $t7)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__wasi_fd_close (type $t0)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__wasi_fd_seek (type $t12)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__wasi_proc_exit (type $t2)))
  (func $__wasm_call_ctors (type $t4)
    (call $emscripten_stack_init)
    (call $init_pthread_self))
  (func $__original_main (type $t3) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32)
    (local.set $l0
      (global.get $g0))
    (local.set $l1
      (i32.const 128))
    (local.set $l2
      (i32.sub
        (local.get $l0)
        (local.get $l1)))
    (global.set $g0
      (local.get $l2))
    (local.set $l3
      (i32.const 0))
    (i32.store offset=124
      (local.get $l2)
      (local.get $l3))
    (local.set $l4
      (i32.const 0))
    (i32.store offset=120
      (local.get $l2)
      (local.get $l4))
    (local.set $l5
      (i32.const 1053))
    (local.set $l6
      (i32.const 1084))
    (local.set $l7
      (call $fopen
        (local.get $l5)
        (local.get $l6)))
    (i32.store offset=120
      (local.get $l2)
      (local.get $l7))
    (local.set $l8
      (i32.const 16))
    (local.set $l9
      (i32.add
        (local.get $l2)
        (local.get $l8)))
    (local.set $l10
      (local.get $l9))
    (local.set $l11
      (i32.load offset=120
        (local.get $l2)))
    (local.set $l12
      (i32.const 255))
    (drop
      (call $fgets
        (local.get $l10)
        (local.get $l12)
        (local.get $l11)))
    (local.set $l13
      (i32.const 16))
    (local.set $l14
      (i32.add
        (local.get $l2)
        (local.get $l13)))
    (local.set $l15
      (local.get $l14))
    (i32.store
      (local.get $l2)
      (local.get $l15))
    (local.set $l16
      (i32.const 1126))
    (drop
      (call $printf
        (local.get $l16)
        (local.get $l2)))
    (local.set $l17
      (i32.load offset=120
        (local.get $l2)))
    (drop
      (call $fclose
        (local.get $l17)))
    (local.set $l18
      (i32.const 0))
    (local.set $l19
      (i32.const 128))
    (local.set $l20
      (i32.add
        (local.get $l2)
        (local.get $l19)))
    (global.set $g0
      (local.get $l20))
    (return
      (local.get $l18)))
  (func $_start (export "_start") (type $t4)
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.const 1)))
      (call $__wasm_call_ctors))
    (call $exit
      (call $__original_main))
    (unreachable))
  (func $dummy (type $t2) (param $p0 i32))
  (func $fclose (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ge_s
            (i32.load offset=76
              (local.get $p0))
            (i32.const 0)))
        (local.set $l1
          (i32.const 1))
        (br $B0))
      (local.set $l1
        (i32.eqz
          (call $__lockfile
            (local.get $p0)))))
    (local.set $l2
      (call $fflush
        (local.get $p0)))
    (local.set $l3
      (call_indirect $__indirect_function_table (type $t0)
        (local.get $p0)
        (i32.load offset=12
          (local.get $p0))))
    (block $B2
      (br_if $B2
        (local.get $l1))
      (call $__unlockfile
        (local.get $p0)))
    (block $B3
      (br_if $B3
        (i32.and
          (i32.load8_u
            (local.get $p0))
          (i32.const 1)))
      (call $dummy
        (local.get $p0))
      (local.set $l1
        (call $__ofl_lock))
      (block $B4
        (br_if $B4
          (i32.eqz
            (local.tee $l4
              (i32.load offset=52
                (local.get $p0)))))
        (i32.store offset=56
          (local.get $l4)
          (i32.load offset=56
            (local.get $p0))))
      (block $B5
        (br_if $B5
          (i32.eqz
            (local.tee $l5
              (i32.load offset=56
                (local.get $p0)))))
        (i32.store offset=52
          (local.get $l5)
          (local.get $l4)))
      (block $B6
        (br_if $B6
          (i32.ne
            (i32.load
              (local.get $l1))
            (local.get $p0)))
        (i32.store
          (local.get $l1)
          (local.get $l5)))
      (call $__ofl_unlock)
      (call $dlfree
        (i32.load offset=96
          (local.get $p0)))
      (call $dlfree
        (local.get $p0)))
    (i32.or
      (local.get $l3)
      (local.get $l2)))
  (func $fflush (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (local.set $l1
        (i32.const 0))
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.load offset=1768
              (i32.const 0))))
        (local.set $l1
          (call $fflush
            (i32.load offset=1768
              (i32.const 0)))))
      (block $B2
        (br_if $B2
          (i32.eqz
            (i32.load offset=1920
              (i32.const 0))))
        (local.set $l1
          (i32.or
            (call $fflush
              (i32.load offset=1920
                (i32.const 0)))
            (local.get $l1))))
      (block $B3
        (br_if $B3
          (i32.eqz
            (local.tee $p0
              (i32.load
                (call $__ofl_lock)))))
        (loop $L4
          (local.set $l2
            (i32.const 0))
          (block $B5
            (br_if $B5
              (i32.lt_s
                (i32.load offset=76
                  (local.get $p0))
                (i32.const 0)))
            (local.set $l2
              (call $__lockfile
                (local.get $p0))))
          (block $B6
            (br_if $B6
              (i32.eq
                (i32.load offset=20
                  (local.get $p0))
                (i32.load offset=28
                  (local.get $p0))))
            (local.set $l1
              (i32.or
                (call $fflush
                  (local.get $p0))
                (local.get $l1))))
          (block $B7
            (br_if $B7
              (i32.eqz
                (local.get $l2)))
            (call $__unlockfile
              (local.get $p0)))
          (br_if $L4
            (local.tee $p0
              (i32.load offset=56
                (local.get $p0))))))
      (call $__ofl_unlock)
      (return
        (local.get $l1)))
    (local.set $l2
      (i32.const 0))
    (block $B8
      (br_if $B8
        (i32.lt_s
          (i32.load offset=76
            (local.get $p0))
          (i32.const 0)))
      (local.set $l2
        (call $__lockfile
          (local.get $p0))))
    (block $B9
      (block $B10
        (block $B11
          (br_if $B11
            (i32.eq
              (i32.load offset=20
                (local.get $p0))
              (i32.load offset=28
                (local.get $p0))))
          (drop
            (call_indirect $__indirect_function_table (type $t1)
              (local.get $p0)
              (i32.const 0)
              (i32.const 0)
              (i32.load offset=36
                (local.get $p0))))
          (br_if $B11
            (i32.load offset=20
              (local.get $p0)))
          (local.set $l1
            (i32.const -1))
          (br_if $B10
            (local.get $l2))
          (br $B9))
        (block $B12
          (br_if $B12
            (i32.eq
              (local.tee $l1
                (i32.load offset=4
                  (local.get $p0)))
              (local.tee $l3
                (i32.load offset=8
                  (local.get $p0)))))
          (drop
            (call_indirect $__indirect_function_table (type $t6)
              (local.get $p0)
              (i64.extend_i32_s
                (i32.sub
                  (local.get $l1)
                  (local.get $l3)))
              (i32.const 1)
              (i32.load offset=40
                (local.get $p0)))))
        (local.set $l1
          (i32.const 0))
        (i32.store offset=28
          (local.get $p0)
          (i32.const 0))
        (i64.store offset=16
          (local.get $p0)
          (i64.const 0))
        (i64.store offset=4 align=4
          (local.get $p0)
          (i64.const 0))
        (br_if $B9
          (i32.eqz
            (local.get $l2))))
      (call $__unlockfile
        (local.get $p0)))
    (local.get $l1))
  (func $__stdio_exit (type $t4)
    (local $l0 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l0
            (i32.load
              (call $__ofl_lock)))))
      (loop $L1
        (call $close_file
          (local.get $l0))
        (br_if $L1
          (local.tee $l0
            (i32.load offset=56
              (local.get $l0))))))
    (call $close_file
      (i32.load offset=1936
        (i32.const 0)))
    (call $close_file
      (i32.load offset=1768
        (i32.const 0)))
    (call $close_file
      (i32.load offset=1920
        (i32.const 0))))
  (func $close_file (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (block $B1
        (br_if $B1
          (i32.lt_s
            (i32.load offset=76
              (local.get $p0))
            (i32.const 0)))
        (drop
          (call $__lockfile
            (local.get $p0))))
      (block $B2
        (br_if $B2
          (i32.eq
            (i32.load offset=20
              (local.get $p0))
            (i32.load offset=28
              (local.get $p0))))
        (drop
          (call_indirect $__indirect_function_table (type $t1)
            (local.get $p0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=36
              (local.get $p0)))))
      (br_if $B0
        (i32.eq
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))
          (local.tee $l2
            (i32.load offset=8
              (local.get $p0)))))
      (drop
        (call_indirect $__indirect_function_table (type $t6)
          (local.get $p0)
          (i64.extend_i32_s
            (i32.sub
              (local.get $l1)
              (local.get $l2)))
          (i32.const 1)
          (i32.load offset=40
            (local.get $p0))))))
  (func $__toread (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (i32.store offset=72
      (local.get $p0)
      (i32.or
        (i32.add
          (local.tee $l1
            (i32.load offset=72
              (local.get $p0)))
          (i32.const -1))
        (local.get $l1)))
    (block $B0
      (br_if $B0
        (i32.eq
          (i32.load offset=20
            (local.get $p0))
          (i32.load offset=28
            (local.get $p0))))
      (drop
        (call_indirect $__indirect_function_table (type $t1)
          (local.get $p0)
          (i32.const 0)
          (i32.const 0)
          (i32.load offset=36
            (local.get $p0)))))
    (i32.store offset=28
      (local.get $p0)
      (i32.const 0))
    (i64.store offset=16
      (local.get $p0)
      (i64.const 0))
    (block $B1
      (br_if $B1
        (i32.eqz
          (i32.and
            (local.tee $l1
              (i32.load
                (local.get $p0)))
            (i32.const 4))))
      (i32.store
        (local.get $p0)
        (i32.or
          (local.get $l1)
          (i32.const 32)))
      (return
        (i32.const -1)))
    (i32.store offset=8
      (local.get $p0)
      (local.tee $l2
        (i32.add
          (i32.load offset=44
            (local.get $p0))
          (i32.load offset=48
            (local.get $p0)))))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l2))
    (i32.shr_s
      (i32.shl
        (local.get $l1)
        (i32.const 27))
      (i32.const 31)))
  (func $__uflow (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $l2
      (i32.const -1))
    (block $B0
      (br_if $B0
        (call $__toread
          (local.get $p0)))
      (br_if $B0
        (i32.ne
          (call_indirect $__indirect_function_table (type $t1)
            (local.get $p0)
            (i32.add
              (local.get $l1)
              (i32.const 15))
            (i32.const 1)
            (i32.load offset=32
              (local.get $p0)))
          (i32.const 1)))
      (local.set $l2
        (i32.load8_u offset=15
          (local.get $l1))))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16)))
    (local.get $l2))
  (func $fgets (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (local.set $l3
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.lt_s
          (i32.load offset=76
            (local.get $p2))
          (i32.const 0)))
      (local.set $l3
        (call $__lockfile
          (local.get $p2))))
    (local.set $l4
      (i32.add
        (local.get $p1)
        (i32.const -1)))
    (block $B1
      (block $B2
        (br_if $B2
          (i32.lt_s
            (local.get $p1)
            (i32.const 2)))
        (local.set $p1
          (local.get $p0))
        (block $B3
          (block $B4
            (loop $L5
              (block $B6
                (block $B7
                  (br_if $B7
                    (i32.eq
                      (local.tee $l5
                        (i32.load offset=4
                          (local.get $p2)))
                      (local.tee $l6
                        (i32.load offset=8
                          (local.get $p2)))))
                  (block $B8
                    (block $B9
                      (br_if $B9
                        (i32.eqz
                          (local.tee $l7
                            (call $memchr
                              (local.get $l5)
                              (i32.const 10)
                              (i32.sub
                                (local.get $l6)
                                (local.get $l5))))))
                      (local.set $l5
                        (i32.add
                          (i32.sub
                            (local.get $l7)
                            (local.tee $l6
                              (i32.load offset=4
                                (local.get $p2))))
                          (i32.const 1)))
                      (br $B8))
                    (local.set $l5
                      (i32.sub
                        (i32.load offset=8
                          (local.get $p2))
                        (local.tee $l6
                          (i32.load offset=4
                            (local.get $p2))))))
                  (drop
                    (call $__memcpy
                      (local.get $p1)
                      (local.get $l6)
                      (local.tee $l5
                        (select
                          (local.get $l5)
                          (local.get $l4)
                          (i32.lt_u
                            (local.get $l5)
                            (local.get $l4))))))
                  (i32.store offset=4
                    (local.get $p2)
                    (local.tee $l6
                      (i32.add
                        (i32.load offset=4
                          (local.get $p2))
                        (local.get $l5))))
                  (local.set $p1
                    (i32.add
                      (local.get $p1)
                      (local.get $l5)))
                  (br_if $B4
                    (local.get $l7))
                  (br_if $B4
                    (i32.eqz
                      (local.tee $l4
                        (i32.sub
                          (local.get $l4)
                          (local.get $l5)))))
                  (br_if $B7
                    (i32.eq
                      (local.get $l6)
                      (i32.load offset=8
                        (local.get $p2))))
                  (i32.store offset=4
                    (local.get $p2)
                    (i32.add
                      (local.get $l6)
                      (i32.const 1)))
                  (local.set $l5
                    (i32.load8_u
                      (local.get $l6)))
                  (br $B6))
                (br_if $B6
                  (i32.gt_s
                    (local.tee $l5
                      (call $__uflow
                        (local.get $p2)))
                    (i32.const -1)))
                (local.set $l5
                  (i32.const 0))
                (br_if $B3
                  (i32.eq
                    (local.get $p1)
                    (local.get $p0)))
                (br_if $B4
                  (i32.and
                    (i32.load8_u
                      (local.get $p2))
                    (i32.const 16)))
                (br $B3))
              (i32.store8
                (local.get $p1)
                (local.get $l5))
              (local.set $p1
                (i32.add
                  (local.get $p1)
                  (i32.const 1)))
              (br_if $B4
                (i32.eq
                  (i32.and
                    (local.get $l5)
                    (i32.const 255))
                  (i32.const 10)))
              (br_if $L5
                (local.tee $l4
                  (i32.add
                    (local.get $l4)
                    (i32.const -1))))))
          (block $B10
            (br_if $B10
              (local.get $p0))
            (local.set $l5
              (i32.const 0))
            (br $B3))
          (i32.store8
            (local.get $p1)
            (i32.const 0))
          (local.set $l5
            (local.get $p0)))
        (br_if $B1
          (i32.eqz
            (local.get $l3)))
        (call $__unlockfile
          (local.get $p2))
        (br $B1))
      (i32.store offset=72
        (local.get $p2)
        (i32.or
          (i32.add
            (local.tee $p1
              (i32.load offset=72
                (local.get $p2)))
            (i32.const -1))
          (local.get $p1)))
      (block $B11
        (br_if $B11
          (i32.eqz
            (local.get $l3)))
        (call $__unlockfile
          (local.get $p2)))
      (local.set $l5
        (i32.const 0))
      (br_if $B1
        (local.get $l4))
      (i32.store8
        (local.get $p0)
        (i32.const 0))
      (return
        (local.get $p0)))
    (local.get $l5))
  (func $__errno_location (export "__errno_location") (type $t3) (result i32)
    (i32.const 1940))
  (func $__fmodeflags (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    (local.set $l1
      (i32.const 2))
    (block $B0
      (br_if $B0
        (call $strchr
          (local.get $p0)
          (i32.const 43)))
      (local.set $l1
        (i32.ne
          (i32.load8_u
            (local.get $p0))
          (i32.const 114))))
    (select
      (i32.or
        (local.tee $l1
          (select
            (i32.or
              (local.tee $l1
                (select
                  (local.tee $l1
                    (select
                      (i32.or
                        (local.tee $l1
                          (select
                            (i32.or
                              (local.get $l1)
                              (i32.const 128))
                            (local.get $l1)
                            (call $strchr
                              (local.get $p0)
                              (i32.const 120))))
                        (i32.const 524288))
                      (local.get $l1)
                      (call $strchr
                        (local.get $p0)
                        (i32.const 101))))
                  (i32.or
                    (local.get $l1)
                    (i32.const 64))
                  (i32.eq
                    (local.tee $p0
                      (i32.load8_u
                        (local.get $p0)))
                    (i32.const 114))))
              (i32.const 512))
            (local.get $l1)
            (i32.eq
              (local.get $p0)
              (i32.const 119))))
        (i32.const 1024))
      (local.get $l1)
      (i32.eq
        (local.get $p0)
        (i32.const 97))))
  (func $__stdio_seek (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (call $__lseek
      (i32.load offset=60
        (local.get $p0))
      (local.get $p1)
      (local.get $p2)))
  (func $__stdio_write (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store offset=16
      (local.get $l3)
      (local.tee $l4
        (i32.load offset=28
          (local.get $p0))))
    (local.set $l5
      (i32.load offset=20
        (local.get $p0)))
    (i32.store offset=28
      (local.get $l3)
      (local.get $p2))
    (i32.store offset=24
      (local.get $l3)
      (local.get $p1))
    (i32.store offset=20
      (local.get $l3)
      (local.tee $p1
        (i32.sub
          (local.get $l5)
          (local.get $l4))))
    (local.set $l6
      (i32.add
        (local.get $p1)
        (local.get $p2)))
    (local.set $l7
      (i32.const 2))
    (local.set $p1
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (call $__wasi_syscall_ret
                (call $__wasi_fd_write
                  (i32.load offset=60
                    (local.get $p0))
                  (i32.add
                    (local.get $l3)
                    (i32.const 16))
                  (i32.const 2)
                  (i32.add
                    (local.get $l3)
                    (i32.const 12)))))
            (loop $L4
              (br_if $B2
                (i32.eq
                  (local.get $l6)
                  (local.tee $l4
                    (i32.load offset=12
                      (local.get $l3)))))
              (br_if $B1
                (i32.le_s
                  (local.get $l4)
                  (i32.const -1)))
              (i32.store
                (local.tee $l9
                  (i32.add
                    (local.get $p1)
                    (i32.shl
                      (local.tee $l5
                        (i32.gt_u
                          (local.get $l4)
                          (local.tee $l8
                            (i32.load offset=4
                              (local.get $p1)))))
                      (i32.const 3))))
                (i32.add
                  (i32.load
                    (local.get $l9))
                  (local.tee $l8
                    (i32.sub
                      (local.get $l4)
                      (select
                        (local.get $l8)
                        (i32.const 0)
                        (local.get $l5))))))
              (i32.store
                (local.tee $l9
                  (i32.add
                    (local.get $p1)
                    (select
                      (i32.const 12)
                      (i32.const 4)
                      (local.get $l5))))
                (i32.sub
                  (i32.load
                    (local.get $l9))
                  (local.get $l8)))
              (local.set $l6
                (i32.sub
                  (local.get $l6)
                  (local.get $l4)))
              (br_if $L4
                (i32.eqz
                  (call $__wasi_syscall_ret
                    (call $__wasi_fd_write
                      (i32.load offset=60
                        (local.get $p0))
                      (local.tee $p1
                        (select
                          (i32.add
                            (local.get $p1)
                            (i32.const 8))
                          (local.get $p1)
                          (local.get $l5)))
                      (local.tee $l7
                        (i32.sub
                          (local.get $l7)
                          (local.get $l5)))
                      (i32.add
                        (local.get $l3)
                        (i32.const 12))))))))
          (br_if $B1
            (i32.ne
              (local.get $l6)
              (i32.const -1))))
        (i32.store offset=28
          (local.get $p0)
          (local.tee $p1
            (i32.load offset=44
              (local.get $p0))))
        (i32.store offset=20
          (local.get $p0)
          (local.get $p1))
        (i32.store offset=16
          (local.get $p0)
          (i32.add
            (local.get $p1)
            (i32.load offset=48
              (local.get $p0))))
        (local.set $l4
          (local.get $p2))
        (br $B0))
      (local.set $l4
        (i32.const 0))
      (i32.store offset=28
        (local.get $p0)
        (i32.const 0))
      (i64.store offset=16
        (local.get $p0)
        (i64.const 0))
      (i32.store
        (local.get $p0)
        (i32.or
          (i32.load
            (local.get $p0))
          (i32.const 32)))
      (br_if $B0
        (i32.eq
          (local.get $l7)
          (i32.const 2)))
      (local.set $l4
        (i32.sub
          (local.get $p2)
          (i32.load offset=4
            (local.get $p1)))))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 32)))
    (local.get $l4))
  (func $__stdio_read (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store offset=16
      (local.get $l3)
      (local.get $p1))
    (local.set $l4
      (i32.const 0))
    (i32.store offset=20
      (local.get $l3)
      (i32.sub
        (local.get $p2)
        (i32.ne
          (local.tee $l5
            (i32.load offset=48
              (local.get $p0)))
          (i32.const 0))))
    (local.set $l6
      (i32.load offset=44
        (local.get $p0)))
    (i32.store offset=28
      (local.get $l3)
      (local.get $l5))
    (i32.store offset=24
      (local.get $l3)
      (local.get $l6))
    (local.set $l5
      (i32.const 32))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (call $__wasi_syscall_ret
              (call $__wasi_fd_read
                (i32.load offset=60
                  (local.get $p0))
                (i32.add
                  (local.get $l3)
                  (i32.const 16))
                (i32.const 2)
                (i32.add
                  (local.get $l3)
                  (i32.const 12)))))
          (br_if $B1
            (i32.gt_s
              (local.tee $l5
                (i32.load offset=12
                  (local.get $l3)))
              (i32.const 0)))
          (local.set $l5
            (select
              (i32.const 32)
              (i32.const 16)
              (local.get $l5))))
        (i32.store
          (local.get $p0)
          (i32.or
            (i32.load
              (local.get $p0))
            (local.get $l5)))
        (br $B0))
      (block $B3
        (br_if $B3
          (i32.gt_u
            (local.get $l5)
            (local.tee $l6
              (i32.load offset=20
                (local.get $l3)))))
        (local.set $l4
          (local.get $l5))
        (br $B0))
      (i32.store offset=4
        (local.get $p0)
        (local.tee $l4
          (i32.load offset=44
            (local.get $p0))))
      (i32.store offset=8
        (local.get $p0)
        (i32.add
          (local.get $l4)
          (i32.sub
            (local.get $l5)
            (local.get $l6))))
      (block $B4
        (br_if $B4
          (i32.eqz
            (i32.load offset=48
              (local.get $p0))))
        (i32.store offset=4
          (local.get $p0)
          (i32.add
            (local.get $l4)
            (i32.const 1)))
        (i32.store8
          (i32.add
            (i32.add
              (local.get $p2)
              (local.get $p1))
            (i32.const -1))
          (i32.load8_u
            (local.get $l4))))
      (local.set $l4
        (local.get $p2)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 32)))
    (local.get $l4))
  (func $dummy.1 (type $t0) (param $p0 i32) (result i32)
    (local.get $p0))
  (func $__stdio_close (type $t0) (param $p0 i32) (result i32)
    (call $__wasi_fd_close
      (call $dummy.1
        (i32.load offset=60
          (local.get $p0)))))
  (func $__fdopen (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (call $strchr
                (i32.const 1105)
                (i32.load8_s
                  (local.get $p1))))
            (i32.store
              (call $__errno_location)
              (i32.const 28))
            (br $B2))
          (br_if $B1
            (local.tee $l3
              (call $dlmalloc
                (i32.const 1176)))))
        (local.set $l3
          (i32.const 0))
        (br $B0))
      (drop
        (call $memset
          (local.get $l3)
          (i32.const 0)
          (i32.const 144)))
      (block $B4
        (br_if $B4
          (call $strchr
            (local.get $p1)
            (i32.const 43)))
        (i32.store
          (local.get $l3)
          (select
            (i32.const 8)
            (i32.const 4)
            (i32.eq
              (i32.load8_u
                (local.get $p1))
              (i32.const 114)))))
      (block $B5
        (block $B6
          (br_if $B6
            (i32.eq
              (i32.load8_u
                (local.get $p1))
              (i32.const 97)))
          (local.set $p1
            (i32.load
              (local.get $l3)))
          (br $B5))
        (block $B7
          (br_if $B7
            (i32.and
              (local.tee $p1
                (call $__syscall_fcntl64
                  (local.get $p0)
                  (i32.const 3)
                  (i32.const 0)))
              (i32.const 1024)))
          (i32.store offset=16
            (local.get $l2)
            (i32.or
              (local.get $p1)
              (i32.const 1024)))
          (drop
            (call $__syscall_fcntl64
              (local.get $p0)
              (i32.const 4)
              (i32.add
                (local.get $l2)
                (i32.const 16)))))
        (i32.store
          (local.get $l3)
          (local.tee $p1
            (i32.or
              (i32.load
                (local.get $l3))
              (i32.const 128)))))
      (i32.store offset=80
        (local.get $l3)
        (i32.const -1))
      (i32.store offset=48
        (local.get $l3)
        (i32.const 1024))
      (i32.store offset=60
        (local.get $l3)
        (local.get $p0))
      (i32.store offset=44
        (local.get $l3)
        (i32.add
          (local.get $l3)
          (i32.const 152)))
      (block $B8
        (br_if $B8
          (i32.and
            (local.get $p1)
            (i32.const 8)))
        (i32.store
          (local.get $l2)
          (i32.add
            (local.get $l2)
            (i32.const 24)))
        (br_if $B8
          (call $__syscall_ioctl
            (local.get $p0)
            (i32.const 21523)
            (local.get $l2)))
        (i32.store offset=80
          (local.get $l3)
          (i32.const 10)))
      (i32.store offset=40
        (local.get $l3)
        (i32.const 2))
      (i32.store offset=36
        (local.get $l3)
        (i32.const 3))
      (i32.store offset=32
        (local.get $l3)
        (i32.const 4))
      (i32.store offset=12
        (local.get $l3)
        (i32.const 5))
      (block $B9
        (br_if $B9
          (i32.load8_u offset=1945
            (i32.const 0)))
        (i32.store offset=76
          (local.get $l3)
          (i32.const -1)))
      (local.set $l3
        (call $__ofl_add
          (local.get $l3))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.get $l3))
  (func $fopen (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (call $strchr
              (i32.const 1105)
              (i32.load8_s
                (local.get $p1))))
          (i32.store
            (call $__errno_location)
            (i32.const 28))
          (br $B1))
        (local.set $l3
          (call $__fmodeflags
            (local.get $p1)))
        (i32.store
          (local.get $l2)
          (i32.const 438))
        (local.set $l4
          (i32.const 0))
        (br_if $B0
          (i32.lt_s
            (local.tee $p0
              (call $__syscall_ret
                (call $__syscall_open
                  (local.get $p0)
                  (i32.or
                    (local.get $l3)
                    (i32.const 32768))
                  (local.get $l2))))
            (i32.const 0)))
        (br_if $B0
          (local.tee $l4
            (call $__fdopen
              (local.get $p0)
              (local.get $p1))))
        (drop
          (call $__wasi_fd_close
            (local.get $p0))))
      (local.set $l4
        (i32.const 0)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $l4))
  (func $__lseek (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $p0
      (call $__wasi_syscall_ret
        (call $__wasi_fd_seek
          (local.get $p0)
          (local.get $p1)
          (i32.and
            (local.get $p2)
            (i32.const 255))
          (i32.add
            (local.get $l3)
            (i32.const 8)))))
    (local.set $p1
      (i64.load offset=8
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (select
      (i64.const -1)
      (local.get $p1)
      (local.get $p0)))
  (func $memchr (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    (local.set $l3
      (i32.ne
        (local.get $p2)
        (i32.const 0)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (i32.and
                (local.get $p0)
                (i32.const 3))))
          (br_if $B2
            (i32.eqz
              (local.get $p2)))
          (local.set $l4
            (i32.and
              (local.get $p1)
              (i32.const 255)))
          (loop $L3
            (br_if $B1
              (i32.eq
                (i32.load8_u
                  (local.get $p0))
                (local.get $l4)))
            (local.set $l3
              (i32.ne
                (local.tee $p2
                  (i32.add
                    (local.get $p2)
                    (i32.const -1)))
                (i32.const 0)))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (local.tee $p0
                    (i32.add
                      (local.get $p0)
                      (i32.const 1)))
                  (i32.const 3))))
            (br_if $L3
              (local.get $p2))))
        (br_if $B0
          (i32.eqz
            (local.get $l3))))
      (block $B4
        (br_if $B4
          (i32.eq
            (i32.load8_u
              (local.get $p0))
            (i32.and
              (local.get $p1)
              (i32.const 255))))
        (br_if $B4
          (i32.lt_u
            (local.get $p2)
            (i32.const 4)))
        (local.set $l4
          (i32.mul
            (i32.and
              (local.get $p1)
              (i32.const 255))
            (i32.const 16843009)))
        (loop $L5
          (br_if $B4
            (i32.and
              (i32.and
                (i32.xor
                  (local.tee $l3
                    (i32.xor
                      (i32.load
                        (local.get $p0))
                      (local.get $l4)))
                  (i32.const -1))
                (i32.add
                  (local.get $l3)
                  (i32.const -16843009)))
              (i32.const -2139062144)))
          (local.set $p0
            (i32.add
              (local.get $p0)
              (i32.const 4)))
          (br_if $L5
            (i32.gt_u
              (local.tee $p2
                (i32.add
                  (local.get $p2)
                  (i32.const -4)))
              (i32.const 3)))))
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (local.set $l3
        (i32.and
          (local.get $p1)
          (i32.const 255)))
      (loop $L6
        (block $B7
          (br_if $B7
            (i32.ne
              (i32.load8_u
                (local.get $p0))
              (local.get $l3)))
          (return
            (local.get $p0)))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br_if $L6
          (local.tee $p2
            (i32.add
              (local.get $p2)
              (i32.const -1))))))
    (i32.const 0))
  (func $__lock (type $t2) (param $p0 i32))
  (func $__unlock (type $t2) (param $p0 i32))
  (func $__ofl_lock (type $t3) (result i32)
    (call $__lock
      (i32.const 2000))
    (i32.const 2004))
  (func $__ofl_unlock (type $t4)
    (call $__unlock
      (i32.const 2000)))
  (func $__ofl_add (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (i32.store offset=56
      (local.get $p0)
      (i32.load
        (local.tee $l1
          (call $__ofl_lock))))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l2
            (i32.load
              (local.get $l1)))))
      (i32.store offset=52
        (local.get $l2)
        (local.get $p0)))
    (i32.store
      (local.get $l1)
      (local.get $p0))
    (call $__ofl_unlock)
    (local.get $p0))
  (func $strchr (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (select
      (local.tee $p0
        (call $__strchrnul
          (local.get $p0)
          (local.get $p1)))
      (i32.const 0)
      (i32.eq
        (i32.load8_u
          (local.get $p0))
        (i32.and
          (local.get $p1)
          (i32.const 255)))))
  (func $__strchrnul (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $l2
              (i32.and
                (local.get $p1)
                (i32.const 255)))))
        (block $B2
          (br_if $B2
            (i32.eqz
              (i32.and
                (local.get $p0)
                (i32.const 3))))
          (loop $L3
            (br_if $B0
              (i32.eqz
                (local.tee $l3
                  (i32.load8_u
                    (local.get $p0)))))
            (br_if $B0
              (i32.eq
                (local.get $l3)
                (i32.and
                  (local.get $p1)
                  (i32.const 255))))
            (br_if $L3
              (i32.and
                (local.tee $p0
                  (i32.add
                    (local.get $p0)
                    (i32.const 1)))
                (i32.const 3)))))
        (block $B4
          (br_if $B4
            (i32.and
              (i32.and
                (i32.xor
                  (local.tee $l3
                    (i32.load
                      (local.get $p0)))
                  (i32.const -1))
                (i32.add
                  (local.get $l3)
                  (i32.const -16843009)))
              (i32.const -2139062144)))
          (local.set $l2
            (i32.mul
              (local.get $l2)
              (i32.const 16843009)))
          (loop $L5
            (br_if $B4
              (i32.and
                (i32.and
                  (i32.xor
                    (local.tee $l3
                      (i32.xor
                        (local.get $l3)
                        (local.get $l2)))
                    (i32.const -1))
                  (i32.add
                    (local.get $l3)
                    (i32.const -16843009)))
                (i32.const -2139062144)))
            (local.set $l3
              (i32.load offset=4
                (local.get $p0)))
            (local.set $p0
              (i32.add
                (local.get $p0)
                (i32.const 4)))
            (br_if $L5
              (i32.eqz
                (i32.and
                  (i32.and
                    (i32.xor
                      (local.get $l3)
                      (i32.const -1))
                    (i32.add
                      (local.get $l3)
                      (i32.const -16843009)))
                  (i32.const -2139062144))))))
        (block $B6
          (loop $L7
            (br_if $B6
              (i32.eqz
                (local.tee $l2
                  (i32.load8_u
                    (local.tee $l3
                      (local.get $p0))))))
            (local.set $p0
              (i32.add
                (local.get $l3)
                (i32.const 1)))
            (br_if $L7
              (i32.ne
                (local.get $l2)
                (i32.and
                  (local.get $p1)
                  (i32.const 255))))))
        (return
          (local.get $l3)))
      (return
        (i32.add
          (local.get $p0)
          (call $strlen
            (local.get $p0)))))
    (local.get $p0))
  (func $__syscall_ret (type $t0) (param $p0 i32) (result i32)
    (block $B0
      (br_if $B0
        (i32.lt_u
          (local.get $p0)
          (i32.const -4095)))
      (i32.store
        (call $__errno_location)
        (i32.sub
          (i32.const 0)
          (local.get $p0)))
      (local.set $p0
        (i32.const -1)))
    (local.get $p0))
  (func $__wasi_syscall_ret (type $t0) (param $p0 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (i32.const 0)))
    (i32.store
      (call $__errno_location)
      (local.get $p0))
    (i32.const -1))
  (func $dlmalloc (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (block $B10
                          (block $B11
                            (br_if $B11
                              (i32.gt_u
                                (local.get $p0)
                                (i32.const 244)))
                            (block $B12
                              (br_if $B12
                                (i32.eqz
                                  (i32.and
                                    (local.tee $p0
                                      (i32.shr_u
                                        (local.tee $l2
                                          (i32.load offset=2008
                                            (i32.const 0)))
                                        (local.tee $l4
                                          (i32.shr_u
                                            (local.tee $l3
                                              (select
                                                (i32.const 16)
                                                (i32.and
                                                  (i32.add
                                                    (local.get $p0)
                                                    (i32.const 11))
                                                  (i32.const -8))
                                                (i32.lt_u
                                                  (local.get $p0)
                                                  (i32.const 11))))
                                            (i32.const 3)))))
                                    (i32.const 3))))
                              (local.set $p0
                                (i32.add
                                  (local.tee $l4
                                    (i32.load
                                      (i32.add
                                        (local.tee $l6
                                          (i32.shl
                                            (local.tee $l5
                                              (i32.add
                                                (i32.and
                                                  (i32.xor
                                                    (local.get $p0)
                                                    (i32.const -1))
                                                  (i32.const 1))
                                                (local.get $l4)))
                                            (i32.const 3)))
                                        (i32.const 2056))))
                                  (i32.const 8)))
                              (block $B13
                                (block $B14
                                  (br_if $B14
                                    (i32.ne
                                      (local.tee $l3
                                        (i32.load offset=8
                                          (local.get $l4)))
                                      (local.tee $l6
                                        (i32.add
                                          (local.get $l6)
                                          (i32.const 2048)))))
                                  (i32.store offset=2008
                                    (i32.const 0)
                                    (i32.and
                                      (local.get $l2)
                                      (i32.rotl
                                        (i32.const -2)
                                        (local.get $l5))))
                                  (br $B13))
                                (i32.store offset=12
                                  (local.get $l3)
                                  (local.get $l6))
                                (i32.store offset=8
                                  (local.get $l6)
                                  (local.get $l3)))
                              (i32.store offset=4
                                (local.get $l4)
                                (i32.or
                                  (local.tee $l5
                                    (i32.shl
                                      (local.get $l5)
                                      (i32.const 3)))
                                  (i32.const 3)))
                              (i32.store offset=4
                                (local.tee $l4
                                  (i32.add
                                    (local.get $l4)
                                    (local.get $l5)))
                                (i32.or
                                  (i32.load offset=4
                                    (local.get $l4))
                                  (i32.const 1)))
                              (br $B0))
                            (br_if $B10
                              (i32.le_u
                                (local.get $l3)
                                (local.tee $l7
                                  (i32.load offset=2016
                                    (i32.const 0)))))
                            (block $B15
                              (br_if $B15
                                (i32.eqz
                                  (local.get $p0)))
                              (block $B16
                                (block $B17
                                  (br_if $B17
                                    (i32.ne
                                      (local.tee $p0
                                        (i32.load offset=8
                                          (local.tee $l4
                                            (i32.load
                                              (i32.add
                                                (local.tee $l6
                                                  (i32.shl
                                                    (local.tee $l5
                                                      (i32.add
                                                        (i32.or
                                                          (i32.or
                                                            (i32.or
                                                              (i32.or
                                                                (local.tee $l5
                                                                  (i32.and
                                                                    (i32.shr_u
                                                                      (local.tee $l4
                                                                        (i32.shr_u
                                                                          (local.tee $p0
                                                                            (i32.add
                                                                              (i32.and
                                                                                (local.tee $p0
                                                                                  (i32.and
                                                                                    (i32.shl
                                                                                      (local.get $p0)
                                                                                      (local.get $l4))
                                                                                    (i32.or
                                                                                      (local.tee $p0
                                                                                        (i32.shl
                                                                                          (i32.const 2)
                                                                                          (local.get $l4)))
                                                                                      (i32.sub
                                                                                        (i32.const 0)
                                                                                        (local.get $p0)))))
                                                                                (i32.sub
                                                                                  (i32.const 0)
                                                                                  (local.get $p0)))
                                                                              (i32.const -1)))
                                                                          (local.tee $p0
                                                                            (i32.and
                                                                              (i32.shr_u
                                                                                (local.get $p0)
                                                                                (i32.const 12))
                                                                              (i32.const 16)))))
                                                                      (i32.const 5))
                                                                    (i32.const 8)))
                                                                (local.get $p0))
                                                              (local.tee $l4
                                                                (i32.and
                                                                  (i32.shr_u
                                                                    (local.tee $p0
                                                                      (i32.shr_u
                                                                        (local.get $l4)
                                                                        (local.get $l5)))
                                                                    (i32.const 2))
                                                                  (i32.const 4))))
                                                            (local.tee $l4
                                                              (i32.and
                                                                (i32.shr_u
                                                                  (local.tee $p0
                                                                    (i32.shr_u
                                                                      (local.get $p0)
                                                                      (local.get $l4)))
                                                                  (i32.const 1))
                                                                (i32.const 2))))
                                                          (local.tee $l4
                                                            (i32.and
                                                              (i32.shr_u
                                                                (local.tee $p0
                                                                  (i32.shr_u
                                                                    (local.get $p0)
                                                                    (local.get $l4)))
                                                                (i32.const 1))
                                                              (i32.const 1))))
                                                        (i32.shr_u
                                                          (local.get $p0)
                                                          (local.get $l4))))
                                                    (i32.const 3)))
                                                (i32.const 2056))))))
                                      (local.tee $l6
                                        (i32.add
                                          (local.get $l6)
                                          (i32.const 2048)))))
                                  (i32.store offset=2008
                                    (i32.const 0)
                                    (local.tee $l2
                                      (i32.and
                                        (local.get $l2)
                                        (i32.rotl
                                          (i32.const -2)
                                          (local.get $l5)))))
                                  (br $B16))
                                (i32.store offset=12
                                  (local.get $p0)
                                  (local.get $l6))
                                (i32.store offset=8
                                  (local.get $l6)
                                  (local.get $p0)))
                              (local.set $p0
                                (i32.add
                                  (local.get $l4)
                                  (i32.const 8)))
                              (i32.store offset=4
                                (local.get $l4)
                                (i32.or
                                  (local.get $l3)
                                  (i32.const 3)))
                              (i32.store offset=4
                                (local.tee $l6
                                  (i32.add
                                    (local.get $l4)
                                    (local.get $l3)))
                                (i32.or
                                  (local.tee $l5
                                    (i32.sub
                                      (local.tee $l8
                                        (i32.shl
                                          (local.get $l5)
                                          (i32.const 3)))
                                      (local.get $l3)))
                                  (i32.const 1)))
                              (i32.store
                                (i32.add
                                  (local.get $l4)
                                  (local.get $l8))
                                (local.get $l5))
                              (block $B18
                                (br_if $B18
                                  (i32.eqz
                                    (local.get $l7)))
                                (local.set $l3
                                  (i32.add
                                    (i32.shl
                                      (local.tee $l8
                                        (i32.shr_u
                                          (local.get $l7)
                                          (i32.const 3)))
                                      (i32.const 3))
                                    (i32.const 2048)))
                                (local.set $l4
                                  (i32.load offset=2028
                                    (i32.const 0)))
                                (block $B19
                                  (block $B20
                                    (br_if $B20
                                      (i32.and
                                        (local.get $l2)
                                        (local.tee $l8
                                          (i32.shl
                                            (i32.const 1)
                                            (local.get $l8)))))
                                    (i32.store offset=2008
                                      (i32.const 0)
                                      (i32.or
                                        (local.get $l2)
                                        (local.get $l8)))
                                    (local.set $l8
                                      (local.get $l3))
                                    (br $B19))
                                  (local.set $l8
                                    (i32.load offset=8
                                      (local.get $l3))))
                                (i32.store offset=8
                                  (local.get $l3)
                                  (local.get $l4))
                                (i32.store offset=12
                                  (local.get $l8)
                                  (local.get $l4))
                                (i32.store offset=12
                                  (local.get $l4)
                                  (local.get $l3))
                                (i32.store offset=8
                                  (local.get $l4)
                                  (local.get $l8)))
                              (i32.store offset=2028
                                (i32.const 0)
                                (local.get $l6))
                              (i32.store offset=2016
                                (i32.const 0)
                                (local.get $l5))
                              (br $B0))
                            (br_if $B10
                              (i32.eqz
                                (local.tee $l9
                                  (i32.load offset=2012
                                    (i32.const 0)))))
                            (local.set $l4
                              (i32.sub
                                (i32.and
                                  (i32.load offset=4
                                    (local.tee $l6
                                      (i32.load
                                        (i32.add
                                          (i32.shl
                                            (i32.add
                                              (i32.or
                                                (i32.or
                                                  (i32.or
                                                    (i32.or
                                                      (local.tee $l5
                                                        (i32.and
                                                          (i32.shr_u
                                                            (local.tee $l4
                                                              (i32.shr_u
                                                                (local.tee $p0
                                                                  (i32.add
                                                                    (i32.and
                                                                      (local.get $l9)
                                                                      (i32.sub
                                                                        (i32.const 0)
                                                                        (local.get $l9)))
                                                                    (i32.const -1)))
                                                                (local.tee $p0
                                                                  (i32.and
                                                                    (i32.shr_u
                                                                      (local.get $p0)
                                                                      (i32.const 12))
                                                                    (i32.const 16)))))
                                                            (i32.const 5))
                                                          (i32.const 8)))
                                                      (local.get $p0))
                                                    (local.tee $l4
                                                      (i32.and
                                                        (i32.shr_u
                                                          (local.tee $p0
                                                            (i32.shr_u
                                                              (local.get $l4)
                                                              (local.get $l5)))
                                                          (i32.const 2))
                                                        (i32.const 4))))
                                                  (local.tee $l4
                                                    (i32.and
                                                      (i32.shr_u
                                                        (local.tee $p0
                                                          (i32.shr_u
                                                            (local.get $p0)
                                                            (local.get $l4)))
                                                        (i32.const 1))
                                                      (i32.const 2))))
                                                (local.tee $l4
                                                  (i32.and
                                                    (i32.shr_u
                                                      (local.tee $p0
                                                        (i32.shr_u
                                                          (local.get $p0)
                                                          (local.get $l4)))
                                                      (i32.const 1))
                                                    (i32.const 1))))
                                              (i32.shr_u
                                                (local.get $p0)
                                                (local.get $l4)))
                                            (i32.const 2))
                                          (i32.const 2312)))))
                                  (i32.const -8))
                                (local.get $l3)))
                            (local.set $l5
                              (local.get $l6))
                            (block $B21
                              (loop $L22
                                (block $B23
                                  (br_if $B23
                                    (local.tee $p0
                                      (i32.load offset=16
                                        (local.get $l5))))
                                  (br_if $B21
                                    (i32.eqz
                                      (local.tee $p0
                                        (i32.load
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 20)))))))
                                (local.set $l4
                                  (select
                                    (local.tee $l5
                                      (i32.sub
                                        (i32.and
                                          (i32.load offset=4
                                            (local.get $p0))
                                          (i32.const -8))
                                        (local.get $l3)))
                                    (local.get $l4)
                                    (local.tee $l5
                                      (i32.lt_u
                                        (local.get $l5)
                                        (local.get $l4)))))
                                (local.set $l6
                                  (select
                                    (local.get $p0)
                                    (local.get $l6)
                                    (local.get $l5)))
                                (local.set $l5
                                  (local.get $p0))
                                (br $L22))
                              (unreachable))
                            (local.set $l10
                              (i32.load offset=24
                                (local.get $l6)))
                            (block $B24
                              (br_if $B24
                                (i32.eq
                                  (local.tee $l8
                                    (i32.load offset=12
                                      (local.get $l6)))
                                  (local.get $l6)))
                              (drop
                                (i32.gt_u
                                  (i32.load offset=2024
                                    (i32.const 0))
                                  (local.tee $p0
                                    (i32.load offset=8
                                      (local.get $l6)))))
                              (i32.store offset=12
                                (local.get $p0)
                                (local.get $l8))
                              (i32.store offset=8
                                (local.get $l8)
                                (local.get $p0))
                              (br $B1))
                            (block $B25
                              (br_if $B25
                                (local.tee $p0
                                  (i32.load
                                    (local.tee $l5
                                      (i32.add
                                        (local.get $l6)
                                        (i32.const 20))))))
                              (br_if $B9
                                (i32.eqz
                                  (local.tee $p0
                                    (i32.load offset=16
                                      (local.get $l6)))))
                              (local.set $l5
                                (i32.add
                                  (local.get $l6)
                                  (i32.const 16))))
                            (loop $L26
                              (local.set $l11
                                (local.get $l5))
                              (br_if $L26
                                (local.tee $p0
                                  (i32.load
                                    (local.tee $l5
                                      (i32.add
                                        (local.tee $l8
                                          (local.get $p0))
                                        (i32.const 20))))))
                              (local.set $l5
                                (i32.add
                                  (local.get $l8)
                                  (i32.const 16)))
                              (br_if $L26
                                (local.tee $p0
                                  (i32.load offset=16
                                    (local.get $l8)))))
                            (i32.store
                              (local.get $l11)
                              (i32.const 0))
                            (br $B1))
                          (local.set $l3
                            (i32.const -1))
                          (br_if $B10
                            (i32.gt_u
                              (local.get $p0)
                              (i32.const -65)))
                          (local.set $l3
                            (i32.and
                              (local.tee $p0
                                (i32.add
                                  (local.get $p0)
                                  (i32.const 11)))
                              (i32.const -8)))
                          (br_if $B10
                            (i32.eqz
                              (local.tee $l7
                                (i32.load offset=2012
                                  (i32.const 0)))))
                          (local.set $l11
                            (i32.const 0))
                          (block $B27
                            (br_if $B27
                              (i32.lt_u
                                (local.get $l3)
                                (i32.const 256)))
                            (local.set $l11
                              (i32.const 31))
                            (br_if $B27
                              (i32.gt_u
                                (local.get $l3)
                                (i32.const 16777215)))
                            (local.set $l11
                              (i32.add
                                (i32.or
                                  (i32.shl
                                    (local.tee $p0
                                      (i32.sub
                                        (i32.shr_u
                                          (i32.shl
                                            (local.tee $l5
                                              (i32.shl
                                                (local.tee $l4
                                                  (i32.shl
                                                    (local.tee $p0
                                                      (i32.shr_u
                                                        (local.get $p0)
                                                        (i32.const 8)))
                                                    (local.tee $p0
                                                      (i32.and
                                                        (i32.shr_u
                                                          (i32.add
                                                            (local.get $p0)
                                                            (i32.const 1048320))
                                                          (i32.const 16))
                                                        (i32.const 8)))))
                                                (local.tee $l4
                                                  (i32.and
                                                    (i32.shr_u
                                                      (i32.add
                                                        (local.get $l4)
                                                        (i32.const 520192))
                                                      (i32.const 16))
                                                    (i32.const 4)))))
                                            (local.tee $l5
                                              (i32.and
                                                (i32.shr_u
                                                  (i32.add
                                                    (local.get $l5)
                                                    (i32.const 245760))
                                                  (i32.const 16))
                                                (i32.const 2))))
                                          (i32.const 15))
                                        (i32.or
                                          (i32.or
                                            (local.get $p0)
                                            (local.get $l4))
                                          (local.get $l5))))
                                    (i32.const 1))
                                  (i32.and
                                    (i32.shr_u
                                      (local.get $l3)
                                      (i32.add
                                        (local.get $p0)
                                        (i32.const 21)))
                                    (i32.const 1)))
                                (i32.const 28))))
                          (local.set $l4
                            (i32.sub
                              (i32.const 0)
                              (local.get $l3)))
                          (block $B28
                            (block $B29
                              (block $B30
                                (block $B31
                                  (br_if $B31
                                    (local.tee $l5
                                      (i32.load
                                        (i32.add
                                          (i32.shl
                                            (local.get $l11)
                                            (i32.const 2))
                                          (i32.const 2312)))))
                                  (local.set $p0
                                    (i32.const 0))
                                  (local.set $l8
                                    (i32.const 0))
                                  (br $B30))
                                (local.set $p0
                                  (i32.const 0))
                                (local.set $l6
                                  (i32.shl
                                    (local.get $l3)
                                    (select
                                      (i32.const 0)
                                      (i32.sub
                                        (i32.const 25)
                                        (i32.shr_u
                                          (local.get $l11)
                                          (i32.const 1)))
                                      (i32.eq
                                        (local.get $l11)
                                        (i32.const 31)))))
                                (local.set $l8
                                  (i32.const 0))
                                (loop $L32
                                  (block $B33
                                    (br_if $B33
                                      (i32.ge_u
                                        (local.tee $l2
                                          (i32.sub
                                            (i32.and
                                              (i32.load offset=4
                                                (local.get $l5))
                                              (i32.const -8))
                                            (local.get $l3)))
                                        (local.get $l4)))
                                    (local.set $l4
                                      (local.get $l2))
                                    (local.set $l8
                                      (local.get $l5))
                                    (br_if $B33
                                      (local.get $l2))
                                    (local.set $l4
                                      (i32.const 0))
                                    (local.set $l8
                                      (local.get $l5))
                                    (local.set $p0
                                      (local.get $l5))
                                    (br $B29))
                                  (local.set $p0
                                    (select
                                      (select
                                        (local.get $p0)
                                        (local.tee $l2
                                          (i32.load
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 20))))
                                        (i32.eq
                                          (local.get $l2)
                                          (local.tee $l5
                                            (i32.load
                                              (i32.add
                                                (i32.add
                                                  (local.get $l5)
                                                  (i32.and
                                                    (i32.shr_u
                                                      (local.get $l6)
                                                      (i32.const 29))
                                                    (i32.const 4)))
                                                (i32.const 16))))))
                                      (local.get $p0)
                                      (local.get $l2)))
                                  (local.set $l6
                                    (i32.shl
                                      (local.get $l6)
                                      (i32.const 1)))
                                  (br_if $L32
                                    (local.get $l5))))
                              (block $B34
                                (br_if $B34
                                  (i32.or
                                    (local.get $p0)
                                    (local.get $l8)))
                                (local.set $l8
                                  (i32.const 0))
                                (br_if $B10
                                  (i32.eqz
                                    (local.tee $p0
                                      (i32.and
                                        (i32.or
                                          (local.tee $p0
                                            (i32.shl
                                              (i32.const 2)
                                              (local.get $l11)))
                                          (i32.sub
                                            (i32.const 0)
                                            (local.get $p0)))
                                        (local.get $l7)))))
                                (local.set $p0
                                  (i32.load
                                    (i32.add
                                      (i32.shl
                                        (i32.add
                                          (i32.or
                                            (i32.or
                                              (i32.or
                                                (i32.or
                                                  (local.tee $l6
                                                    (i32.and
                                                      (i32.shr_u
                                                        (local.tee $l5
                                                          (i32.shr_u
                                                            (local.tee $p0
                                                              (i32.add
                                                                (i32.and
                                                                  (local.get $p0)
                                                                  (i32.sub
                                                                    (i32.const 0)
                                                                    (local.get $p0)))
                                                                (i32.const -1)))
                                                            (local.tee $p0
                                                              (i32.and
                                                                (i32.shr_u
                                                                  (local.get $p0)
                                                                  (i32.const 12))
                                                                (i32.const 16)))))
                                                        (i32.const 5))
                                                      (i32.const 8)))
                                                  (local.get $p0))
                                                (local.tee $l5
                                                  (i32.and
                                                    (i32.shr_u
                                                      (local.tee $p0
                                                        (i32.shr_u
                                                          (local.get $l5)
                                                          (local.get $l6)))
                                                      (i32.const 2))
                                                    (i32.const 4))))
                                              (local.tee $l5
                                                (i32.and
                                                  (i32.shr_u
                                                    (local.tee $p0
                                                      (i32.shr_u
                                                        (local.get $p0)
                                                        (local.get $l5)))
                                                    (i32.const 1))
                                                  (i32.const 2))))
                                            (local.tee $l5
                                              (i32.and
                                                (i32.shr_u
                                                  (local.tee $p0
                                                    (i32.shr_u
                                                      (local.get $p0)
                                                      (local.get $l5)))
                                                  (i32.const 1))
                                                (i32.const 1))))
                                          (i32.shr_u
                                            (local.get $p0)
                                            (local.get $l5)))
                                        (i32.const 2))
                                      (i32.const 2312)))))
                              (br_if $B28
                                (i32.eqz
                                  (local.get $p0))))
                            (loop $L35
                              (local.set $l6
                                (i32.lt_u
                                  (local.tee $l2
                                    (i32.sub
                                      (i32.and
                                        (i32.load offset=4
                                          (local.get $p0))
                                        (i32.const -8))
                                      (local.get $l3)))
                                  (local.get $l4)))
                              (block $B36
                                (br_if $B36
                                  (local.tee $l5
                                    (i32.load offset=16
                                      (local.get $p0))))
                                (local.set $l5
                                  (i32.load
                                    (i32.add
                                      (local.get $p0)
                                      (i32.const 20)))))
                              (local.set $l4
                                (select
                                  (local.get $l2)
                                  (local.get $l4)
                                  (local.get $l6)))
                              (local.set $l8
                                (select
                                  (local.get $p0)
                                  (local.get $l8)
                                  (local.get $l6)))
                              (local.set $p0
                                (local.get $l5))
                              (br_if $L35
                                (local.get $l5))))
                          (br_if $B10
                            (i32.eqz
                              (local.get $l8)))
                          (br_if $B10
                            (i32.ge_u
                              (local.get $l4)
                              (i32.sub
                                (i32.load offset=2016
                                  (i32.const 0))
                                (local.get $l3))))
                          (local.set $l11
                            (i32.load offset=24
                              (local.get $l8)))
                          (block $B37
                            (br_if $B37
                              (i32.eq
                                (local.tee $l6
                                  (i32.load offset=12
                                    (local.get $l8)))
                                (local.get $l8)))
                            (drop
                              (i32.gt_u
                                (i32.load offset=2024
                                  (i32.const 0))
                                (local.tee $p0
                                  (i32.load offset=8
                                    (local.get $l8)))))
                            (i32.store offset=12
                              (local.get $p0)
                              (local.get $l6))
                            (i32.store offset=8
                              (local.get $l6)
                              (local.get $p0))
                            (br $B2))
                          (block $B38
                            (br_if $B38
                              (local.tee $p0
                                (i32.load
                                  (local.tee $l5
                                    (i32.add
                                      (local.get $l8)
                                      (i32.const 20))))))
                            (br_if $B8
                              (i32.eqz
                                (local.tee $p0
                                  (i32.load offset=16
                                    (local.get $l8)))))
                            (local.set $l5
                              (i32.add
                                (local.get $l8)
                                (i32.const 16))))
                          (loop $L39
                            (local.set $l2
                              (local.get $l5))
                            (br_if $L39
                              (local.tee $p0
                                (i32.load
                                  (local.tee $l5
                                    (i32.add
                                      (local.tee $l6
                                        (local.get $p0))
                                      (i32.const 20))))))
                            (local.set $l5
                              (i32.add
                                (local.get $l6)
                                (i32.const 16)))
                            (br_if $L39
                              (local.tee $p0
                                (i32.load offset=16
                                  (local.get $l6)))))
                          (i32.store
                            (local.get $l2)
                            (i32.const 0))
                          (br $B2))
                        (block $B40
                          (br_if $B40
                            (i32.lt_u
                              (local.tee $p0
                                (i32.load offset=2016
                                  (i32.const 0)))
                              (local.get $l3)))
                          (local.set $l4
                            (i32.load offset=2028
                              (i32.const 0)))
                          (block $B41
                            (block $B42
                              (br_if $B42
                                (i32.lt_u
                                  (local.tee $l5
                                    (i32.sub
                                      (local.get $p0)
                                      (local.get $l3)))
                                  (i32.const 16)))
                              (i32.store offset=2016
                                (i32.const 0)
                                (local.get $l5))
                              (i32.store offset=2028
                                (i32.const 0)
                                (local.tee $l6
                                  (i32.add
                                    (local.get $l4)
                                    (local.get $l3))))
                              (i32.store offset=4
                                (local.get $l6)
                                (i32.or
                                  (local.get $l5)
                                  (i32.const 1)))
                              (i32.store
                                (i32.add
                                  (local.get $l4)
                                  (local.get $p0))
                                (local.get $l5))
                              (i32.store offset=4
                                (local.get $l4)
                                (i32.or
                                  (local.get $l3)
                                  (i32.const 3)))
                              (br $B41))
                            (i32.store offset=2028
                              (i32.const 0)
                              (i32.const 0))
                            (i32.store offset=2016
                              (i32.const 0)
                              (i32.const 0))
                            (i32.store offset=4
                              (local.get $l4)
                              (i32.or
                                (local.get $p0)
                                (i32.const 3)))
                            (i32.store offset=4
                              (local.tee $p0
                                (i32.add
                                  (local.get $l4)
                                  (local.get $p0)))
                              (i32.or
                                (i32.load offset=4
                                  (local.get $p0))
                                (i32.const 1))))
                          (local.set $p0
                            (i32.add
                              (local.get $l4)
                              (i32.const 8)))
                          (br $B0))
                        (block $B43
                          (br_if $B43
                            (i32.le_u
                              (local.tee $l6
                                (i32.load offset=2020
                                  (i32.const 0)))
                              (local.get $l3)))
                          (i32.store offset=2020
                            (i32.const 0)
                            (local.tee $l4
                              (i32.sub
                                (local.get $l6)
                                (local.get $l3))))
                          (i32.store offset=2032
                            (i32.const 0)
                            (local.tee $l5
                              (i32.add
                                (local.tee $p0
                                  (i32.load offset=2032
                                    (i32.const 0)))
                                (local.get $l3))))
                          (i32.store offset=4
                            (local.get $l5)
                            (i32.or
                              (local.get $l4)
                              (i32.const 1)))
                          (i32.store offset=4
                            (local.get $p0)
                            (i32.or
                              (local.get $l3)
                              (i32.const 3)))
                          (local.set $p0
                            (i32.add
                              (local.get $p0)
                              (i32.const 8)))
                          (br $B0))
                        (block $B44
                          (block $B45
                            (br_if $B45
                              (i32.eqz
                                (i32.load offset=2480
                                  (i32.const 0))))
                            (local.set $l4
                              (i32.load offset=2488
                                (i32.const 0)))
                            (br $B44))
                          (i64.store offset=2492 align=4
                            (i32.const 0)
                            (i64.const -1))
                          (i64.store offset=2484 align=4
                            (i32.const 0)
                            (i64.const 17592186048512))
                          (i32.store offset=2480
                            (i32.const 0)
                            (i32.xor
                              (i32.and
                                (i32.add
                                  (local.get $l1)
                                  (i32.const 12))
                                (i32.const -16))
                              (i32.const 1431655768)))
                          (i32.store offset=2500
                            (i32.const 0)
                            (i32.const 0))
                          (i32.store offset=2452
                            (i32.const 0)
                            (i32.const 0))
                          (local.set $l4
                            (i32.const 4096)))
                        (local.set $p0
                          (i32.const 0))
                        (br_if $B0
                          (i32.le_u
                            (local.tee $l8
                              (i32.and
                                (local.tee $l2
                                  (i32.add
                                    (local.get $l4)
                                    (local.tee $l7
                                      (i32.add
                                        (local.get $l3)
                                        (i32.const 47)))))
                                (local.tee $l11
                                  (i32.sub
                                    (i32.const 0)
                                    (local.get $l4)))))
                            (local.get $l3)))
                        (local.set $p0
                          (i32.const 0))
                        (block $B46
                          (br_if $B46
                            (i32.eqz
                              (local.tee $l4
                                (i32.load offset=2448
                                  (i32.const 0)))))
                          (br_if $B0
                            (i32.le_u
                              (local.tee $l9
                                (i32.add
                                  (local.tee $l5
                                    (i32.load offset=2440
                                      (i32.const 0)))
                                  (local.get $l8)))
                              (local.get $l5)))
                          (br_if $B0
                            (i32.gt_u
                              (local.get $l9)
                              (local.get $l4))))
                        (br_if $B5
                          (i32.and
                            (i32.load8_u offset=2452
                              (i32.const 0))
                            (i32.const 4)))
                        (block $B47
                          (block $B48
                            (block $B49
                              (br_if $B49
                                (i32.eqz
                                  (local.tee $l4
                                    (i32.load offset=2032
                                      (i32.const 0)))))
                              (local.set $p0
                                (i32.const 2456))
                              (loop $L50
                                (block $B51
                                  (br_if $B51
                                    (i32.gt_u
                                      (local.tee $l5
                                        (i32.load
                                          (local.get $p0)))
                                      (local.get $l4)))
                                  (br_if $B48
                                    (i32.gt_u
                                      (i32.add
                                        (local.get $l5)
                                        (i32.load offset=4
                                          (local.get $p0)))
                                      (local.get $l4))))
                                (br_if $L50
                                  (local.tee $p0
                                    (i32.load offset=8
                                      (local.get $p0))))))
                            (br_if $B6
                              (i32.eq
                                (local.tee $l6
                                  (call $sbrk
                                    (i32.const 0)))
                                (i32.const -1)))
                            (local.set $l2
                              (local.get $l8))
                            (block $B52
                              (br_if $B52
                                (i32.eqz
                                  (i32.and
                                    (local.tee $l4
                                      (i32.add
                                        (local.tee $p0
                                          (i32.load offset=2484
                                            (i32.const 0)))
                                        (i32.const -1)))
                                    (local.get $l6))))
                              (local.set $l2
                                (i32.add
                                  (i32.sub
                                    (local.get $l8)
                                    (local.get $l6))
                                  (i32.and
                                    (i32.add
                                      (local.get $l4)
                                      (local.get $l6))
                                    (i32.sub
                                      (i32.const 0)
                                      (local.get $p0))))))
                            (br_if $B6
                              (i32.le_u
                                (local.get $l2)
                                (local.get $l3)))
                            (br_if $B6
                              (i32.gt_u
                                (local.get $l2)
                                (i32.const 2147483646)))
                            (block $B53
                              (br_if $B53
                                (i32.eqz
                                  (local.tee $p0
                                    (i32.load offset=2448
                                      (i32.const 0)))))
                              (br_if $B6
                                (i32.le_u
                                  (local.tee $l5
                                    (i32.add
                                      (local.tee $l4
                                        (i32.load offset=2440
                                          (i32.const 0)))
                                      (local.get $l2)))
                                  (local.get $l4)))
                              (br_if $B6
                                (i32.gt_u
                                  (local.get $l5)
                                  (local.get $p0))))
                            (br_if $B47
                              (i32.ne
                                (local.tee $p0
                                  (call $sbrk
                                    (local.get $l2)))
                                (local.get $l6)))
                            (br $B4))
                          (br_if $B6
                            (i32.gt_u
                              (local.tee $l2
                                (i32.and
                                  (i32.sub
                                    (local.get $l2)
                                    (local.get $l6))
                                  (local.get $l11)))
                              (i32.const 2147483646)))
                          (br_if $B7
                            (i32.eq
                              (local.tee $l6
                                (call $sbrk
                                  (local.get $l2)))
                              (i32.add
                                (i32.load
                                  (local.get $p0))
                                (i32.load offset=4
                                  (local.get $p0)))))
                          (local.set $p0
                            (local.get $l6)))
                        (block $B54
                          (br_if $B54
                            (i32.eq
                              (local.get $p0)
                              (i32.const -1)))
                          (br_if $B54
                            (i32.le_u
                              (i32.add
                                (local.get $l3)
                                (i32.const 48))
                              (local.get $l2)))
                          (block $B55
                            (br_if $B55
                              (i32.le_u
                                (local.tee $l4
                                  (i32.and
                                    (i32.add
                                      (i32.sub
                                        (local.get $l7)
                                        (local.get $l2))
                                      (local.tee $l4
                                        (i32.load offset=2488
                                          (i32.const 0))))
                                    (i32.sub
                                      (i32.const 0)
                                      (local.get $l4))))
                                (i32.const 2147483646)))
                            (local.set $l6
                              (local.get $p0))
                            (br $B4))
                          (block $B56
                            (br_if $B56
                              (i32.eq
                                (call $sbrk
                                  (local.get $l4))
                                (i32.const -1)))
                            (local.set $l2
                              (i32.add
                                (local.get $l4)
                                (local.get $l2)))
                            (local.set $l6
                              (local.get $p0))
                            (br $B4))
                          (drop
                            (call $sbrk
                              (i32.sub
                                (i32.const 0)
                                (local.get $l2))))
                          (br $B6))
                        (local.set $l6
                          (local.get $p0))
                        (br_if $B4
                          (i32.ne
                            (local.get $p0)
                            (i32.const -1)))
                        (br $B6))
                      (local.set $l8
                        (i32.const 0))
                      (br $B1))
                    (local.set $l6
                      (i32.const 0))
                    (br $B2))
                  (br_if $B4
                    (i32.ne
                      (local.get $l6)
                      (i32.const -1))))
                (i32.store offset=2452
                  (i32.const 0)
                  (i32.or
                    (i32.load offset=2452
                      (i32.const 0))
                    (i32.const 4))))
              (br_if $B3
                (i32.gt_u
                  (local.get $l8)
                  (i32.const 2147483646)))
              (local.set $l6
                (call $sbrk
                  (local.get $l8)))
              (local.set $p0
                (call $sbrk
                  (i32.const 0)))
              (br_if $B3
                (i32.eq
                  (local.get $l6)
                  (i32.const -1)))
              (br_if $B3
                (i32.eq
                  (local.get $p0)
                  (i32.const -1)))
              (br_if $B3
                (i32.ge_u
                  (local.get $l6)
                  (local.get $p0)))
              (br_if $B3
                (i32.le_u
                  (local.tee $l2
                    (i32.sub
                      (local.get $p0)
                      (local.get $l6)))
                  (i32.add
                    (local.get $l3)
                    (i32.const 40)))))
            (i32.store offset=2440
              (i32.const 0)
              (local.tee $p0
                (i32.add
                  (i32.load offset=2440
                    (i32.const 0))
                  (local.get $l2))))
            (block $B57
              (br_if $B57
                (i32.le_u
                  (local.get $p0)
                  (i32.load offset=2444
                    (i32.const 0))))
              (i32.store offset=2444
                (i32.const 0)
                (local.get $p0)))
            (block $B58
              (block $B59
                (block $B60
                  (block $B61
                    (br_if $B61
                      (i32.eqz
                        (local.tee $l4
                          (i32.load offset=2032
                            (i32.const 0)))))
                    (local.set $p0
                      (i32.const 2456))
                    (loop $L62
                      (br_if $B60
                        (i32.eq
                          (local.get $l6)
                          (i32.add
                            (local.tee $l5
                              (i32.load
                                (local.get $p0)))
                            (local.tee $l8
                              (i32.load offset=4
                                (local.get $p0))))))
                      (br_if $L62
                        (local.tee $p0
                          (i32.load offset=8
                            (local.get $p0))))
                      (br $B59))
                    (unreachable))
                  (block $B63
                    (block $B64
                      (br_if $B64
                        (i32.eqz
                          (local.tee $p0
                            (i32.load offset=2024
                              (i32.const 0)))))
                      (br_if $B63
                        (i32.ge_u
                          (local.get $l6)
                          (local.get $p0))))
                    (i32.store offset=2024
                      (i32.const 0)
                      (local.get $l6)))
                  (local.set $p0
                    (i32.const 0))
                  (i32.store offset=2460
                    (i32.const 0)
                    (local.get $l2))
                  (i32.store offset=2456
                    (i32.const 0)
                    (local.get $l6))
                  (i32.store offset=2040
                    (i32.const 0)
                    (i32.const -1))
                  (i32.store offset=2044
                    (i32.const 0)
                    (i32.load offset=2480
                      (i32.const 0)))
                  (i32.store offset=2468
                    (i32.const 0)
                    (i32.const 0))
                  (loop $L65
                    (i32.store
                      (i32.add
                        (local.tee $l4
                          (i32.shl
                            (local.get $p0)
                            (i32.const 3)))
                        (i32.const 2056))
                      (local.tee $l5
                        (i32.add
                          (local.get $l4)
                          (i32.const 2048))))
                    (i32.store
                      (i32.add
                        (local.get $l4)
                        (i32.const 2060))
                      (local.get $l5))
                    (br_if $L65
                      (i32.ne
                        (local.tee $p0
                          (i32.add
                            (local.get $p0)
                            (i32.const 1)))
                        (i32.const 32))))
                  (i32.store offset=2020
                    (i32.const 0)
                    (local.tee $l5
                      (i32.sub
                        (local.tee $p0
                          (i32.add
                            (local.get $l2)
                            (i32.const -40)))
                        (local.tee $l4
                          (select
                            (i32.and
                              (i32.sub
                                (i32.const -8)
                                (local.get $l6))
                              (i32.const 7))
                            (i32.const 0)
                            (i32.and
                              (i32.add
                                (local.get $l6)
                                (i32.const 8))
                              (i32.const 7)))))))
                  (i32.store offset=2032
                    (i32.const 0)
                    (local.tee $l4
                      (i32.add
                        (local.get $l6)
                        (local.get $l4))))
                  (i32.store offset=4
                    (local.get $l4)
                    (i32.or
                      (local.get $l5)
                      (i32.const 1)))
                  (i32.store offset=4
                    (i32.add
                      (local.get $l6)
                      (local.get $p0))
                    (i32.const 40))
                  (i32.store offset=2036
                    (i32.const 0)
                    (i32.load offset=2496
                      (i32.const 0)))
                  (br $B58))
                (br_if $B59
                  (i32.and
                    (i32.load8_u offset=12
                      (local.get $p0))
                    (i32.const 8)))
                (br_if $B59
                  (i32.gt_u
                    (local.get $l5)
                    (local.get $l4)))
                (br_if $B59
                  (i32.le_u
                    (local.get $l6)
                    (local.get $l4)))
                (i32.store offset=4
                  (local.get $p0)
                  (i32.add
                    (local.get $l8)
                    (local.get $l2)))
                (i32.store offset=2032
                  (i32.const 0)
                  (local.tee $l5
                    (i32.add
                      (local.get $l4)
                      (local.tee $p0
                        (select
                          (i32.and
                            (i32.sub
                              (i32.const -8)
                              (local.get $l4))
                            (i32.const 7))
                          (i32.const 0)
                          (i32.and
                            (i32.add
                              (local.get $l4)
                              (i32.const 8))
                            (i32.const 7)))))))
                (i32.store offset=2020
                  (i32.const 0)
                  (local.tee $p0
                    (i32.sub
                      (local.tee $l6
                        (i32.add
                          (i32.load offset=2020
                            (i32.const 0))
                          (local.get $l2)))
                      (local.get $p0))))
                (i32.store offset=4
                  (local.get $l5)
                  (i32.or
                    (local.get $p0)
                    (i32.const 1)))
                (i32.store offset=4
                  (i32.add
                    (local.get $l4)
                    (local.get $l6))
                  (i32.const 40))
                (i32.store offset=2036
                  (i32.const 0)
                  (i32.load offset=2496
                    (i32.const 0)))
                (br $B58))
              (block $B66
                (br_if $B66
                  (i32.ge_u
                    (local.get $l6)
                    (local.tee $l8
                      (i32.load offset=2024
                        (i32.const 0)))))
                (i32.store offset=2024
                  (i32.const 0)
                  (local.get $l6))
                (local.set $l8
                  (local.get $l6)))
              (local.set $l5
                (i32.add
                  (local.get $l6)
                  (local.get $l2)))
              (local.set $p0
                (i32.const 2456))
              (block $B67
                (block $B68
                  (block $B69
                    (block $B70
                      (block $B71
                        (block $B72
                          (block $B73
                            (loop $L74
                              (br_if $B73
                                (i32.eq
                                  (i32.load
                                    (local.get $p0))
                                  (local.get $l5)))
                              (br_if $L74
                                (local.tee $p0
                                  (i32.load offset=8
                                    (local.get $p0))))
                              (br $B72))
                            (unreachable))
                          (br_if $B71
                            (i32.eqz
                              (i32.and
                                (i32.load8_u offset=12
                                  (local.get $p0))
                                (i32.const 8)))))
                        (local.set $p0
                          (i32.const 2456))
                        (loop $L75
                          (block $B76
                            (br_if $B76
                              (i32.gt_u
                                (local.tee $l5
                                  (i32.load
                                    (local.get $p0)))
                                (local.get $l4)))
                            (br_if $B70
                              (i32.gt_u
                                (local.tee $l5
                                  (i32.add
                                    (local.get $l5)
                                    (i32.load offset=4
                                      (local.get $p0))))
                                (local.get $l4))))
                          (local.set $p0
                            (i32.load offset=8
                              (local.get $p0)))
                          (br $L75))
                        (unreachable))
                      (i32.store
                        (local.get $p0)
                        (local.get $l6))
                      (i32.store offset=4
                        (local.get $p0)
                        (i32.add
                          (i32.load offset=4
                            (local.get $p0))
                          (local.get $l2)))
                      (i32.store offset=4
                        (local.tee $l11
                          (i32.add
                            (local.get $l6)
                            (select
                              (i32.and
                                (i32.sub
                                  (i32.const -8)
                                  (local.get $l6))
                                (i32.const 7))
                              (i32.const 0)
                              (i32.and
                                (i32.add
                                  (local.get $l6)
                                  (i32.const 8))
                                (i32.const 7)))))
                        (i32.or
                          (local.get $l3)
                          (i32.const 3)))
                      (local.set $l5
                        (i32.sub
                          (local.tee $l2
                            (i32.add
                              (local.get $l5)
                              (select
                                (i32.and
                                  (i32.sub
                                    (i32.const -8)
                                    (local.get $l5))
                                  (i32.const 7))
                                (i32.const 0)
                                (i32.and
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 8))
                                  (i32.const 7)))))
                          (local.tee $l3
                            (i32.add
                              (local.get $l11)
                              (local.get $l3)))))
                      (block $B77
                        (br_if $B77
                          (i32.ne
                            (local.get $l4)
                            (local.get $l2)))
                        (i32.store offset=2032
                          (i32.const 0)
                          (local.get $l3))
                        (i32.store offset=2020
                          (i32.const 0)
                          (local.tee $p0
                            (i32.add
                              (i32.load offset=2020
                                (i32.const 0))
                              (local.get $l5))))
                        (i32.store offset=4
                          (local.get $l3)
                          (i32.or
                            (local.get $p0)
                            (i32.const 1)))
                        (br $B68))
                      (block $B78
                        (br_if $B78
                          (i32.ne
                            (i32.load offset=2028
                              (i32.const 0))
                            (local.get $l2)))
                        (i32.store offset=2028
                          (i32.const 0)
                          (local.get $l3))
                        (i32.store offset=2016
                          (i32.const 0)
                          (local.tee $p0
                            (i32.add
                              (i32.load offset=2016
                                (i32.const 0))
                              (local.get $l5))))
                        (i32.store offset=4
                          (local.get $l3)
                          (i32.or
                            (local.get $p0)
                            (i32.const 1)))
                        (i32.store
                          (i32.add
                            (local.get $l3)
                            (local.get $p0))
                          (local.get $p0))
                        (br $B68))
                      (block $B79
                        (br_if $B79
                          (i32.ne
                            (i32.and
                              (local.tee $p0
                                (i32.load offset=4
                                  (local.get $l2)))
                              (i32.const 3))
                            (i32.const 1)))
                        (local.set $l7
                          (i32.and
                            (local.get $p0)
                            (i32.const -8)))
                        (block $B80
                          (block $B81
                            (br_if $B81
                              (i32.gt_u
                                (local.get $p0)
                                (i32.const 255)))
                            (drop
                              (i32.eq
                                (local.tee $l4
                                  (i32.load offset=8
                                    (local.get $l2)))
                                (local.tee $l6
                                  (i32.add
                                    (i32.shl
                                      (local.tee $l8
                                        (i32.shr_u
                                          (local.get $p0)
                                          (i32.const 3)))
                                      (i32.const 3))
                                    (i32.const 2048)))))
                            (block $B82
                              (br_if $B82
                                (i32.ne
                                  (local.tee $p0
                                    (i32.load offset=12
                                      (local.get $l2)))
                                  (local.get $l4)))
                              (i32.store offset=2008
                                (i32.const 0)
                                (i32.and
                                  (i32.load offset=2008
                                    (i32.const 0))
                                  (i32.rotl
                                    (i32.const -2)
                                    (local.get $l8))))
                              (br $B80))
                            (drop
                              (i32.eq
                                (local.get $p0)
                                (local.get $l6)))
                            (i32.store offset=12
                              (local.get $l4)
                              (local.get $p0))
                            (i32.store offset=8
                              (local.get $p0)
                              (local.get $l4))
                            (br $B80))
                          (local.set $l9
                            (i32.load offset=24
                              (local.get $l2)))
                          (block $B83
                            (block $B84
                              (br_if $B84
                                (i32.eq
                                  (local.tee $l6
                                    (i32.load offset=12
                                      (local.get $l2)))
                                  (local.get $l2)))
                              (drop
                                (i32.gt_u
                                  (local.get $l8)
                                  (local.tee $p0
                                    (i32.load offset=8
                                      (local.get $l2)))))
                              (i32.store offset=12
                                (local.get $p0)
                                (local.get $l6))
                              (i32.store offset=8
                                (local.get $l6)
                                (local.get $p0))
                              (br $B83))
                            (block $B85
                              (br_if $B85
                                (local.tee $l4
                                  (i32.load
                                    (local.tee $p0
                                      (i32.add
                                        (local.get $l2)
                                        (i32.const 20))))))
                              (br_if $B85
                                (local.tee $l4
                                  (i32.load
                                    (local.tee $p0
                                      (i32.add
                                        (local.get $l2)
                                        (i32.const 16))))))
                              (local.set $l6
                                (i32.const 0))
                              (br $B83))
                            (loop $L86
                              (local.set $l8
                                (local.get $p0))
                              (br_if $L86
                                (local.tee $l4
                                  (i32.load
                                    (local.tee $p0
                                      (i32.add
                                        (local.tee $l6
                                          (local.get $l4))
                                        (i32.const 20))))))
                              (local.set $p0
                                (i32.add
                                  (local.get $l6)
                                  (i32.const 16)))
                              (br_if $L86
                                (local.tee $l4
                                  (i32.load offset=16
                                    (local.get $l6)))))
                            (i32.store
                              (local.get $l8)
                              (i32.const 0)))
                          (br_if $B80
                            (i32.eqz
                              (local.get $l9)))
                          (block $B87
                            (block $B88
                              (br_if $B88
                                (i32.ne
                                  (i32.load
                                    (local.tee $p0
                                      (i32.add
                                        (i32.shl
                                          (local.tee $l4
                                            (i32.load offset=28
                                              (local.get $l2)))
                                          (i32.const 2))
                                        (i32.const 2312))))
                                  (local.get $l2)))
                              (i32.store
                                (local.get $p0)
                                (local.get $l6))
                              (br_if $B87
                                (local.get $l6))
                              (i32.store offset=2012
                                (i32.const 0)
                                (i32.and
                                  (i32.load offset=2012
                                    (i32.const 0))
                                  (i32.rotl
                                    (i32.const -2)
                                    (local.get $l4))))
                              (br $B80))
                            (i32.store
                              (i32.add
                                (local.get $l9)
                                (select
                                  (i32.const 16)
                                  (i32.const 20)
                                  (i32.eq
                                    (i32.load offset=16
                                      (local.get $l9))
                                    (local.get $l2))))
                              (local.get $l6))
                            (br_if $B80
                              (i32.eqz
                                (local.get $l6))))
                          (i32.store offset=24
                            (local.get $l6)
                            (local.get $l9))
                          (block $B89
                            (br_if $B89
                              (i32.eqz
                                (local.tee $p0
                                  (i32.load offset=16
                                    (local.get $l2)))))
                            (i32.store offset=16
                              (local.get $l6)
                              (local.get $p0))
                            (i32.store offset=24
                              (local.get $p0)
                              (local.get $l6)))
                          (br_if $B80
                            (i32.eqz
                              (local.tee $p0
                                (i32.load offset=20
                                  (local.get $l2)))))
                          (i32.store
                            (i32.add
                              (local.get $l6)
                              (i32.const 20))
                            (local.get $p0))
                          (i32.store offset=24
                            (local.get $p0)
                            (local.get $l6)))
                        (local.set $l5
                          (i32.add
                            (local.get $l7)
                            (local.get $l5)))
                        (local.set $l2
                          (i32.add
                            (local.get $l2)
                            (local.get $l7))))
                      (i32.store offset=4
                        (local.get $l2)
                        (i32.and
                          (i32.load offset=4
                            (local.get $l2))
                          (i32.const -2)))
                      (i32.store offset=4
                        (local.get $l3)
                        (i32.or
                          (local.get $l5)
                          (i32.const 1)))
                      (i32.store
                        (i32.add
                          (local.get $l3)
                          (local.get $l5))
                        (local.get $l5))
                      (block $B90
                        (br_if $B90
                          (i32.gt_u
                            (local.get $l5)
                            (i32.const 255)))
                        (local.set $p0
                          (i32.add
                            (i32.shl
                              (local.tee $l4
                                (i32.shr_u
                                  (local.get $l5)
                                  (i32.const 3)))
                              (i32.const 3))
                            (i32.const 2048)))
                        (block $B91
                          (block $B92
                            (br_if $B92
                              (i32.and
                                (local.tee $l5
                                  (i32.load offset=2008
                                    (i32.const 0)))
                                (local.tee $l4
                                  (i32.shl
                                    (i32.const 1)
                                    (local.get $l4)))))
                            (i32.store offset=2008
                              (i32.const 0)
                              (i32.or
                                (local.get $l5)
                                (local.get $l4)))
                            (local.set $l4
                              (local.get $p0))
                            (br $B91))
                          (local.set $l4
                            (i32.load offset=8
                              (local.get $p0))))
                        (i32.store offset=8
                          (local.get $p0)
                          (local.get $l3))
                        (i32.store offset=12
                          (local.get $l4)
                          (local.get $l3))
                        (i32.store offset=12
                          (local.get $l3)
                          (local.get $p0))
                        (i32.store offset=8
                          (local.get $l3)
                          (local.get $l4))
                        (br $B68))
                      (local.set $p0
                        (i32.const 31))
                      (block $B93
                        (br_if $B93
                          (i32.gt_u
                            (local.get $l5)
                            (i32.const 16777215)))
                        (local.set $p0
                          (i32.add
                            (i32.or
                              (i32.shl
                                (local.tee $p0
                                  (i32.sub
                                    (i32.shr_u
                                      (i32.shl
                                        (local.tee $l6
                                          (i32.shl
                                            (local.tee $l4
                                              (i32.shl
                                                (local.tee $p0
                                                  (i32.shr_u
                                                    (local.get $l5)
                                                    (i32.const 8)))
                                                (local.tee $p0
                                                  (i32.and
                                                    (i32.shr_u
                                                      (i32.add
                                                        (local.get $p0)
                                                        (i32.const 1048320))
                                                      (i32.const 16))
                                                    (i32.const 8)))))
                                            (local.tee $l4
                                              (i32.and
                                                (i32.shr_u
                                                  (i32.add
                                                    (local.get $l4)
                                                    (i32.const 520192))
                                                  (i32.const 16))
                                                (i32.const 4)))))
                                        (local.tee $l6
                                          (i32.and
                                            (i32.shr_u
                                              (i32.add
                                                (local.get $l6)
                                                (i32.const 245760))
                                              (i32.const 16))
                                            (i32.const 2))))
                                      (i32.const 15))
                                    (i32.or
                                      (i32.or
                                        (local.get $p0)
                                        (local.get $l4))
                                      (local.get $l6))))
                                (i32.const 1))
                              (i32.and
                                (i32.shr_u
                                  (local.get $l5)
                                  (i32.add
                                    (local.get $p0)
                                    (i32.const 21)))
                                (i32.const 1)))
                            (i32.const 28))))
                      (i32.store offset=28
                        (local.get $l3)
                        (local.get $p0))
                      (i64.store offset=16 align=4
                        (local.get $l3)
                        (i64.const 0))
                      (local.set $l4
                        (i32.add
                          (i32.shl
                            (local.get $p0)
                            (i32.const 2))
                          (i32.const 2312)))
                      (block $B94
                        (block $B95
                          (br_if $B95
                            (i32.and
                              (local.tee $l6
                                (i32.load offset=2012
                                  (i32.const 0)))
                              (local.tee $l8
                                (i32.shl
                                  (i32.const 1)
                                  (local.get $p0)))))
                          (i32.store offset=2012
                            (i32.const 0)
                            (i32.or
                              (local.get $l6)
                              (local.get $l8)))
                          (i32.store
                            (local.get $l4)
                            (local.get $l3))
                          (i32.store offset=24
                            (local.get $l3)
                            (local.get $l4))
                          (br $B94))
                        (local.set $p0
                          (i32.shl
                            (local.get $l5)
                            (select
                              (i32.const 0)
                              (i32.sub
                                (i32.const 25)
                                (i32.shr_u
                                  (local.get $p0)
                                  (i32.const 1)))
                              (i32.eq
                                (local.get $p0)
                                (i32.const 31)))))
                        (local.set $l6
                          (i32.load
                            (local.get $l4)))
                        (loop $L96
                          (br_if $B69
                            (i32.eq
                              (i32.and
                                (i32.load offset=4
                                  (local.tee $l4
                                    (local.get $l6)))
                                (i32.const -8))
                              (local.get $l5)))
                          (local.set $l6
                            (i32.shr_u
                              (local.get $p0)
                              (i32.const 29)))
                          (local.set $p0
                            (i32.shl
                              (local.get $p0)
                              (i32.const 1)))
                          (br_if $L96
                            (local.tee $l6
                              (i32.load
                                (local.tee $l8
                                  (i32.add
                                    (i32.add
                                      (local.get $l4)
                                      (i32.and
                                        (local.get $l6)
                                        (i32.const 4)))
                                    (i32.const 16)))))))
                        (i32.store
                          (local.get $l8)
                          (local.get $l3))
                        (i32.store offset=24
                          (local.get $l3)
                          (local.get $l4)))
                      (i32.store offset=12
                        (local.get $l3)
                        (local.get $l3))
                      (i32.store offset=8
                        (local.get $l3)
                        (local.get $l3))
                      (br $B68))
                    (i32.store offset=2020
                      (i32.const 0)
                      (local.tee $l11
                        (i32.sub
                          (local.tee $p0
                            (i32.add
                              (local.get $l2)
                              (i32.const -40)))
                          (local.tee $l8
                            (select
                              (i32.and
                                (i32.sub
                                  (i32.const -8)
                                  (local.get $l6))
                                (i32.const 7))
                              (i32.const 0)
                              (i32.and
                                (i32.add
                                  (local.get $l6)
                                  (i32.const 8))
                                (i32.const 7)))))))
                    (i32.store offset=2032
                      (i32.const 0)
                      (local.tee $l8
                        (i32.add
                          (local.get $l6)
                          (local.get $l8))))
                    (i32.store offset=4
                      (local.get $l8)
                      (i32.or
                        (local.get $l11)
                        (i32.const 1)))
                    (i32.store offset=4
                      (i32.add
                        (local.get $l6)
                        (local.get $p0))
                      (i32.const 40))
                    (i32.store offset=2036
                      (i32.const 0)
                      (i32.load offset=2496
                        (i32.const 0)))
                    (i32.store offset=4
                      (local.tee $l8
                        (select
                          (local.get $l4)
                          (local.tee $p0
                            (i32.add
                              (i32.add
                                (local.get $l5)
                                (select
                                  (i32.and
                                    (i32.sub
                                      (i32.const 39)
                                      (local.get $l5))
                                    (i32.const 7))
                                  (i32.const 0)
                                  (i32.and
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const -39))
                                    (i32.const 7))))
                              (i32.const -47)))
                          (i32.lt_u
                            (local.get $p0)
                            (i32.add
                              (local.get $l4)
                              (i32.const 16)))))
                      (i32.const 27))
                    (i64.store align=4
                      (i32.add
                        (local.get $l8)
                        (i32.const 16))
                      (i64.load offset=2464 align=4
                        (i32.const 0)))
                    (i64.store offset=8 align=4
                      (local.get $l8)
                      (i64.load offset=2456 align=4
                        (i32.const 0)))
                    (i32.store offset=2464
                      (i32.const 0)
                      (i32.add
                        (local.get $l8)
                        (i32.const 8)))
                    (i32.store offset=2460
                      (i32.const 0)
                      (local.get $l2))
                    (i32.store offset=2456
                      (i32.const 0)
                      (local.get $l6))
                    (i32.store offset=2468
                      (i32.const 0)
                      (i32.const 0))
                    (local.set $p0
                      (i32.add
                        (local.get $l8)
                        (i32.const 24)))
                    (loop $L97
                      (i32.store offset=4
                        (local.get $p0)
                        (i32.const 7))
                      (local.set $l6
                        (i32.add
                          (local.get $p0)
                          (i32.const 8)))
                      (local.set $p0
                        (i32.add
                          (local.get $p0)
                          (i32.const 4)))
                      (br_if $L97
                        (i32.gt_u
                          (local.get $l5)
                          (local.get $l6))))
                    (br_if $B58
                      (i32.eq
                        (local.get $l8)
                        (local.get $l4)))
                    (i32.store offset=4
                      (local.get $l8)
                      (i32.and
                        (i32.load offset=4
                          (local.get $l8))
                        (i32.const -2)))
                    (i32.store offset=4
                      (local.get $l4)
                      (i32.or
                        (local.tee $l2
                          (i32.sub
                            (local.get $l8)
                            (local.get $l4)))
                        (i32.const 1)))
                    (i32.store
                      (local.get $l8)
                      (local.get $l2))
                    (block $B98
                      (br_if $B98
                        (i32.gt_u
                          (local.get $l2)
                          (i32.const 255)))
                      (local.set $p0
                        (i32.add
                          (i32.shl
                            (local.tee $l5
                              (i32.shr_u
                                (local.get $l2)
                                (i32.const 3)))
                            (i32.const 3))
                          (i32.const 2048)))
                      (block $B99
                        (block $B100
                          (br_if $B100
                            (i32.and
                              (local.tee $l6
                                (i32.load offset=2008
                                  (i32.const 0)))
                              (local.tee $l5
                                (i32.shl
                                  (i32.const 1)
                                  (local.get $l5)))))
                          (i32.store offset=2008
                            (i32.const 0)
                            (i32.or
                              (local.get $l6)
                              (local.get $l5)))
                          (local.set $l5
                            (local.get $p0))
                          (br $B99))
                        (local.set $l5
                          (i32.load offset=8
                            (local.get $p0))))
                      (i32.store offset=8
                        (local.get $p0)
                        (local.get $l4))
                      (i32.store offset=12
                        (local.get $l5)
                        (local.get $l4))
                      (i32.store offset=12
                        (local.get $l4)
                        (local.get $p0))
                      (i32.store offset=8
                        (local.get $l4)
                        (local.get $l5))
                      (br $B58))
                    (local.set $p0
                      (i32.const 31))
                    (block $B101
                      (br_if $B101
                        (i32.gt_u
                          (local.get $l2)
                          (i32.const 16777215)))
                      (local.set $p0
                        (i32.add
                          (i32.or
                            (i32.shl
                              (local.tee $p0
                                (i32.sub
                                  (i32.shr_u
                                    (i32.shl
                                      (local.tee $l6
                                        (i32.shl
                                          (local.tee $l5
                                            (i32.shl
                                              (local.tee $p0
                                                (i32.shr_u
                                                  (local.get $l2)
                                                  (i32.const 8)))
                                              (local.tee $p0
                                                (i32.and
                                                  (i32.shr_u
                                                    (i32.add
                                                      (local.get $p0)
                                                      (i32.const 1048320))
                                                    (i32.const 16))
                                                  (i32.const 8)))))
                                          (local.tee $l5
                                            (i32.and
                                              (i32.shr_u
                                                (i32.add
                                                  (local.get $l5)
                                                  (i32.const 520192))
                                                (i32.const 16))
                                              (i32.const 4)))))
                                      (local.tee $l6
                                        (i32.and
                                          (i32.shr_u
                                            (i32.add
                                              (local.get $l6)
                                              (i32.const 245760))
                                            (i32.const 16))
                                          (i32.const 2))))
                                    (i32.const 15))
                                  (i32.or
                                    (i32.or
                                      (local.get $p0)
                                      (local.get $l5))
                                    (local.get $l6))))
                              (i32.const 1))
                            (i32.and
                              (i32.shr_u
                                (local.get $l2)
                                (i32.add
                                  (local.get $p0)
                                  (i32.const 21)))
                              (i32.const 1)))
                          (i32.const 28))))
                    (i64.store offset=16 align=4
                      (local.get $l4)
                      (i64.const 0))
                    (i32.store
                      (i32.add
                        (local.get $l4)
                        (i32.const 28))
                      (local.get $p0))
                    (local.set $l5
                      (i32.add
                        (i32.shl
                          (local.get $p0)
                          (i32.const 2))
                        (i32.const 2312)))
                    (block $B102
                      (block $B103
                        (br_if $B103
                          (i32.and
                            (local.tee $l6
                              (i32.load offset=2012
                                (i32.const 0)))
                            (local.tee $l8
                              (i32.shl
                                (i32.const 1)
                                (local.get $p0)))))
                        (i32.store offset=2012
                          (i32.const 0)
                          (i32.or
                            (local.get $l6)
                            (local.get $l8)))
                        (i32.store
                          (local.get $l5)
                          (local.get $l4))
                        (i32.store
                          (i32.add
                            (local.get $l4)
                            (i32.const 24))
                          (local.get $l5))
                        (br $B102))
                      (local.set $p0
                        (i32.shl
                          (local.get $l2)
                          (select
                            (i32.const 0)
                            (i32.sub
                              (i32.const 25)
                              (i32.shr_u
                                (local.get $p0)
                                (i32.const 1)))
                            (i32.eq
                              (local.get $p0)
                              (i32.const 31)))))
                      (local.set $l6
                        (i32.load
                          (local.get $l5)))
                      (loop $L104
                        (br_if $B67
                          (i32.eq
                            (i32.and
                              (i32.load offset=4
                                (local.tee $l5
                                  (local.get $l6)))
                              (i32.const -8))
                            (local.get $l2)))
                        (local.set $l6
                          (i32.shr_u
                            (local.get $p0)
                            (i32.const 29)))
                        (local.set $p0
                          (i32.shl
                            (local.get $p0)
                            (i32.const 1)))
                        (br_if $L104
                          (local.tee $l6
                            (i32.load
                              (local.tee $l8
                                (i32.add
                                  (i32.add
                                    (local.get $l5)
                                    (i32.and
                                      (local.get $l6)
                                      (i32.const 4)))
                                  (i32.const 16)))))))
                      (i32.store
                        (local.get $l8)
                        (local.get $l4))
                      (i32.store
                        (i32.add
                          (local.get $l4)
                          (i32.const 24))
                        (local.get $l5)))
                    (i32.store offset=12
                      (local.get $l4)
                      (local.get $l4))
                    (i32.store offset=8
                      (local.get $l4)
                      (local.get $l4))
                    (br $B58))
                  (i32.store offset=12
                    (local.tee $p0
                      (i32.load offset=8
                        (local.get $l4)))
                    (local.get $l3))
                  (i32.store offset=8
                    (local.get $l4)
                    (local.get $l3))
                  (i32.store offset=24
                    (local.get $l3)
                    (i32.const 0))
                  (i32.store offset=12
                    (local.get $l3)
                    (local.get $l4))
                  (i32.store offset=8
                    (local.get $l3)
                    (local.get $p0)))
                (local.set $p0
                  (i32.add
                    (local.get $l11)
                    (i32.const 8)))
                (br $B0))
              (i32.store offset=12
                (local.tee $p0
                  (i32.load offset=8
                    (local.get $l5)))
                (local.get $l4))
              (i32.store offset=8
                (local.get $l5)
                (local.get $l4))
              (i32.store
                (i32.add
                  (local.get $l4)
                  (i32.const 24))
                (i32.const 0))
              (i32.store offset=12
                (local.get $l4)
                (local.get $l5))
              (i32.store offset=8
                (local.get $l4)
                (local.get $p0)))
            (br_if $B3
              (i32.le_u
                (local.tee $p0
                  (i32.load offset=2020
                    (i32.const 0)))
                (local.get $l3)))
            (i32.store offset=2020
              (i32.const 0)
              (local.tee $l4
                (i32.sub
                  (local.get $p0)
                  (local.get $l3))))
            (i32.store offset=2032
              (i32.const 0)
              (local.tee $l5
                (i32.add
                  (local.tee $p0
                    (i32.load offset=2032
                      (i32.const 0)))
                  (local.get $l3))))
            (i32.store offset=4
              (local.get $l5)
              (i32.or
                (local.get $l4)
                (i32.const 1)))
            (i32.store offset=4
              (local.get $p0)
              (i32.or
                (local.get $l3)
                (i32.const 3)))
            (local.set $p0
              (i32.add
                (local.get $p0)
                (i32.const 8)))
            (br $B0))
          (i32.store
            (call $__errno_location)
            (i32.const 48))
          (local.set $p0
            (i32.const 0))
          (br $B0))
        (block $B105
          (br_if $B105
            (i32.eqz
              (local.get $l11)))
          (block $B106
            (block $B107
              (br_if $B107
                (i32.ne
                  (local.get $l8)
                  (i32.load
                    (local.tee $p0
                      (i32.add
                        (i32.shl
                          (local.tee $l5
                            (i32.load offset=28
                              (local.get $l8)))
                          (i32.const 2))
                        (i32.const 2312))))))
              (i32.store
                (local.get $p0)
                (local.get $l6))
              (br_if $B106
                (local.get $l6))
              (i32.store offset=2012
                (i32.const 0)
                (local.tee $l7
                  (i32.and
                    (local.get $l7)
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l5)))))
              (br $B105))
            (i32.store
              (i32.add
                (local.get $l11)
                (select
                  (i32.const 16)
                  (i32.const 20)
                  (i32.eq
                    (i32.load offset=16
                      (local.get $l11))
                    (local.get $l8))))
              (local.get $l6))
            (br_if $B105
              (i32.eqz
                (local.get $l6))))
          (i32.store offset=24
            (local.get $l6)
            (local.get $l11))
          (block $B108
            (br_if $B108
              (i32.eqz
                (local.tee $p0
                  (i32.load offset=16
                    (local.get $l8)))))
            (i32.store offset=16
              (local.get $l6)
              (local.get $p0))
            (i32.store offset=24
              (local.get $p0)
              (local.get $l6)))
          (br_if $B105
            (i32.eqz
              (local.tee $p0
                (i32.load
                  (i32.add
                    (local.get $l8)
                    (i32.const 20))))))
          (i32.store
            (i32.add
              (local.get $l6)
              (i32.const 20))
            (local.get $p0))
          (i32.store offset=24
            (local.get $p0)
            (local.get $l6)))
        (block $B109
          (block $B110
            (br_if $B110
              (i32.gt_u
                (local.get $l4)
                (i32.const 15)))
            (i32.store offset=4
              (local.get $l8)
              (i32.or
                (local.tee $p0
                  (i32.add
                    (local.get $l4)
                    (local.get $l3)))
                (i32.const 3)))
            (i32.store offset=4
              (local.tee $p0
                (i32.add
                  (local.get $l8)
                  (local.get $p0)))
              (i32.or
                (i32.load offset=4
                  (local.get $p0))
                (i32.const 1)))
            (br $B109))
          (i32.store offset=4
            (local.get $l8)
            (i32.or
              (local.get $l3)
              (i32.const 3)))
          (i32.store offset=4
            (local.tee $l6
              (i32.add
                (local.get $l8)
                (local.get $l3)))
            (i32.or
              (local.get $l4)
              (i32.const 1)))
          (i32.store
            (i32.add
              (local.get $l6)
              (local.get $l4))
            (local.get $l4))
          (block $B111
            (br_if $B111
              (i32.gt_u
                (local.get $l4)
                (i32.const 255)))
            (local.set $p0
              (i32.add
                (i32.shl
                  (local.tee $l4
                    (i32.shr_u
                      (local.get $l4)
                      (i32.const 3)))
                  (i32.const 3))
                (i32.const 2048)))
            (block $B112
              (block $B113
                (br_if $B113
                  (i32.and
                    (local.tee $l5
                      (i32.load offset=2008
                        (i32.const 0)))
                    (local.tee $l4
                      (i32.shl
                        (i32.const 1)
                        (local.get $l4)))))
                (i32.store offset=2008
                  (i32.const 0)
                  (i32.or
                    (local.get $l5)
                    (local.get $l4)))
                (local.set $l4
                  (local.get $p0))
                (br $B112))
              (local.set $l4
                (i32.load offset=8
                  (local.get $p0))))
            (i32.store offset=8
              (local.get $p0)
              (local.get $l6))
            (i32.store offset=12
              (local.get $l4)
              (local.get $l6))
            (i32.store offset=12
              (local.get $l6)
              (local.get $p0))
            (i32.store offset=8
              (local.get $l6)
              (local.get $l4))
            (br $B109))
          (local.set $p0
            (i32.const 31))
          (block $B114
            (br_if $B114
              (i32.gt_u
                (local.get $l4)
                (i32.const 16777215)))
            (local.set $p0
              (i32.add
                (i32.or
                  (i32.shl
                    (local.tee $p0
                      (i32.sub
                        (i32.shr_u
                          (i32.shl
                            (local.tee $l3
                              (i32.shl
                                (local.tee $l5
                                  (i32.shl
                                    (local.tee $p0
                                      (i32.shr_u
                                        (local.get $l4)
                                        (i32.const 8)))
                                    (local.tee $p0
                                      (i32.and
                                        (i32.shr_u
                                          (i32.add
                                            (local.get $p0)
                                            (i32.const 1048320))
                                          (i32.const 16))
                                        (i32.const 8)))))
                                (local.tee $l5
                                  (i32.and
                                    (i32.shr_u
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 520192))
                                      (i32.const 16))
                                    (i32.const 4)))))
                            (local.tee $l3
                              (i32.and
                                (i32.shr_u
                                  (i32.add
                                    (local.get $l3)
                                    (i32.const 245760))
                                  (i32.const 16))
                                (i32.const 2))))
                          (i32.const 15))
                        (i32.or
                          (i32.or
                            (local.get $p0)
                            (local.get $l5))
                          (local.get $l3))))
                    (i32.const 1))
                  (i32.and
                    (i32.shr_u
                      (local.get $l4)
                      (i32.add
                        (local.get $p0)
                        (i32.const 21)))
                    (i32.const 1)))
                (i32.const 28))))
          (i32.store offset=28
            (local.get $l6)
            (local.get $p0))
          (i64.store offset=16 align=4
            (local.get $l6)
            (i64.const 0))
          (local.set $l5
            (i32.add
              (i32.shl
                (local.get $p0)
                (i32.const 2))
              (i32.const 2312)))
          (block $B115
            (block $B116
              (block $B117
                (br_if $B117
                  (i32.and
                    (local.get $l7)
                    (local.tee $l3
                      (i32.shl
                        (i32.const 1)
                        (local.get $p0)))))
                (i32.store offset=2012
                  (i32.const 0)
                  (i32.or
                    (local.get $l7)
                    (local.get $l3)))
                (i32.store
                  (local.get $l5)
                  (local.get $l6))
                (i32.store offset=24
                  (local.get $l6)
                  (local.get $l5))
                (br $B116))
              (local.set $p0
                (i32.shl
                  (local.get $l4)
                  (select
                    (i32.const 0)
                    (i32.sub
                      (i32.const 25)
                      (i32.shr_u
                        (local.get $p0)
                        (i32.const 1)))
                    (i32.eq
                      (local.get $p0)
                      (i32.const 31)))))
              (local.set $l3
                (i32.load
                  (local.get $l5)))
              (loop $L118
                (br_if $B115
                  (i32.eq
                    (i32.and
                      (i32.load offset=4
                        (local.tee $l5
                          (local.get $l3)))
                      (i32.const -8))
                    (local.get $l4)))
                (local.set $l3
                  (i32.shr_u
                    (local.get $p0)
                    (i32.const 29)))
                (local.set $p0
                  (i32.shl
                    (local.get $p0)
                    (i32.const 1)))
                (br_if $L118
                  (local.tee $l3
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (i32.add
                            (local.get $l5)
                            (i32.and
                              (local.get $l3)
                              (i32.const 4)))
                          (i32.const 16)))))))
              (i32.store
                (local.get $l2)
                (local.get $l6))
              (i32.store offset=24
                (local.get $l6)
                (local.get $l5)))
            (i32.store offset=12
              (local.get $l6)
              (local.get $l6))
            (i32.store offset=8
              (local.get $l6)
              (local.get $l6))
            (br $B109))
          (i32.store offset=12
            (local.tee $p0
              (i32.load offset=8
                (local.get $l5)))
            (local.get $l6))
          (i32.store offset=8
            (local.get $l5)
            (local.get $l6))
          (i32.store offset=24
            (local.get $l6)
            (i32.const 0))
          (i32.store offset=12
            (local.get $l6)
            (local.get $l5))
          (i32.store offset=8
            (local.get $l6)
            (local.get $p0)))
        (local.set $p0
          (i32.add
            (local.get $l8)
            (i32.const 8)))
        (br $B0))
      (block $B119
        (br_if $B119
          (i32.eqz
            (local.get $l10)))
        (block $B120
          (block $B121
            (br_if $B121
              (i32.ne
                (local.get $l6)
                (i32.load
                  (local.tee $p0
                    (i32.add
                      (i32.shl
                        (local.tee $l5
                          (i32.load offset=28
                            (local.get $l6)))
                        (i32.const 2))
                      (i32.const 2312))))))
            (i32.store
              (local.get $p0)
              (local.get $l8))
            (br_if $B120
              (local.get $l8))
            (i32.store offset=2012
              (i32.const 0)
              (i32.and
                (local.get $l9)
                (i32.rotl
                  (i32.const -2)
                  (local.get $l5))))
            (br $B119))
          (i32.store
            (i32.add
              (local.get $l10)
              (select
                (i32.const 16)
                (i32.const 20)
                (i32.eq
                  (i32.load offset=16
                    (local.get $l10))
                  (local.get $l6))))
            (local.get $l8))
          (br_if $B119
            (i32.eqz
              (local.get $l8))))
        (i32.store offset=24
          (local.get $l8)
          (local.get $l10))
        (block $B122
          (br_if $B122
            (i32.eqz
              (local.tee $p0
                (i32.load offset=16
                  (local.get $l6)))))
          (i32.store offset=16
            (local.get $l8)
            (local.get $p0))
          (i32.store offset=24
            (local.get $p0)
            (local.get $l8)))
        (br_if $B119
          (i32.eqz
            (local.tee $p0
              (i32.load
                (i32.add
                  (local.get $l6)
                  (i32.const 20))))))
        (i32.store
          (i32.add
            (local.get $l8)
            (i32.const 20))
          (local.get $p0))
        (i32.store offset=24
          (local.get $p0)
          (local.get $l8)))
      (block $B123
        (block $B124
          (br_if $B124
            (i32.gt_u
              (local.get $l4)
              (i32.const 15)))
          (i32.store offset=4
            (local.get $l6)
            (i32.or
              (local.tee $p0
                (i32.add
                  (local.get $l4)
                  (local.get $l3)))
              (i32.const 3)))
          (i32.store offset=4
            (local.tee $p0
              (i32.add
                (local.get $l6)
                (local.get $p0)))
            (i32.or
              (i32.load offset=4
                (local.get $p0))
              (i32.const 1)))
          (br $B123))
        (i32.store offset=4
          (local.get $l6)
          (i32.or
            (local.get $l3)
            (i32.const 3)))
        (i32.store offset=4
          (local.tee $l5
            (i32.add
              (local.get $l6)
              (local.get $l3)))
          (i32.or
            (local.get $l4)
            (i32.const 1)))
        (i32.store
          (i32.add
            (local.get $l5)
            (local.get $l4))
          (local.get $l4))
        (block $B125
          (br_if $B125
            (i32.eqz
              (local.get $l7)))
          (local.set $l3
            (i32.add
              (i32.shl
                (local.tee $l8
                  (i32.shr_u
                    (local.get $l7)
                    (i32.const 3)))
                (i32.const 3))
              (i32.const 2048)))
          (local.set $p0
            (i32.load offset=2028
              (i32.const 0)))
          (block $B126
            (block $B127
              (br_if $B127
                (i32.and
                  (local.tee $l8
                    (i32.shl
                      (i32.const 1)
                      (local.get $l8)))
                  (local.get $l2)))
              (i32.store offset=2008
                (i32.const 0)
                (i32.or
                  (local.get $l8)
                  (local.get $l2)))
              (local.set $l8
                (local.get $l3))
              (br $B126))
            (local.set $l8
              (i32.load offset=8
                (local.get $l3))))
          (i32.store offset=8
            (local.get $l3)
            (local.get $p0))
          (i32.store offset=12
            (local.get $l8)
            (local.get $p0))
          (i32.store offset=12
            (local.get $p0)
            (local.get $l3))
          (i32.store offset=8
            (local.get $p0)
            (local.get $l8)))
        (i32.store offset=2028
          (i32.const 0)
          (local.get $l5))
        (i32.store offset=2016
          (i32.const 0)
          (local.get $l4)))
      (local.set $p0
        (i32.add
          (local.get $l6)
          (i32.const 8))))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16)))
    (local.get $p0))
  (func $dlfree (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (local.set $l3
        (i32.add
          (local.tee $l1
            (i32.add
              (local.get $p0)
              (i32.const -8)))
          (local.tee $p0
            (i32.and
              (local.tee $l2
                (i32.load
                  (i32.add
                    (local.get $p0)
                    (i32.const -4))))
              (i32.const -8)))))
      (block $B1
        (br_if $B1
          (i32.and
            (local.get $l2)
            (i32.const 1)))
        (br_if $B0
          (i32.eqz
            (i32.and
              (local.get $l2)
              (i32.const 3))))
        (br_if $B0
          (i32.lt_u
            (local.tee $l1
              (i32.sub
                (local.get $l1)
                (local.tee $l2
                  (i32.load
                    (local.get $l1)))))
            (local.tee $l4
              (i32.load offset=2024
                (i32.const 0)))))
        (local.set $p0
          (i32.add
            (local.get $l2)
            (local.get $p0)))
        (block $B2
          (br_if $B2
            (i32.eq
              (i32.load offset=2028
                (i32.const 0))
              (local.get $l1)))
          (block $B3
            (br_if $B3
              (i32.gt_u
                (local.get $l2)
                (i32.const 255)))
            (drop
              (i32.eq
                (local.tee $l4
                  (i32.load offset=8
                    (local.get $l1)))
                (local.tee $l6
                  (i32.add
                    (i32.shl
                      (local.tee $l5
                        (i32.shr_u
                          (local.get $l2)
                          (i32.const 3)))
                      (i32.const 3))
                    (i32.const 2048)))))
            (block $B4
              (br_if $B4
                (i32.ne
                  (local.tee $l2
                    (i32.load offset=12
                      (local.get $l1)))
                  (local.get $l4)))
              (i32.store offset=2008
                (i32.const 0)
                (i32.and
                  (i32.load offset=2008
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l5))))
              (br $B1))
            (drop
              (i32.eq
                (local.get $l2)
                (local.get $l6)))
            (i32.store offset=12
              (local.get $l4)
              (local.get $l2))
            (i32.store offset=8
              (local.get $l2)
              (local.get $l4))
            (br $B1))
          (local.set $l7
            (i32.load offset=24
              (local.get $l1)))
          (block $B5
            (block $B6
              (br_if $B6
                (i32.eq
                  (local.tee $l6
                    (i32.load offset=12
                      (local.get $l1)))
                  (local.get $l1)))
              (drop
                (i32.gt_u
                  (local.get $l4)
                  (local.tee $l2
                    (i32.load offset=8
                      (local.get $l1)))))
              (i32.store offset=12
                (local.get $l2)
                (local.get $l6))
              (i32.store offset=8
                (local.get $l6)
                (local.get $l2))
              (br $B5))
            (block $B7
              (br_if $B7
                (local.tee $l4
                  (i32.load
                    (local.tee $l2
                      (i32.add
                        (local.get $l1)
                        (i32.const 20))))))
              (br_if $B7
                (local.tee $l4
                  (i32.load
                    (local.tee $l2
                      (i32.add
                        (local.get $l1)
                        (i32.const 16))))))
              (local.set $l6
                (i32.const 0))
              (br $B5))
            (loop $L8
              (local.set $l5
                (local.get $l2))
              (br_if $L8
                (local.tee $l4
                  (i32.load
                    (local.tee $l2
                      (i32.add
                        (local.tee $l6
                          (local.get $l4))
                        (i32.const 20))))))
              (local.set $l2
                (i32.add
                  (local.get $l6)
                  (i32.const 16)))
              (br_if $L8
                (local.tee $l4
                  (i32.load offset=16
                    (local.get $l6)))))
            (i32.store
              (local.get $l5)
              (i32.const 0)))
          (br_if $B1
            (i32.eqz
              (local.get $l7)))
          (block $B9
            (block $B10
              (br_if $B10
                (i32.ne
                  (i32.load
                    (local.tee $l2
                      (i32.add
                        (i32.shl
                          (local.tee $l4
                            (i32.load offset=28
                              (local.get $l1)))
                          (i32.const 2))
                        (i32.const 2312))))
                  (local.get $l1)))
              (i32.store
                (local.get $l2)
                (local.get $l6))
              (br_if $B9
                (local.get $l6))
              (i32.store offset=2012
                (i32.const 0)
                (i32.and
                  (i32.load offset=2012
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l4))))
              (br $B1))
            (i32.store
              (i32.add
                (local.get $l7)
                (select
                  (i32.const 16)
                  (i32.const 20)
                  (i32.eq
                    (i32.load offset=16
                      (local.get $l7))
                    (local.get $l1))))
              (local.get $l6))
            (br_if $B1
              (i32.eqz
                (local.get $l6))))
          (i32.store offset=24
            (local.get $l6)
            (local.get $l7))
          (block $B11
            (br_if $B11
              (i32.eqz
                (local.tee $l2
                  (i32.load offset=16
                    (local.get $l1)))))
            (i32.store offset=16
              (local.get $l6)
              (local.get $l2))
            (i32.store offset=24
              (local.get $l2)
              (local.get $l6)))
          (br_if $B1
            (i32.eqz
              (local.tee $l2
                (i32.load offset=20
                  (local.get $l1)))))
          (i32.store
            (i32.add
              (local.get $l6)
              (i32.const 20))
            (local.get $l2))
          (i32.store offset=24
            (local.get $l2)
            (local.get $l6))
          (br $B1))
        (br_if $B1
          (i32.ne
            (i32.and
              (local.tee $l2
                (i32.load offset=4
                  (local.get $l3)))
              (i32.const 3))
            (i32.const 3)))
        (i32.store offset=2016
          (i32.const 0)
          (local.get $p0))
        (i32.store offset=4
          (local.get $l3)
          (i32.and
            (local.get $l2)
            (i32.const -2)))
        (i32.store offset=4
          (local.get $l1)
          (i32.or
            (local.get $p0)
            (i32.const 1)))
        (i32.store
          (i32.add
            (local.get $l1)
            (local.get $p0))
          (local.get $p0))
        (return))
      (br_if $B0
        (i32.le_u
          (local.get $l3)
          (local.get $l1)))
      (br_if $B0
        (i32.eqz
          (i32.and
            (local.tee $l2
              (i32.load offset=4
                (local.get $l3)))
            (i32.const 1))))
      (block $B12
        (block $B13
          (br_if $B13
            (i32.and
              (local.get $l2)
              (i32.const 2)))
          (block $B14
            (br_if $B14
              (i32.ne
                (i32.load offset=2032
                  (i32.const 0))
                (local.get $l3)))
            (i32.store offset=2032
              (i32.const 0)
              (local.get $l1))
            (i32.store offset=2020
              (i32.const 0)
              (local.tee $p0
                (i32.add
                  (i32.load offset=2020
                    (i32.const 0))
                  (local.get $p0))))
            (i32.store offset=4
              (local.get $l1)
              (i32.or
                (local.get $p0)
                (i32.const 1)))
            (br_if $B0
              (i32.ne
                (local.get $l1)
                (i32.load offset=2028
                  (i32.const 0))))
            (i32.store offset=2016
              (i32.const 0)
              (i32.const 0))
            (i32.store offset=2028
              (i32.const 0)
              (i32.const 0))
            (return))
          (block $B15
            (br_if $B15
              (i32.ne
                (i32.load offset=2028
                  (i32.const 0))
                (local.get $l3)))
            (i32.store offset=2028
              (i32.const 0)
              (local.get $l1))
            (i32.store offset=2016
              (i32.const 0)
              (local.tee $p0
                (i32.add
                  (i32.load offset=2016
                    (i32.const 0))
                  (local.get $p0))))
            (i32.store offset=4
              (local.get $l1)
              (i32.or
                (local.get $p0)
                (i32.const 1)))
            (i32.store
              (i32.add
                (local.get $l1)
                (local.get $p0))
              (local.get $p0))
            (return))
          (local.set $p0
            (i32.add
              (i32.and
                (local.get $l2)
                (i32.const -8))
              (local.get $p0)))
          (block $B16
            (block $B17
              (br_if $B17
                (i32.gt_u
                  (local.get $l2)
                  (i32.const 255)))
              (drop
                (i32.eq
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $l3)))
                  (local.tee $l6
                    (i32.add
                      (i32.shl
                        (local.tee $l5
                          (i32.shr_u
                            (local.get $l2)
                            (i32.const 3)))
                        (i32.const 3))
                      (i32.const 2048)))))
              (block $B18
                (br_if $B18
                  (i32.ne
                    (local.tee $l2
                      (i32.load offset=12
                        (local.get $l3)))
                    (local.get $l4)))
                (i32.store offset=2008
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=2008
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l5))))
                (br $B16))
              (drop
                (i32.eq
                  (local.get $l2)
                  (local.get $l6)))
              (i32.store offset=12
                (local.get $l4)
                (local.get $l2))
              (i32.store offset=8
                (local.get $l2)
                (local.get $l4))
              (br $B16))
            (local.set $l7
              (i32.load offset=24
                (local.get $l3)))
            (block $B19
              (block $B20
                (br_if $B20
                  (i32.eq
                    (local.tee $l6
                      (i32.load offset=12
                        (local.get $l3)))
                    (local.get $l3)))
                (drop
                  (i32.gt_u
                    (i32.load offset=2024
                      (i32.const 0))
                    (local.tee $l2
                      (i32.load offset=8
                        (local.get $l3)))))
                (i32.store offset=12
                  (local.get $l2)
                  (local.get $l6))
                (i32.store offset=8
                  (local.get $l6)
                  (local.get $l2))
                (br $B19))
              (block $B21
                (br_if $B21
                  (local.tee $l4
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (local.get $l3)
                          (i32.const 20))))))
                (br_if $B21
                  (local.tee $l4
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (local.get $l3)
                          (i32.const 16))))))
                (local.set $l6
                  (i32.const 0))
                (br $B19))
              (loop $L22
                (local.set $l5
                  (local.get $l2))
                (br_if $L22
                  (local.tee $l4
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (local.tee $l6
                            (local.get $l4))
                          (i32.const 20))))))
                (local.set $l2
                  (i32.add
                    (local.get $l6)
                    (i32.const 16)))
                (br_if $L22
                  (local.tee $l4
                    (i32.load offset=16
                      (local.get $l6)))))
              (i32.store
                (local.get $l5)
                (i32.const 0)))
            (br_if $B16
              (i32.eqz
                (local.get $l7)))
            (block $B23
              (block $B24
                (br_if $B24
                  (i32.ne
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (i32.shl
                            (local.tee $l4
                              (i32.load offset=28
                                (local.get $l3)))
                            (i32.const 2))
                          (i32.const 2312))))
                    (local.get $l3)))
                (i32.store
                  (local.get $l2)
                  (local.get $l6))
                (br_if $B23
                  (local.get $l6))
                (i32.store offset=2012
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=2012
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l4))))
                (br $B16))
              (i32.store
                (i32.add
                  (local.get $l7)
                  (select
                    (i32.const 16)
                    (i32.const 20)
                    (i32.eq
                      (i32.load offset=16
                        (local.get $l7))
                      (local.get $l3))))
                (local.get $l6))
              (br_if $B16
                (i32.eqz
                  (local.get $l6))))
            (i32.store offset=24
              (local.get $l6)
              (local.get $l7))
            (block $B25
              (br_if $B25
                (i32.eqz
                  (local.tee $l2
                    (i32.load offset=16
                      (local.get $l3)))))
              (i32.store offset=16
                (local.get $l6)
                (local.get $l2))
              (i32.store offset=24
                (local.get $l2)
                (local.get $l6)))
            (br_if $B16
              (i32.eqz
                (local.tee $l2
                  (i32.load offset=20
                    (local.get $l3)))))
            (i32.store
              (i32.add
                (local.get $l6)
                (i32.const 20))
              (local.get $l2))
            (i32.store offset=24
              (local.get $l2)
              (local.get $l6)))
          (i32.store offset=4
            (local.get $l1)
            (i32.or
              (local.get $p0)
              (i32.const 1)))
          (i32.store
            (i32.add
              (local.get $l1)
              (local.get $p0))
            (local.get $p0))
          (br_if $B12
            (i32.ne
              (local.get $l1)
              (i32.load offset=2028
                (i32.const 0))))
          (i32.store offset=2016
            (i32.const 0)
            (local.get $p0))
          (return))
        (i32.store offset=4
          (local.get $l3)
          (i32.and
            (local.get $l2)
            (i32.const -2)))
        (i32.store offset=4
          (local.get $l1)
          (i32.or
            (local.get $p0)
            (i32.const 1)))
        (i32.store
          (i32.add
            (local.get $l1)
            (local.get $p0))
          (local.get $p0)))
      (block $B26
        (br_if $B26
          (i32.gt_u
            (local.get $p0)
            (i32.const 255)))
        (local.set $p0
          (i32.add
            (i32.shl
              (local.tee $l2
                (i32.shr_u
                  (local.get $p0)
                  (i32.const 3)))
              (i32.const 3))
            (i32.const 2048)))
        (block $B27
          (block $B28
            (br_if $B28
              (i32.and
                (local.tee $l4
                  (i32.load offset=2008
                    (i32.const 0)))
                (local.tee $l2
                  (i32.shl
                    (i32.const 1)
                    (local.get $l2)))))
            (i32.store offset=2008
              (i32.const 0)
              (i32.or
                (local.get $l4)
                (local.get $l2)))
            (local.set $l2
              (local.get $p0))
            (br $B27))
          (local.set $l2
            (i32.load offset=8
              (local.get $p0))))
        (i32.store offset=8
          (local.get $p0)
          (local.get $l1))
        (i32.store offset=12
          (local.get $l2)
          (local.get $l1))
        (i32.store offset=12
          (local.get $l1)
          (local.get $p0))
        (i32.store offset=8
          (local.get $l1)
          (local.get $l2))
        (return))
      (local.set $l2
        (i32.const 31))
      (block $B29
        (br_if $B29
          (i32.gt_u
            (local.get $p0)
            (i32.const 16777215)))
        (local.set $l2
          (i32.add
            (i32.or
              (i32.shl
                (local.tee $l2
                  (i32.sub
                    (i32.shr_u
                      (i32.shl
                        (local.tee $l6
                          (i32.shl
                            (local.tee $l4
                              (i32.shl
                                (local.tee $l2
                                  (i32.shr_u
                                    (local.get $p0)
                                    (i32.const 8)))
                                (local.tee $l2
                                  (i32.and
                                    (i32.shr_u
                                      (i32.add
                                        (local.get $l2)
                                        (i32.const 1048320))
                                      (i32.const 16))
                                    (i32.const 8)))))
                            (local.tee $l4
                              (i32.and
                                (i32.shr_u
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 520192))
                                  (i32.const 16))
                                (i32.const 4)))))
                        (local.tee $l6
                          (i32.and
                            (i32.shr_u
                              (i32.add
                                (local.get $l6)
                                (i32.const 245760))
                              (i32.const 16))
                            (i32.const 2))))
                      (i32.const 15))
                    (i32.or
                      (i32.or
                        (local.get $l2)
                        (local.get $l4))
                      (local.get $l6))))
                (i32.const 1))
              (i32.and
                (i32.shr_u
                  (local.get $p0)
                  (i32.add
                    (local.get $l2)
                    (i32.const 21)))
                (i32.const 1)))
            (i32.const 28))))
      (i64.store offset=16 align=4
        (local.get $l1)
        (i64.const 0))
      (i32.store
        (i32.add
          (local.get $l1)
          (i32.const 28))
        (local.get $l2))
      (local.set $l4
        (i32.add
          (i32.shl
            (local.get $l2)
            (i32.const 2))
          (i32.const 2312)))
      (block $B30
        (block $B31
          (block $B32
            (block $B33
              (br_if $B33
                (i32.and
                  (local.tee $l6
                    (i32.load offset=2012
                      (i32.const 0)))
                  (local.tee $l3
                    (i32.shl
                      (i32.const 1)
                      (local.get $l2)))))
              (i32.store offset=2012
                (i32.const 0)
                (i32.or
                  (local.get $l6)
                  (local.get $l3)))
              (i32.store
                (local.get $l4)
                (local.get $l1))
              (i32.store
                (i32.add
                  (local.get $l1)
                  (i32.const 24))
                (local.get $l4))
              (br $B32))
            (local.set $l2
              (i32.shl
                (local.get $p0)
                (select
                  (i32.const 0)
                  (i32.sub
                    (i32.const 25)
                    (i32.shr_u
                      (local.get $l2)
                      (i32.const 1)))
                  (i32.eq
                    (local.get $l2)
                    (i32.const 31)))))
            (local.set $l6
              (i32.load
                (local.get $l4)))
            (loop $L34
              (br_if $B31
                (i32.eq
                  (i32.and
                    (i32.load offset=4
                      (local.tee $l4
                        (local.get $l6)))
                    (i32.const -8))
                  (local.get $p0)))
              (local.set $l6
                (i32.shr_u
                  (local.get $l2)
                  (i32.const 29)))
              (local.set $l2
                (i32.shl
                  (local.get $l2)
                  (i32.const 1)))
              (br_if $L34
                (local.tee $l6
                  (i32.load
                    (local.tee $l3
                      (i32.add
                        (i32.add
                          (local.get $l4)
                          (i32.and
                            (local.get $l6)
                            (i32.const 4)))
                        (i32.const 16)))))))
            (i32.store
              (local.get $l3)
              (local.get $l1))
            (i32.store
              (i32.add
                (local.get $l1)
                (i32.const 24))
              (local.get $l4)))
          (i32.store offset=12
            (local.get $l1)
            (local.get $l1))
          (i32.store offset=8
            (local.get $l1)
            (local.get $l1))
          (br $B30))
        (i32.store offset=12
          (local.tee $p0
            (i32.load offset=8
              (local.get $l4)))
          (local.get $l1))
        (i32.store offset=8
          (local.get $l4)
          (local.get $l1))
        (i32.store
          (i32.add
            (local.get $l1)
            (i32.const 24))
          (i32.const 0))
        (i32.store offset=12
          (local.get $l1)
          (local.get $l4))
        (i32.store offset=8
          (local.get $l1)
          (local.get $p0)))
      (i32.store offset=2040
        (i32.const 0)
        (select
          (local.tee $l1
            (i32.add
              (i32.load offset=2040
                (i32.const 0))
              (i32.const -1)))
          (i32.const -1)
          (local.get $l1)))))
  (func $emscripten_get_heap_size (type $t3) (result i32)
    (i32.shl
      (memory.size)
      (i32.const 16)))
  (func $sbrk (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (local.set $p0
      (i32.add
        (local.tee $l1
          (i32.load offset=1616
            (i32.const 0)))
        (local.tee $l2
          (i32.and
            (i32.add
              (local.get $p0)
              (i32.const 3))
            (i32.const -4)))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.get $l2)))
        (br_if $B0
          (i32.le_u
            (local.get $p0)
            (local.get $l1))))
      (block $B2
        (br_if $B2
          (i32.le_u
            (local.get $p0)
            (call $emscripten_get_heap_size)))
        (br_if $B0
          (i32.eqz
            (call $emscripten_resize_heap
              (local.get $p0)))))
      (i32.store offset=1616
        (i32.const 0)
        (local.get $p0))
      (return
        (local.get $l1)))
    (i32.store
      (call $__errno_location)
      (i32.const 48))
    (i32.const -1))
  (func $__memcpy (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l3
      (i32.add
        (local.get $p0)
        (local.get $p2)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.and
                (i32.xor
                  (local.get $p1)
                  (local.get $p0))
                (i32.const 3)))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (local.get $p0)
                  (i32.const 3))))
            (br_if $B2
              (i32.lt_s
                (local.get $p2)
                (i32.const 1)))
            (local.set $p2
              (local.get $p0))
            (loop $L4
              (i32.store8
                (local.get $p2)
                (i32.load8_u
                  (local.get $p1)))
              (local.set $p1
                (i32.add
                  (local.get $p1)
                  (i32.const 1)))
              (br_if $B1
                (i32.eqz
                  (i32.and
                    (local.tee $p2
                      (i32.add
                        (local.get $p2)
                        (i32.const 1)))
                    (i32.const 3))))
              (br_if $L4
                (i32.lt_u
                  (local.get $p2)
                  (local.get $l3)))
              (br $B1))
            (unreachable))
          (block $B5
            (br_if $B5
              (i32.lt_u
                (local.get $l3)
                (i32.const 4)))
            (br_if $B5
              (i32.lt_u
                (local.tee $l4
                  (i32.add
                    (local.get $l3)
                    (i32.const -4)))
                (local.get $p0)))
            (local.set $p2
              (local.get $p0))
            (loop $L6
              (i32.store8
                (local.get $p2)
                (i32.load8_u
                  (local.get $p1)))
              (i32.store8 offset=1
                (local.get $p2)
                (i32.load8_u offset=1
                  (local.get $p1)))
              (i32.store8 offset=2
                (local.get $p2)
                (i32.load8_u offset=2
                  (local.get $p1)))
              (i32.store8 offset=3
                (local.get $p2)
                (i32.load8_u offset=3
                  (local.get $p1)))
              (local.set $p1
                (i32.add
                  (local.get $p1)
                  (i32.const 4)))
              (br_if $L6
                (i32.le_u
                  (local.tee $p2
                    (i32.add
                      (local.get $p2)
                      (i32.const 4)))
                  (local.get $l4)))
              (br $B0))
            (unreachable))
          (local.set $p2
            (local.get $p0))
          (br $B0))
        (local.set $p2
          (local.get $p0)))
      (block $B7
        (br_if $B7
          (i32.lt_u
            (local.tee $l4
              (i32.and
                (local.get $l3)
                (i32.const -4)))
            (i32.const 64)))
        (br_if $B7
          (i32.gt_u
            (local.get $p2)
            (local.tee $l5
              (i32.add
                (local.get $l4)
                (i32.const -64)))))
        (loop $L8
          (i32.store
            (local.get $p2)
            (i32.load
              (local.get $p1)))
          (i32.store offset=4
            (local.get $p2)
            (i32.load offset=4
              (local.get $p1)))
          (i32.store offset=8
            (local.get $p2)
            (i32.load offset=8
              (local.get $p1)))
          (i32.store offset=12
            (local.get $p2)
            (i32.load offset=12
              (local.get $p1)))
          (i32.store offset=16
            (local.get $p2)
            (i32.load offset=16
              (local.get $p1)))
          (i32.store offset=20
            (local.get $p2)
            (i32.load offset=20
              (local.get $p1)))
          (i32.store offset=24
            (local.get $p2)
            (i32.load offset=24
              (local.get $p1)))
          (i32.store offset=28
            (local.get $p2)
            (i32.load offset=28
              (local.get $p1)))
          (i32.store offset=32
            (local.get $p2)
            (i32.load offset=32
              (local.get $p1)))
          (i32.store offset=36
            (local.get $p2)
            (i32.load offset=36
              (local.get $p1)))
          (i32.store offset=40
            (local.get $p2)
            (i32.load offset=40
              (local.get $p1)))
          (i32.store offset=44
            (local.get $p2)
            (i32.load offset=44
              (local.get $p1)))
          (i32.store offset=48
            (local.get $p2)
            (i32.load offset=48
              (local.get $p1)))
          (i32.store offset=52
            (local.get $p2)
            (i32.load offset=52
              (local.get $p1)))
          (i32.store offset=56
            (local.get $p2)
            (i32.load offset=56
              (local.get $p1)))
          (i32.store offset=60
            (local.get $p2)
            (i32.load offset=60
              (local.get $p1)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const 64)))
          (br_if $L8
            (i32.le_u
              (local.tee $p2
                (i32.add
                  (local.get $p2)
                  (i32.const 64)))
              (local.get $l5)))))
      (br_if $B0
        (i32.ge_u
          (local.get $p2)
          (local.get $l4)))
      (loop $L9
        (i32.store
          (local.get $p2)
          (i32.load
            (local.get $p1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 4)))
        (br_if $L9
          (i32.lt_u
            (local.tee $p2
              (i32.add
                (local.get $p2)
                (i32.const 4)))
            (local.get $l4)))))
    (block $B10
      (br_if $B10
        (i32.ge_u
          (local.get $p2)
          (local.get $l3)))
      (loop $L11
        (i32.store8
          (local.get $p2)
          (i32.load8_u
            (local.get $p1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 1)))
        (br_if $L11
          (i32.ne
            (local.tee $p2
              (i32.add
                (local.get $p2)
                (i32.const 1)))
            (local.get $l3)))))
    (local.get $p0))
  (func $_Exit (type $t2) (param $p0 i32)
    (call $__wasi_proc_exit
      (local.get $p0))
    (unreachable))
  (func $dummy.2 (type $t4))
  (func $libc_exit_fini (type $t4)
    (local $l0 i32)
    (local.set $l0
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.le_u
          (i32.const 0)
          (i32.const 0)))
      (loop $L1
        (call_indirect $__indirect_function_table (type $t4)
          (i32.load
            (local.tee $l0
              (i32.add
                (local.get $l0)
                (i32.const -4)))))
        (br_if $L1
          (i32.gt_u
            (local.get $l0)
            (i32.const 0)))))
    (call $dummy.2))
  (func $exit (type $t2) (param $p0 i32)
    (call $dummy.2)
    (call $libc_exit_fini)
    (call $__stdio_exit)
    (call $_Exit
      (local.get $p0))
    (unreachable))
  (func $strcmp (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (local.set $l2
      (i32.load8_u
        (local.get $p1)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l3
            (i32.load8_u
              (local.get $p0)))))
      (br_if $B0
        (i32.ne
          (local.get $l3)
          (i32.and
            (local.get $l2)
            (i32.const 255))))
      (loop $L1
        (local.set $l2
          (i32.load8_u offset=1
            (local.get $p1)))
        (br_if $B0
          (i32.eqz
            (local.tee $l3
              (i32.load8_u offset=1
                (local.get $p0)))))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 1)))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br_if $L1
          (i32.eq
            (local.get $l3)
            (i32.and
              (local.get $l2)
              (i32.const 255))))))
    (i32.sub
      (local.get $l3)
      (i32.and
        (local.get $l2)
        (i32.const 255))))
  (func $__syscall_open (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (block $B0
      (br_if $B0
        (call $strcmp
          (local.get $p0)
          (i32.const 1086)))
      (return
        (i32.const 0)))
    (block $B1
      (br_if $B1
        (call $strcmp
          (local.get $p0)
          (i32.const 1062)))
      (return
        (i32.const 1)))
    (select
      (i32.const -63)
      (i32.const 2)
      (call $strcmp
        (local.get $p0)
        (i32.const 1074))))
  (func $__syscall_ioctl (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (i32.const -52))
  (func $__syscall_fcntl64 (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (i32.const -52))
  (func $emscripten_resize_heap (type $t0) (param $p0 i32) (result i32)
    (i32.const 0))
  (func $__lockfile (type $t0) (param $p0 i32) (result i32)
    (i32.const 1))
  (func $__unlockfile (type $t2) (param $p0 i32))
  (func $memset (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (i32.store8
        (local.get $p0)
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.tee $l3
            (i32.add
              (local.get $p2)
              (local.get $p0)))
          (i32.const -1))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $p2)
          (i32.const 3)))
      (i32.store8 offset=2
        (local.get $p0)
        (local.get $p1))
      (i32.store8 offset=1
        (local.get $p0)
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.get $l3)
          (i32.const -3))
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.get $l3)
          (i32.const -2))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $p2)
          (i32.const 7)))
      (i32.store8 offset=3
        (local.get $p0)
        (local.get $p1))
      (i32.store8
        (i32.add
          (local.get $l3)
          (i32.const -4))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $p2)
          (i32.const 9)))
      (i32.store
        (local.tee $l3
          (i32.add
            (local.get $p0)
            (local.tee $l4
              (i32.and
                (i32.sub
                  (i32.const 0)
                  (local.get $p0))
                (i32.const 3)))))
        (local.tee $p1
          (i32.mul
            (i32.and
              (local.get $p1)
              (i32.const 255))
            (i32.const 16843009))))
      (i32.store
        (i32.add
          (local.tee $p2
            (i32.add
              (local.get $l3)
              (local.tee $l4
                (i32.and
                  (i32.sub
                    (local.get $p2)
                    (local.get $l4))
                  (i32.const -4)))))
          (i32.const -4))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $l4)
          (i32.const 9)))
      (i32.store offset=8
        (local.get $l3)
        (local.get $p1))
      (i32.store offset=4
        (local.get $l3)
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -8))
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -12))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.get $l4)
          (i32.const 25)))
      (i32.store offset=24
        (local.get $l3)
        (local.get $p1))
      (i32.store offset=20
        (local.get $l3)
        (local.get $p1))
      (i32.store offset=16
        (local.get $l3)
        (local.get $p1))
      (i32.store offset=12
        (local.get $l3)
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -16))
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -20))
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -24))
        (local.get $p1))
      (i32.store
        (i32.add
          (local.get $p2)
          (i32.const -28))
        (local.get $p1))
      (br_if $B0
        (i32.lt_u
          (local.tee $p2
            (i32.sub
              (local.get $l4)
              (local.tee $l5
                (i32.or
                  (i32.and
                    (local.get $l3)
                    (i32.const 4))
                  (i32.const 24)))))
          (i32.const 32)))
      (local.set $l6
        (i64.mul
          (i64.extend_i32_u
            (local.get $p1))
          (i64.const 4294967297)))
      (local.set $p1
        (i32.add
          (local.get $l3)
          (local.get $l5)))
      (loop $L1
        (i64.store offset=24
          (local.get $p1)
          (local.get $l6))
        (i64.store offset=16
          (local.get $p1)
          (local.get $l6))
        (i64.store offset=8
          (local.get $p1)
          (local.get $l6))
        (i64.store
          (local.get $p1)
          (local.get $l6))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 32)))
        (br_if $L1
          (i32.gt_u
            (local.tee $p2
              (i32.add
                (local.get $p2)
                (i32.const -32)))
            (i32.const 31)))))
    (local.get $p0))
  (func $__emscripten_stdout_close (type $t0) (param $p0 i32) (result i32)
    (i32.const 0))
  (func $__emscripten_stdout_seek (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (i64.const 0))
  (func $__towrite (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32)
    (i32.store offset=72
      (local.get $p0)
      (i32.or
        (i32.add
          (local.tee $l1
            (i32.load offset=72
              (local.get $p0)))
          (i32.const -1))
        (local.get $l1)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.and
            (local.tee $l1
              (i32.load
                (local.get $p0)))
            (i32.const 8))))
      (i32.store
        (local.get $p0)
        (i32.or
          (local.get $l1)
          (i32.const 32)))
      (return
        (i32.const -1)))
    (i64.store offset=4 align=4
      (local.get $p0)
      (i64.const 0))
    (i32.store offset=28
      (local.get $p0)
      (local.tee $l1
        (i32.load offset=44
          (local.get $p0))))
    (i32.store offset=20
      (local.get $p0)
      (local.get $l1))
    (i32.store offset=16
      (local.get $p0)
      (i32.add
        (local.get $l1)
        (i32.load offset=48
          (local.get $p0))))
    (i32.const 0))
  (func $isdigit (type $t0) (param $p0 i32) (result i32)
    (i32.lt_u
      (i32.add
        (local.get $p0)
        (i32.const -48))
      (i32.const 10)))
  (func $strnlen (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (select
      (i32.sub
        (local.tee $l2
          (call $memchr
            (local.get $p0)
            (i32.const 0)
            (local.get $p1)))
        (local.get $p0))
      (local.get $p1)
      (local.get $l2)))
  (func $__fwritex (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $l3
            (i32.load offset=16
              (local.get $p2))))
        (local.set $l4
          (i32.const 0))
        (br_if $B0
          (call $__towrite
            (local.get $p2)))
        (local.set $l3
          (i32.load offset=16
            (local.get $p2))))
      (block $B2
        (br_if $B2
          (i32.ge_u
            (i32.sub
              (local.get $l3)
              (local.tee $l5
                (i32.load offset=20
                  (local.get $p2))))
            (local.get $p1)))
        (return
          (call_indirect $__indirect_function_table (type $t1)
            (local.get $p2)
            (local.get $p0)
            (local.get $p1)
            (i32.load offset=36
              (local.get $p2)))))
      (block $B3
        (block $B4
          (br_if $B4
            (i32.ge_s
              (i32.load offset=80
                (local.get $p2))
              (i32.const 0)))
          (local.set $l3
            (i32.const 0))
          (br $B3))
        (local.set $l4
          (local.get $p1))
        (loop $L5
          (block $B6
            (br_if $B6
              (local.tee $l3
                (local.get $l4)))
            (local.set $l3
              (i32.const 0))
            (br $B3))
          (br_if $L5
            (i32.ne
              (i32.load8_u
                (i32.add
                  (local.get $p0)
                  (local.tee $l4
                    (i32.add
                      (local.get $l3)
                      (i32.const -1)))))
              (i32.const 10))))
        (br_if $B0
          (i32.lt_u
            (local.tee $l4
              (call_indirect $__indirect_function_table (type $t1)
                (local.get $p2)
                (local.get $p0)
                (local.get $l3)
                (i32.load offset=36
                  (local.get $p2))))
            (local.get $l3)))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (local.get $l3)))
        (local.set $p1
          (i32.sub
            (local.get $p1)
            (local.get $l3)))
        (local.set $l5
          (i32.load offset=20
            (local.get $p2))))
      (drop
        (call $__memcpy
          (local.get $l5)
          (local.get $p0)
          (local.get $p1)))
      (i32.store offset=20
        (local.get $p2)
        (i32.add
          (i32.load offset=20
            (local.get $p2))
          (local.get $p1)))
      (local.set $l4
        (i32.add
          (local.get $l3)
          (local.get $p1))))
    (local.get $l4))
  (func $__syscall_getpid (type $t3) (result i32)
    (i32.const 42))
  (func $getpid (type $t3) (result i32)
    (call $__syscall_getpid))
  (func $__get_tp (type $t3) (result i32)
    (i32.const 3552))
  (func $init_pthread_self (type $t4)
    (i32.store offset=3640
      (i32.const 0)
      (i32.const 1976))
    (i32.store offset=3568
      (i32.const 0)
      (call $getpid)))
  (func $wcrtomb (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (local.set $l3
      (i32.const 1))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.get $p0)))
        (br_if $B0
          (i32.le_u
            (local.get $p1)
            (i32.const 127)))
        (block $B2
          (block $B3
            (br_if $B3
              (i32.load
                (i32.load offset=88
                  (call $__get_tp))))
            (br_if $B0
              (i32.eq
                (i32.and
                  (local.get $p1)
                  (i32.const -128))
                (i32.const 57216)))
            (i32.store
              (call $__errno_location)
              (i32.const 25))
            (br $B2))
          (block $B4
            (br_if $B4
              (i32.gt_u
                (local.get $p1)
                (i32.const 2047)))
            (i32.store8 offset=1
              (local.get $p0)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8
              (local.get $p0)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 6))
                (i32.const 192)))
            (return
              (i32.const 2)))
          (block $B5
            (block $B6
              (br_if $B6
                (i32.lt_u
                  (local.get $p1)
                  (i32.const 55296)))
              (br_if $B5
                (i32.ne
                  (i32.and
                    (local.get $p1)
                    (i32.const -8192))
                  (i32.const 57344))))
            (i32.store8 offset=2
              (local.get $p0)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8
              (local.get $p0)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 12))
                (i32.const 224)))
            (i32.store8 offset=1
              (local.get $p0)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (return
              (i32.const 3)))
          (block $B7
            (br_if $B7
              (i32.gt_u
                (i32.add
                  (local.get $p1)
                  (i32.const -65536))
                (i32.const 1048575)))
            (i32.store8 offset=3
              (local.get $p0)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8
              (local.get $p0)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 18))
                (i32.const 240)))
            (i32.store8 offset=2
              (local.get $p0)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=1
              (local.get $p0)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 12))
                  (i32.const 63))
                (i32.const 128)))
            (return
              (i32.const 4)))
          (i32.store
            (call $__errno_location)
            (i32.const 25)))
        (local.set $l3
          (i32.const -1)))
      (return
        (local.get $l3)))
    (i32.store8
      (local.get $p0)
      (local.get $p1))
    (i32.const 1))
  (func $wctomb (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (i32.const 0)))
    (call $wcrtomb
      (local.get $p0)
      (local.get $p1)
      (i32.const 0)))
  (func $frexp (type $t13) (param $p0 f64) (param $p1 i32) (result f64)
    (local $l2 i64) (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.eq
          (local.tee $l3
            (i32.and
              (i32.wrap_i64
                (i64.shr_u
                  (local.tee $l2
                    (i64.reinterpret_f64
                      (local.get $p0)))
                  (i64.const 52)))
              (i32.const 2047)))
          (i32.const 2047)))
      (block $B1
        (br_if $B1
          (local.get $l3))
        (block $B2
          (block $B3
            (br_if $B3
              (f64.ne
                (local.get $p0)
                (f64.const 0x0p+0 (;=0;))))
            (local.set $l3
              (i32.const 0))
            (br $B2))
          (local.set $p0
            (call $frexp
              (f64.mul
                (local.get $p0)
                (f64.const 0x1p+64 (;=1.84467e+19;)))
              (local.get $p1)))
          (local.set $l3
            (i32.add
              (i32.load
                (local.get $p1))
              (i32.const -64))))
        (i32.store
          (local.get $p1)
          (local.get $l3))
        (return
          (local.get $p0)))
      (i32.store
        (local.get $p1)
        (i32.add
          (local.get $l3)
          (i32.const -1022)))
      (local.set $p0
        (f64.reinterpret_i64
          (i64.or
            (i64.and
              (local.get $l2)
              (i64.const -9218868437227405313))
            (i64.const 4602678819172646912)))))
    (local.get $p0))
  (func $__ashlti3 (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i32)
    (local $l4 i64)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.get $p3)
              (i32.const 64))))
        (local.set $p2
          (i64.shl
            (local.get $p1)
            (i64.extend_i32_u
              (i32.add
                (local.get $p3)
                (i32.const -64)))))
        (local.set $p1
          (i64.const 0))
        (br $B0))
      (br_if $B0
        (i32.eqz
          (local.get $p3)))
      (local.set $p2
        (i64.or
          (i64.shr_u
            (local.get $p1)
            (i64.extend_i32_u
              (i32.sub
                (i32.const 64)
                (local.get $p3))))
          (i64.shl
            (local.get $p2)
            (local.tee $l4
              (i64.extend_i32_u
                (local.get $p3))))))
      (local.set $p1
        (i64.shl
          (local.get $p1)
          (local.get $l4))))
    (i64.store
      (local.get $p0)
      (local.get $p1))
    (i64.store offset=8
      (local.get $p0)
      (local.get $p2)))
  (func $__lshrti3 (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i32)
    (local $l4 i64)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.get $p3)
              (i32.const 64))))
        (local.set $p1
          (i64.shr_u
            (local.get $p2)
            (i64.extend_i32_u
              (i32.add
                (local.get $p3)
                (i32.const -64)))))
        (local.set $p2
          (i64.const 0))
        (br $B0))
      (br_if $B0
        (i32.eqz
          (local.get $p3)))
      (local.set $p1
        (i64.or
          (i64.shl
            (local.get $p2)
            (i64.extend_i32_u
              (i32.sub
                (i32.const 64)
                (local.get $p3))))
          (i64.shr_u
            (local.get $p1)
            (local.tee $l4
              (i64.extend_i32_u
                (local.get $p3))))))
      (local.set $p2
        (i64.shr_u
          (local.get $p2)
          (local.get $l4))))
    (i64.store
      (local.get $p0)
      (local.get $p1))
    (i64.store offset=8
      (local.get $p0)
      (local.get $p2)))
  (func $__trunctfdf2 (type $t14) (param $p0 i64) (param $p1 i64) (result f64)
    (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (block $B0
      (block $B1
        (br_if $B1
          (i64.ge_u
            (i64.add
              (local.tee $l4
                (i64.and
                  (local.get $p1)
                  (i64.const 9223372036854775807)))
              (i64.const -4323737117252386816))
            (i64.add
              (local.get $l4)
              (i64.const -4899634919602388992))))
        (local.set $l4
          (i64.or
            (i64.shr_u
              (local.get $p0)
              (i64.const 60))
            (i64.shl
              (local.get $p1)
              (i64.const 4))))
        (block $B2
          (br_if $B2
            (i64.lt_u
              (local.tee $p0
                (i64.and
                  (local.get $p0)
                  (i64.const 1152921504606846975)))
              (i64.const 576460752303423489)))
          (local.set $l5
            (i64.add
              (local.get $l4)
              (i64.const 4611686018427387905)))
          (br $B0))
        (local.set $l5
          (i64.add
            (local.get $l4)
            (i64.const 4611686018427387904)))
        (br_if $B0
          (i64.ne
            (i64.xor
              (local.get $p0)
              (i64.const 576460752303423488))
            (i64.const 0)))
        (local.set $l5
          (i64.add
            (local.get $l5)
            (i64.and
              (local.get $l4)
              (i64.const 1))))
        (br $B0))
      (block $B3
        (br_if $B3
          (select
            (i64.eqz
              (local.get $p0))
            (i64.lt_u
              (local.get $l4)
              (i64.const 9223090561878065152))
            (i64.eq
              (local.get $l4)
              (i64.const 9223090561878065152))))
        (local.set $l5
          (i64.or
            (i64.and
              (i64.or
                (i64.shr_u
                  (local.get $p0)
                  (i64.const 60))
                (i64.shl
                  (local.get $p1)
                  (i64.const 4)))
              (i64.const 2251799813685247))
            (i64.const 9221120237041090560)))
        (br $B0))
      (local.set $l5
        (i64.const 9218868437227405312))
      (br_if $B0
        (i64.gt_u
          (local.get $l4)
          (i64.const 4899634919602388991)))
      (local.set $l5
        (i64.const 0))
      (br_if $B0
        (i32.lt_u
          (local.tee $l3
            (i32.wrap_i64
              (i64.shr_u
                (local.get $l4)
                (i64.const 48))))
          (i32.const 15249)))
      (call $__ashlti3
        (i32.add
          (local.get $l2)
          (i32.const 16))
        (local.get $p0)
        (local.tee $l4
          (i64.or
            (i64.and
              (local.get $p1)
              (i64.const 281474976710655))
            (i64.const 281474976710656)))
        (i32.add
          (local.get $l3)
          (i32.const -15233)))
      (call $__lshrti3
        (local.get $l2)
        (local.get $p0)
        (local.get $l4)
        (i32.sub
          (i32.const 15361)
          (local.get $l3)))
      (local.set $l5
        (i64.or
          (i64.shr_u
            (local.tee $l4
              (i64.load
                (local.get $l2)))
            (i64.const 60))
          (i64.shl
            (i64.load
              (i32.add
                (local.get $l2)
                (i32.const 8)))
            (i64.const 4))))
      (block $B4
        (br_if $B4
          (i64.lt_u
            (local.tee $l4
              (i64.or
                (i64.and
                  (local.get $l4)
                  (i64.const 1152921504606846975))
                (i64.extend_i32_u
                  (i64.ne
                    (i64.or
                      (i64.load offset=16
                        (local.get $l2))
                      (i64.load
                        (i32.add
                          (i32.add
                            (local.get $l2)
                            (i32.const 16))
                          (i32.const 8))))
                    (i64.const 0)))))
            (i64.const 576460752303423489)))
        (local.set $l5
          (i64.add
            (local.get $l5)
            (i64.const 1)))
        (br $B0))
      (br_if $B0
        (i64.ne
          (i64.xor
            (local.get $l4)
            (i64.const 576460752303423488))
          (i64.const 0)))
      (local.set $l5
        (i64.add
          (i64.and
            (local.get $l5)
            (i64.const 1))
          (local.get $l5))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (f64.reinterpret_i64
      (i64.or
        (local.get $l5)
        (i64.and
          (local.get $p1)
          (i64.const -9223372036854775808)))))
  (func $__vfprintf_internal (type $t15) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 208))))
    (i32.store offset=204
      (local.get $l5)
      (local.get $p2))
    (local.set $l6
      (i32.const 0))
    (drop
      (call $memset
        (i32.add
          (local.get $l5)
          (i32.const 160))
        (i32.const 0)
        (i32.const 40)))
    (i32.store offset=200
      (local.get $l5)
      (i32.load offset=204
        (local.get $l5)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ge_s
            (call $printf_core
              (i32.const 0)
              (local.get $p1)
              (i32.add
                (local.get $l5)
                (i32.const 200))
              (i32.add
                (local.get $l5)
                (i32.const 80))
              (i32.add
                (local.get $l5)
                (i32.const 160))
              (local.get $p3)
              (local.get $p4))
            (i32.const 0)))
        (local.set $p1
          (i32.const -1))
        (br $B0))
      (block $B2
        (br_if $B2
          (i32.lt_s
            (i32.load offset=76
              (local.get $p0))
            (i32.const 0)))
        (local.set $l6
          (call $__lockfile
            (local.get $p0))))
      (local.set $l7
        (i32.load
          (local.get $p0)))
      (block $B3
        (br_if $B3
          (i32.gt_s
            (i32.load offset=72
              (local.get $p0))
            (i32.const 0)))
        (i32.store
          (local.get $p0)
          (i32.and
            (local.get $l7)
            (i32.const -33))))
      (block $B4
        (block $B5
          (block $B6
            (block $B7
              (br_if $B7
                (i32.load offset=48
                  (local.get $p0)))
              (i32.store offset=48
                (local.get $p0)
                (i32.const 80))
              (i32.store offset=28
                (local.get $p0)
                (i32.const 0))
              (i64.store offset=16
                (local.get $p0)
                (i64.const 0))
              (local.set $l8
                (i32.load offset=44
                  (local.get $p0)))
              (i32.store offset=44
                (local.get $p0)
                (local.get $l5))
              (br $B6))
            (local.set $l8
              (i32.const 0))
            (br_if $B5
              (i32.load offset=16
                (local.get $p0))))
          (local.set $p2
            (i32.const -1))
          (br_if $B4
            (call $__towrite
              (local.get $p0))))
        (local.set $p2
          (call $printf_core
            (local.get $p0)
            (local.get $p1)
            (i32.add
              (local.get $l5)
              (i32.const 200))
            (i32.add
              (local.get $l5)
              (i32.const 80))
            (i32.add
              (local.get $l5)
              (i32.const 160))
            (local.get $p3)
            (local.get $p4))))
      (local.set $p1
        (i32.and
          (local.get $l7)
          (i32.const 32)))
      (block $B8
        (br_if $B8
          (i32.eqz
            (local.get $l8)))
        (drop
          (call_indirect $__indirect_function_table (type $t1)
            (local.get $p0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=36
              (local.get $p0))))
        (i32.store offset=48
          (local.get $p0)
          (i32.const 0))
        (i32.store offset=44
          (local.get $p0)
          (local.get $l8))
        (i32.store offset=28
          (local.get $p0)
          (i32.const 0))
        (i32.store offset=16
          (local.get $p0)
          (i32.const 0))
        (local.set $p3
          (i32.load offset=20
            (local.get $p0)))
        (i32.store offset=20
          (local.get $p0)
          (i32.const 0))
        (local.set $p2
          (select
            (local.get $p2)
            (i32.const -1)
            (local.get $p3))))
      (i32.store
        (local.get $p0)
        (i32.or
          (local.tee $p3
            (i32.load
              (local.get $p0)))
          (local.get $p1)))
      (local.set $p1
        (select
          (i32.const -1)
          (local.get $p2)
          (i32.and
            (local.get $p3)
            (i32.const 32))))
      (br_if $B0
        (i32.eqz
          (local.get $l6)))
      (call $__unlockfile
        (local.get $p0)))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 208)))
    (local.get $p1))
  (func $printf_core (type $t16) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32) (result i32)
    (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i64)
    (global.set $g0
      (local.tee $l7
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (i32.store offset=76
      (local.get $l7)
      (local.get $p1))
    (local.set $l8
      (i32.add
        (local.get $l7)
        (i32.const 55)))
    (local.set $l9
      (i32.add
        (local.get $l7)
        (i32.const 56)))
    (local.set $l10
      (i32.const 0))
    (local.set $l11
      (i32.const 0))
    (local.set $p1
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (loop $L4
              (br_if $B3
                (i32.gt_s
                  (local.get $p1)
                  (i32.sub
                    (i32.const 2147483647)
                    (local.get $l11))))
              (local.set $l11
                (i32.add
                  (local.get $p1)
                  (local.get $l11)))
              (local.set $p1
                (local.tee $l12
                  (i32.load offset=76
                    (local.get $l7))))
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (br_if $B9
                          (i32.eqz
                            (local.tee $l13
                              (i32.load8_u
                                (local.get $l12)))))
                        (loop $L10
                          (block $B11
                            (block $B12
                              (block $B13
                                (br_if $B13
                                  (local.tee $l13
                                    (i32.and
                                      (local.get $l13)
                                      (i32.const 255))))
                                (local.set $l13
                                  (local.get $p1))
                                (br $B12))
                              (br_if $B11
                                (i32.ne
                                  (local.get $l13)
                                  (i32.const 37)))
                              (local.set $l13
                                (local.get $p1))
                              (loop $L14
                                (br_if $B12
                                  (i32.ne
                                    (i32.load8_u offset=1
                                      (local.get $p1))
                                    (i32.const 37)))
                                (i32.store offset=76
                                  (local.get $l7)
                                  (local.tee $l14
                                    (i32.add
                                      (local.get $p1)
                                      (i32.const 2))))
                                (local.set $l13
                                  (i32.add
                                    (local.get $l13)
                                    (i32.const 1)))
                                (local.set $l15
                                  (i32.load8_u offset=2
                                    (local.get $p1)))
                                (local.set $p1
                                  (local.get $l14))
                                (br_if $L14
                                  (i32.eq
                                    (local.get $l15)
                                    (i32.const 37)))))
                            (br_if $B3
                              (i32.gt_s
                                (local.tee $p1
                                  (i32.sub
                                    (local.get $l13)
                                    (local.get $l12)))
                                (local.tee $l13
                                  (i32.sub
                                    (i32.const 2147483647)
                                    (local.get $l11)))))
                            (block $B15
                              (br_if $B15
                                (i32.eqz
                                  (local.get $p0)))
                              (call $out
                                (local.get $p0)
                                (local.get $l12)
                                (local.get $p1)))
                            (br_if $L4
                              (local.get $p1))
                            (local.set $l16
                              (i32.const -1))
                            (local.set $l14
                              (i32.const 1))
                            (local.set $l15
                              (call $isdigit
                                (i32.load8_s offset=1
                                  (i32.load offset=76
                                    (local.get $l7)))))
                            (local.set $p1
                              (i32.load offset=76
                                (local.get $l7)))
                            (block $B16
                              (br_if $B16
                                (i32.eqz
                                  (local.get $l15)))
                              (br_if $B16
                                (i32.ne
                                  (i32.load8_u offset=2
                                    (local.get $p1))
                                  (i32.const 36)))
                              (local.set $l16
                                (i32.add
                                  (i32.load8_s offset=1
                                    (local.get $p1))
                                  (i32.const -48)))
                              (local.set $l10
                                (i32.const 1))
                              (local.set $l14
                                (i32.const 3)))
                            (i32.store offset=76
                              (local.get $l7)
                              (local.tee $p1
                                (i32.add
                                  (local.get $p1)
                                  (local.get $l14))))
                            (local.set $l17
                              (i32.const 0))
                            (block $B17
                              (block $B18
                                (br_if $B18
                                  (i32.le_u
                                    (local.tee $l15
                                      (i32.add
                                        (local.tee $l18
                                          (i32.load8_s
                                            (local.get $p1)))
                                        (i32.const -32)))
                                    (i32.const 31)))
                                (local.set $l14
                                  (local.get $p1))
                                (br $B17))
                              (local.set $l17
                                (i32.const 0))
                              (local.set $l14
                                (local.get $p1))
                              (br_if $B17
                                (i32.eqz
                                  (i32.and
                                    (local.tee $l15
                                      (i32.shl
                                        (i32.const 1)
                                        (local.get $l15)))
                                    (i32.const 75913))))
                              (loop $L19
                                (i32.store offset=76
                                  (local.get $l7)
                                  (local.tee $l14
                                    (i32.add
                                      (local.get $p1)
                                      (i32.const 1))))
                                (local.set $l17
                                  (i32.or
                                    (local.get $l15)
                                    (local.get $l17)))
                                (br_if $B17
                                  (i32.ge_u
                                    (local.tee $l15
                                      (i32.add
                                        (local.tee $l18
                                          (i32.load8_s offset=1
                                            (local.get $p1)))
                                        (i32.const -32)))
                                    (i32.const 32)))
                                (local.set $p1
                                  (local.get $l14))
                                (br_if $L19
                                  (i32.and
                                    (local.tee $l15
                                      (i32.shl
                                        (i32.const 1)
                                        (local.get $l15)))
                                    (i32.const 75913)))))
                            (block $B20
                              (block $B21
                                (br_if $B21
                                  (i32.ne
                                    (local.get $l18)
                                    (i32.const 42)))
                                (block $B22
                                  (block $B23
                                    (br_if $B23
                                      (i32.eqz
                                        (call $isdigit
                                          (i32.load8_s offset=1
                                            (local.get $l14)))))
                                    (br_if $B23
                                      (i32.ne
                                        (i32.load8_u offset=2
                                          (local.tee $l14
                                            (i32.load offset=76
                                              (local.get $l7))))
                                        (i32.const 36)))
                                    (i32.store
                                      (i32.add
                                        (i32.add
                                          (i32.shl
                                            (i32.load8_s offset=1
                                              (local.get $l14))
                                            (i32.const 2))
                                          (local.get $p4))
                                        (i32.const -192))
                                      (i32.const 10))
                                    (local.set $p1
                                      (i32.add
                                        (local.get $l14)
                                        (i32.const 3)))
                                    (local.set $l19
                                      (i32.load
                                        (i32.add
                                          (i32.add
                                            (i32.shl
                                              (i32.load8_s offset=1
                                                (local.get $l14))
                                              (i32.const 3))
                                            (local.get $p3))
                                          (i32.const -384))))
                                    (local.set $l10
                                      (i32.const 1))
                                    (br $B22))
                                  (br_if $B8
                                    (local.get $l10))
                                  (local.set $l10
                                    (i32.const 0))
                                  (local.set $l19
                                    (i32.const 0))
                                  (block $B24
                                    (br_if $B24
                                      (i32.eqz
                                        (local.get $p0)))
                                    (i32.store
                                      (local.get $p2)
                                      (i32.add
                                        (local.tee $p1
                                          (i32.load
                                            (local.get $p2)))
                                        (i32.const 4)))
                                    (local.set $l19
                                      (i32.load
                                        (local.get $p1))))
                                  (local.set $p1
                                    (i32.add
                                      (i32.load offset=76
                                        (local.get $l7))
                                      (i32.const 1))))
                                (i32.store offset=76
                                  (local.get $l7)
                                  (local.get $p1))
                                (br_if $B20
                                  (i32.gt_s
                                    (local.get $l19)
                                    (i32.const -1)))
                                (local.set $l19
                                  (i32.sub
                                    (i32.const 0)
                                    (local.get $l19)))
                                (local.set $l17
                                  (i32.or
                                    (local.get $l17)
                                    (i32.const 8192)))
                                (br $B20))
                              (br_if $B3
                                (i32.lt_s
                                  (local.tee $l19
                                    (call $getint
                                      (i32.add
                                        (local.get $l7)
                                        (i32.const 76))))
                                  (i32.const 0)))
                              (local.set $p1
                                (i32.load offset=76
                                  (local.get $l7))))
                            (local.set $l14
                              (i32.const 0))
                            (local.set $l20
                              (i32.const -1))
                            (block $B25
                              (block $B26
                                (br_if $B26
                                  (i32.eq
                                    (i32.load8_u
                                      (local.get $p1))
                                    (i32.const 46)))
                                (local.set $l21
                                  (i32.const 0))
                                (br $B25))
                              (block $B27
                                (br_if $B27
                                  (i32.ne
                                    (i32.load8_u offset=1
                                      (local.get $p1))
                                    (i32.const 42)))
                                (block $B28
                                  (block $B29
                                    (br_if $B29
                                      (i32.eqz
                                        (call $isdigit
                                          (i32.load8_s offset=2
                                            (local.get $p1)))))
                                    (br_if $B29
                                      (i32.ne
                                        (i32.load8_u offset=3
                                          (local.tee $l15
                                            (i32.load offset=76
                                              (local.get $l7))))
                                        (i32.const 36)))
                                    (i32.store
                                      (i32.add
                                        (i32.add
                                          (i32.shl
                                            (i32.load8_s offset=2
                                              (local.get $l15))
                                            (i32.const 2))
                                          (local.get $p4))
                                        (i32.const -192))
                                      (i32.const 10))
                                    (local.set $p1
                                      (i32.add
                                        (local.get $l15)
                                        (i32.const 4)))
                                    (local.set $l20
                                      (i32.load
                                        (i32.add
                                          (i32.add
                                            (i32.shl
                                              (i32.load8_s offset=2
                                                (local.get $l15))
                                              (i32.const 3))
                                            (local.get $p3))
                                          (i32.const -384))))
                                    (br $B28))
                                  (br_if $B8
                                    (local.get $l10))
                                  (block $B30
                                    (block $B31
                                      (br_if $B31
                                        (local.get $p0))
                                      (local.set $l20
                                        (i32.const 0))
                                      (br $B30))
                                    (i32.store
                                      (local.get $p2)
                                      (i32.add
                                        (local.tee $p1
                                          (i32.load
                                            (local.get $p2)))
                                        (i32.const 4)))
                                    (local.set $l20
                                      (i32.load
                                        (local.get $p1))))
                                  (local.set $p1
                                    (i32.add
                                      (i32.load offset=76
                                        (local.get $l7))
                                      (i32.const 2))))
                                (i32.store offset=76
                                  (local.get $l7)
                                  (local.get $p1))
                                (local.set $l21
                                  (i32.shr_u
                                    (i32.xor
                                      (local.get $l20)
                                      (i32.const -1))
                                    (i32.const 31)))
                                (br $B25))
                              (i32.store offset=76
                                (local.get $l7)
                                (i32.add
                                  (local.get $p1)
                                  (i32.const 1)))
                              (local.set $l21
                                (i32.const 1))
                              (local.set $l20
                                (call $getint
                                  (i32.add
                                    (local.get $l7)
                                    (i32.const 76))))
                              (local.set $p1
                                (i32.load offset=76
                                  (local.get $l7))))
                            (loop $L32
                              (local.set $l15
                                (local.get $l14))
                              (local.set $l22
                                (i32.const 28))
                              (br_if $B2
                                (i32.lt_u
                                  (i32.add
                                    (i32.load8_s
                                      (local.get $p1))
                                    (i32.const -123))
                                  (i32.const -58)))
                              (i32.store offset=76
                                (local.get $l7)
                                (local.tee $l18
                                  (i32.add
                                    (local.get $p1)
                                    (i32.const 1))))
                              (local.set $l14
                                (i32.load8_s
                                  (local.get $p1)))
                              (local.set $p1
                                (local.get $l18))
                              (br_if $L32
                                (i32.lt_u
                                  (i32.add
                                    (local.tee $l14
                                      (i32.load8_u
                                        (i32.add
                                          (i32.add
                                            (local.get $l14)
                                            (i32.mul
                                              (local.get $l15)
                                              (i32.const 58)))
                                          (i32.const 1071))))
                                    (i32.const -1))
                                  (i32.const 8))))
                            (block $B33
                              (block $B34
                                (block $B35
                                  (br_if $B35
                                    (i32.eq
                                      (local.get $l14)
                                      (i32.const 27)))
                                  (br_if $B2
                                    (i32.eqz
                                      (local.get $l14)))
                                  (block $B36
                                    (br_if $B36
                                      (i32.lt_s
                                        (local.get $l16)
                                        (i32.const 0)))
                                    (i32.store
                                      (i32.add
                                        (local.get $p4)
                                        (i32.shl
                                          (local.get $l16)
                                          (i32.const 2)))
                                      (local.get $l14))
                                    (i64.store offset=64
                                      (local.get $l7)
                                      (i64.load
                                        (i32.add
                                          (local.get $p3)
                                          (i32.shl
                                            (local.get $l16)
                                            (i32.const 3)))))
                                    (br $B34))
                                  (br_if $B5
                                    (i32.eqz
                                      (local.get $p0)))
                                  (call $pop_arg
                                    (i32.add
                                      (local.get $l7)
                                      (i32.const 64))
                                    (local.get $l14)
                                    (local.get $p2)
                                    (local.get $p6))
                                  (local.set $l18
                                    (i32.load offset=76
                                      (local.get $l7)))
                                  (br $B33))
                                (br_if $B2
                                  (i32.gt_s
                                    (local.get $l16)
                                    (i32.const -1))))
                              (local.set $p1
                                (i32.const 0))
                              (br_if $L4
                                (i32.eqz
                                  (local.get $p0))))
                            (local.set $l14
                              (select
                                (local.tee $l23
                                  (i32.and
                                    (local.get $l17)
                                    (i32.const -65537)))
                                (local.get $l17)
                                (i32.and
                                  (local.get $l17)
                                  (i32.const 8192))))
                            (local.set $l17
                              (i32.const 0))
                            (local.set $l16
                              (i32.const 1024))
                            (local.set $l22
                              (local.get $l9))
                            (block $B37
                              (block $B38
                                (block $B39
                                  (block $B40
                                    (block $B41
                                      (block $B42
                                        (block $B43
                                          (block $B44
                                            (block $B45
                                              (block $B46
                                                (block $B47
                                                  (block $B48
                                                    (block $B49
                                                      (block $B50
                                                        (block $B51
                                                          (block $B52
                                                            (br_table $B48 $B6 $B6 $B6 $B6 $B6 $B6 $B6 $B6 $B38 $B6 $B37 $B46 $B38 $B38 $B38 $B6 $B46 $B6 $B6 $B6 $B6 $B50 $B47 $B49 $B6 $B6 $B43 $B6 $B51 $B6 $B6 $B48 $B52
                                                              (i32.add
                                                                (local.tee $p1
                                                                  (select
                                                                    (select
                                                                      (i32.and
                                                                        (local.tee $p1
                                                                          (i32.load8_s
                                                                            (i32.add
                                                                              (local.get $l18)
                                                                              (i32.const -1))))
                                                                        (i32.const -33))
                                                                      (local.get $p1)
                                                                      (i32.eq
                                                                        (i32.and
                                                                          (local.get $p1)
                                                                          (i32.const 15))
                                                                        (i32.const 3)))
                                                                    (local.get $p1)
                                                                    (local.get $l15)))
                                                                (i32.const -88))))
                                                          (local.set $l22
                                                            (local.get $l9))
                                                          (block $B53
                                                            (br_table $B38 $B6 $B41 $B6 $B38 $B38 $B38 $B53
                                                              (i32.add
                                                                (local.get $p1)
                                                                (i32.const -65))))
                                                          (br_if $B42
                                                            (i32.eq
                                                              (local.get $p1)
                                                              (i32.const 83)))
                                                          (br $B7))
                                                        (local.set $l17
                                                          (i32.const 0))
                                                        (local.set $l16
                                                          (i32.const 1024))
                                                        (local.set $l24
                                                          (i64.load offset=64
                                                            (local.get $l7)))
                                                        (br $B45))
                                                      (local.set $p1
                                                        (i32.const 0))
                                                      (block $B54
                                                        (block $B55
                                                          (block $B56
                                                            (block $B57
                                                              (block $B58
                                                                (block $B59
                                                                  (block $B60
                                                                    (br_table $B60 $B59 $B58 $B57 $B56 $L4 $B55 $B54 $L4
                                                                      (i32.and
                                                                        (local.get $l15)
                                                                        (i32.const 255))))
                                                                  (i32.store
                                                                    (i32.load offset=64
                                                                      (local.get $l7))
                                                                    (local.get $l11))
                                                                  (br $L4))
                                                                (i32.store
                                                                  (i32.load offset=64
                                                                    (local.get $l7))
                                                                  (local.get $l11))
                                                                (br $L4))
                                                              (i64.store
                                                                (i32.load offset=64
                                                                  (local.get $l7))
                                                                (i64.extend_i32_s
                                                                  (local.get $l11)))
                                                              (br $L4))
                                                            (i32.store16
                                                              (i32.load offset=64
                                                                (local.get $l7))
                                                              (local.get $l11))
                                                            (br $L4))
                                                          (i32.store8
                                                            (i32.load offset=64
                                                              (local.get $l7))
                                                            (local.get $l11))
                                                          (br $L4))
                                                        (i32.store
                                                          (i32.load offset=64
                                                            (local.get $l7))
                                                          (local.get $l11))
                                                        (br $L4))
                                                      (i64.store
                                                        (i32.load offset=64
                                                          (local.get $l7))
                                                        (i64.extend_i32_s
                                                          (local.get $l11)))
                                                      (br $L4))
                                                    (local.set $l20
                                                      (select
                                                        (local.get $l20)
                                                        (i32.const 8)
                                                        (i32.gt_u
                                                          (local.get $l20)
                                                          (i32.const 8))))
                                                    (local.set $l14
                                                      (i32.or
                                                        (local.get $l14)
                                                        (i32.const 8)))
                                                    (local.set $p1
                                                      (i32.const 120)))
                                                  (local.set $l12
                                                    (call $fmt_x
                                                      (i64.load offset=64
                                                        (local.get $l7))
                                                      (local.get $l9)
                                                      (i32.and
                                                        (local.get $p1)
                                                        (i32.const 32))))
                                                  (local.set $l17
                                                    (i32.const 0))
                                                  (local.set $l16
                                                    (i32.const 1024))
                                                  (br_if $B44
                                                    (i64.eqz
                                                      (i64.load offset=64
                                                        (local.get $l7))))
                                                  (br_if $B44
                                                    (i32.eqz
                                                      (i32.and
                                                        (local.get $l14)
                                                        (i32.const 8))))
                                                  (local.set $l16
                                                    (i32.add
                                                      (i32.shr_u
                                                        (local.get $p1)
                                                        (i32.const 4))
                                                      (i32.const 1024)))
                                                  (local.set $l17
                                                    (i32.const 2))
                                                  (br $B44))
                                                (local.set $l17
                                                  (i32.const 0))
                                                (local.set $l16
                                                  (i32.const 1024))
                                                (local.set $l12
                                                  (call $fmt_o
                                                    (i64.load offset=64
                                                      (local.get $l7))
                                                    (local.get $l9)))
                                                (br_if $B44
                                                  (i32.eqz
                                                    (i32.and
                                                      (local.get $l14)
                                                      (i32.const 8))))
                                                (local.set $l20
                                                  (select
                                                    (local.get $l20)
                                                    (i32.add
                                                      (local.tee $p1
                                                        (i32.sub
                                                          (local.get $l9)
                                                          (local.get $l12)))
                                                      (i32.const 1))
                                                    (i32.gt_s
                                                      (local.get $l20)
                                                      (local.get $p1))))
                                                (br $B44))
                                              (block $B61
                                                (br_if $B61
                                                  (i64.gt_s
                                                    (local.tee $l24
                                                      (i64.load offset=64
                                                        (local.get $l7)))
                                                    (i64.const -1)))
                                                (i64.store offset=64
                                                  (local.get $l7)
                                                  (local.tee $l24
                                                    (i64.sub
                                                      (i64.const 0)
                                                      (local.get $l24))))
                                                (local.set $l17
                                                  (i32.const 1))
                                                (local.set $l16
                                                  (i32.const 1024))
                                                (br $B45))
                                              (block $B62
                                                (br_if $B62
                                                  (i32.eqz
                                                    (i32.and
                                                      (local.get $l14)
                                                      (i32.const 2048))))
                                                (local.set $l17
                                                  (i32.const 1))
                                                (local.set $l16
                                                  (i32.const 1025))
                                                (br $B45))
                                              (local.set $l16
                                                (select
                                                  (i32.const 1026)
                                                  (i32.const 1024)
                                                  (local.tee $l17
                                                    (i32.and
                                                      (local.get $l14)
                                                      (i32.const 1))))))
                                            (local.set $l12
                                              (call $fmt_u
                                                (local.get $l24)
                                                (local.get $l9))))
                                          (block $B63
                                            (br_if $B63
                                              (i32.eqz
                                                (local.get $l21)))
                                            (br_if $B3
                                              (i32.lt_s
                                                (local.get $l20)
                                                (i32.const 0))))
                                          (local.set $l14
                                            (select
                                              (i32.and
                                                (local.get $l14)
                                                (i32.const -65537))
                                              (local.get $l14)
                                              (local.get $l21)))
                                          (block $B64
                                            (br_if $B64
                                              (i64.ne
                                                (local.tee $l24
                                                  (i64.load offset=64
                                                    (local.get $l7)))
                                                (i64.const 0)))
                                            (br_if $B64
                                              (local.get $l20))
                                            (local.set $l12
                                              (local.get $l9))
                                            (local.set $l22
                                              (local.get $l9))
                                            (local.set $l20
                                              (i32.const 0))
                                            (br $B6))
                                          (local.set $l20
                                            (select
                                              (local.get $l20)
                                              (local.tee $p1
                                                (i32.add
                                                  (i32.sub
                                                    (local.get $l9)
                                                    (local.get $l12))
                                                  (i64.eqz
                                                    (local.get $l24))))
                                              (i32.gt_s
                                                (local.get $l20)
                                                (local.get $p1))))
                                          (br $B7))
                                        (local.set $l17
                                          (i32.const 0))
                                        (local.set $l12
                                          (select
                                            (local.tee $p1
                                              (i32.load offset=64
                                                (local.get $l7)))
                                            (i32.const 1119)
                                            (local.get $p1)))
                                        (local.set $l22
                                          (i32.add
                                            (local.get $l12)
                                            (local.tee $p1
                                              (call $strnlen
                                                (local.get $l12)
                                                (select
                                                  (i32.const 2147483647)
                                                  (local.get $l20)
                                                  (i32.lt_s
                                                    (local.get $l20)
                                                    (i32.const 0)))))))
                                        (block $B65
                                          (br_if $B65
                                            (i32.le_s
                                              (local.get $l20)
                                              (i32.const -1)))
                                          (local.set $l14
                                            (local.get $l23))
                                          (local.set $l20
                                            (local.get $p1))
                                          (br $B6))
                                        (local.set $l14
                                          (local.get $l23))
                                        (local.set $l20
                                          (local.get $p1))
                                        (br_if $B3
                                          (i32.load8_u
                                            (local.get $l22)))
                                        (br $B6))
                                      (block $B66
                                        (br_if $B66
                                          (i32.eqz
                                            (local.get $l20)))
                                        (local.set $l13
                                          (i32.load offset=64
                                            (local.get $l7)))
                                        (br $B40))
                                      (local.set $p1
                                        (i32.const 0))
                                      (call $pad
                                        (local.get $p0)
                                        (i32.const 32)
                                        (local.get $l19)
                                        (i32.const 0)
                                        (local.get $l14))
                                      (br $B39))
                                    (i32.store offset=12
                                      (local.get $l7)
                                      (i32.const 0))
                                    (i64.store32 offset=8
                                      (local.get $l7)
                                      (i64.load offset=64
                                        (local.get $l7)))
                                    (i32.store offset=64
                                      (local.get $l7)
                                      (i32.add
                                        (local.get $l7)
                                        (i32.const 8)))
                                    (local.set $l20
                                      (i32.const -1))
                                    (local.set $l13
                                      (i32.add
                                        (local.get $l7)
                                        (i32.const 8))))
                                  (local.set $p1
                                    (i32.const 0))
                                  (block $B67
                                    (loop $L68
                                      (br_if $B67
                                        (i32.eqz
                                          (local.tee $l15
                                            (i32.load
                                              (local.get $l13)))))
                                      (block $B69
                                        (br_if $B69
                                          (local.tee $l12
                                            (i32.lt_s
                                              (local.tee $l15
                                                (call $wctomb
                                                  (i32.add
                                                    (local.get $l7)
                                                    (i32.const 4))
                                                  (local.get $l15)))
                                              (i32.const 0))))
                                        (br_if $B69
                                          (i32.gt_u
                                            (local.get $l15)
                                            (i32.sub
                                              (local.get $l20)
                                              (local.get $p1))))
                                        (local.set $l13
                                          (i32.add
                                            (local.get $l13)
                                            (i32.const 4)))
                                        (br_if $L68
                                          (i32.gt_u
                                            (local.get $l20)
                                            (local.tee $p1
                                              (i32.add
                                                (local.get $l15)
                                                (local.get $p1)))))
                                        (br $B67)))
                                    (br_if $B1
                                      (local.get $l12)))
                                  (local.set $l22
                                    (i32.const 61))
                                  (br_if $B2
                                    (i32.lt_s
                                      (local.get $p1)
                                      (i32.const 0)))
                                  (call $pad
                                    (local.get $p0)
                                    (i32.const 32)
                                    (local.get $l19)
                                    (local.get $p1)
                                    (local.get $l14))
                                  (block $B70
                                    (br_if $B70
                                      (local.get $p1))
                                    (local.set $p1
                                      (i32.const 0))
                                    (br $B39))
                                  (local.set $l15
                                    (i32.const 0))
                                  (local.set $l13
                                    (i32.load offset=64
                                      (local.get $l7)))
                                  (loop $L71
                                    (br_if $B39
                                      (i32.eqz
                                        (local.tee $l12
                                          (i32.load
                                            (local.get $l13)))))
                                    (br_if $B39
                                      (i32.gt_u
                                        (local.tee $l15
                                          (i32.add
                                            (local.tee $l12
                                              (call $wctomb
                                                (i32.add
                                                  (local.get $l7)
                                                  (i32.const 4))
                                                (local.get $l12)))
                                            (local.get $l15)))
                                        (local.get $p1)))
                                    (call $out
                                      (local.get $p0)
                                      (i32.add
                                        (local.get $l7)
                                        (i32.const 4))
                                      (local.get $l12))
                                    (local.set $l13
                                      (i32.add
                                        (local.get $l13)
                                        (i32.const 4)))
                                    (br_if $L71
                                      (i32.lt_u
                                        (local.get $l15)
                                        (local.get $p1)))))
                                (call $pad
                                  (local.get $p0)
                                  (i32.const 32)
                                  (local.get $l19)
                                  (local.get $p1)
                                  (i32.xor
                                    (local.get $l14)
                                    (i32.const 8192)))
                                (local.set $p1
                                  (select
                                    (local.get $l19)
                                    (local.get $p1)
                                    (i32.gt_s
                                      (local.get $l19)
                                      (local.get $p1))))
                                (br $L4))
                              (block $B72
                                (br_if $B72
                                  (i32.eqz
                                    (local.get $l21)))
                                (br_if $B3
                                  (i32.lt_s
                                    (local.get $l20)
                                    (i32.const 0))))
                              (local.set $l22
                                (i32.const 61))
                              (br_if $L4
                                (i32.ge_s
                                  (local.tee $p1
                                    (call_indirect $__indirect_function_table (type $t9)
                                      (local.get $p0)
                                      (f64.load offset=64
                                        (local.get $l7))
                                      (local.get $l19)
                                      (local.get $l20)
                                      (local.get $l14)
                                      (local.get $p1)
                                      (local.get $p5)))
                                  (i32.const 0)))
                              (br $B2))
                            (i64.store8 offset=55
                              (local.get $l7)
                              (i64.load offset=64
                                (local.get $l7)))
                            (local.set $l20
                              (i32.const 1))
                            (local.set $l12
                              (local.get $l8))
                            (local.set $l22
                              (local.get $l9))
                            (local.set $l14
                              (local.get $l23))
                            (br $B6))
                          (i32.store offset=76
                            (local.get $l7)
                            (local.tee $l14
                              (i32.add
                                (local.get $p1)
                                (i32.const 1))))
                          (local.set $l13
                            (i32.load8_u offset=1
                              (local.get $p1)))
                          (local.set $p1
                            (local.get $l14))
                          (br $L10))
                        (unreachable))
                      (br_if $B0
                        (local.get $p0))
                      (br_if $B5
                        (i32.eqz
                          (local.get $l10)))
                      (local.set $p1
                        (i32.const 1))
                      (block $B73
                        (loop $L74
                          (br_if $B73
                            (i32.eqz
                              (local.tee $l13
                                (i32.load
                                  (i32.add
                                    (local.get $p4)
                                    (i32.shl
                                      (local.get $p1)
                                      (i32.const 2)))))))
                          (call $pop_arg
                            (i32.add
                              (local.get $p3)
                              (i32.shl
                                (local.get $p1)
                                (i32.const 3)))
                            (local.get $l13)
                            (local.get $p2)
                            (local.get $p6))
                          (local.set $l11
                            (i32.const 1))
                          (br_if $L74
                            (i32.ne
                              (local.tee $p1
                                (i32.add
                                  (local.get $p1)
                                  (i32.const 1)))
                              (i32.const 10)))
                          (br $B0))
                        (unreachable))
                      (local.set $l11
                        (i32.const 1))
                      (br_if $B0
                        (i32.ge_u
                          (local.get $p1)
                          (i32.const 10)))
                      (loop $L75
                        (br_if $B8
                          (i32.load
                            (i32.add
                              (local.get $p4)
                              (i32.shl
                                (local.get $p1)
                                (i32.const 2)))))
                        (local.set $l11
                          (i32.const 1))
                        (br_if $B0
                          (i32.eq
                            (local.tee $p1
                              (i32.add
                                (local.get $p1)
                                (i32.const 1)))
                            (i32.const 10)))
                        (br $L75))
                      (unreachable))
                    (local.set $l22
                      (i32.const 28))
                    (br $B2))
                  (local.set $l22
                    (local.get $l9)))
                (br_if $B3
                  (i32.gt_s
                    (local.tee $l20
                      (select
                        (local.tee $l18
                          (i32.sub
                            (local.get $l22)
                            (local.get $l12)))
                        (local.get $l20)
                        (i32.lt_s
                          (local.get $l20)
                          (local.get $l18))))
                    (i32.sub
                      (i32.const 2147483647)
                      (local.get $l17))))
                (local.set $l22
                  (i32.const 61))
                (br_if $B2
                  (i32.gt_s
                    (local.tee $p1
                      (select
                        (local.tee $l15
                          (i32.add
                            (local.get $l17)
                            (local.get $l20)))
                        (local.get $l19)
                        (i32.lt_s
                          (local.get $l19)
                          (local.get $l15))))
                    (local.get $l13)))
                (call $pad
                  (local.get $p0)
                  (i32.const 32)
                  (local.get $p1)
                  (local.get $l15)
                  (local.get $l14))
                (call $out
                  (local.get $p0)
                  (local.get $l16)
                  (local.get $l17))
                (call $pad
                  (local.get $p0)
                  (i32.const 48)
                  (local.get $p1)
                  (local.get $l15)
                  (i32.xor
                    (local.get $l14)
                    (i32.const 65536)))
                (call $pad
                  (local.get $p0)
                  (i32.const 48)
                  (local.get $l20)
                  (local.get $l18)
                  (i32.const 0))
                (call $out
                  (local.get $p0)
                  (local.get $l12)
                  (local.get $l18))
                (call $pad
                  (local.get $p0)
                  (i32.const 32)
                  (local.get $p1)
                  (local.get $l15)
                  (i32.xor
                    (local.get $l14)
                    (i32.const 8192)))
                (br $L4)))
            (local.set $l11
              (i32.const 0))
            (br $B0))
          (local.set $l22
            (i32.const 61)))
        (i32.store
          (call $__errno_location)
          (local.get $l22)))
      (local.set $l11
        (i32.const -1)))
    (global.set $g0
      (i32.add
        (local.get $l7)
        (i32.const 80)))
    (local.get $l11))
  (func $out (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (br_if $B0
        (i32.and
          (i32.load8_u
            (local.get $p0))
          (i32.const 32)))
      (drop
        (call $__fwritex
          (local.get $p1)
          (local.get $p2)
          (local.get $p0)))))
  (func $getint (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (local.set $l1
      (i32.const 0))
    (block $B0
      (br_if $B0
        (call $isdigit
          (i32.load8_s
            (i32.load
              (local.get $p0)))))
      (return
        (i32.const 0)))
    (loop $L1
      (local.set $l2
        (i32.load
          (local.get $p0)))
      (local.set $l3
        (i32.const -1))
      (block $B2
        (br_if $B2
          (i32.gt_u
            (local.get $l1)
            (i32.const 214748364)))
        (local.set $l3
          (select
            (i32.const -1)
            (i32.add
              (local.tee $l3
                (i32.add
                  (i32.load8_s
                    (local.get $l2))
                  (i32.const -48)))
              (local.tee $l1
                (i32.mul
                  (local.get $l1)
                  (i32.const 10))))
            (i32.gt_s
              (local.get $l3)
              (i32.sub
                (i32.const 2147483647)
                (local.get $l1))))))
      (i32.store
        (local.get $p0)
        (i32.add
          (local.get $l2)
          (i32.const 1)))
      (local.set $l1
        (local.get $l3))
      (br_if $L1
        (call $isdigit
          (i32.load8_s offset=1
            (local.get $l2)))))
    (local.get $l3))
  (func $pop_arg (type $t18) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (block $B10
                          (block $B11
                            (block $B12
                              (block $B13
                                (block $B14
                                  (block $B15
                                    (block $B16
                                      (block $B17
                                        (block $B18
                                          (br_table $B18 $B17 $B16 $B13 $B15 $B14 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B1 $B0
                                            (i32.add
                                              (local.get $p1)
                                              (i32.const -9))))
                                        (i32.store
                                          (local.get $p2)
                                          (i32.add
                                            (local.tee $p1
                                              (i32.load
                                                (local.get $p2)))
                                            (i32.const 4)))
                                        (i32.store
                                          (local.get $p0)
                                          (i32.load
                                            (local.get $p1)))
                                        (return))
                                      (i32.store
                                        (local.get $p2)
                                        (i32.add
                                          (local.tee $p1
                                            (i32.load
                                              (local.get $p2)))
                                          (i32.const 4)))
                                      (i64.store
                                        (local.get $p0)
                                        (i64.load32_s
                                          (local.get $p1)))
                                      (return))
                                    (i32.store
                                      (local.get $p2)
                                      (i32.add
                                        (local.tee $p1
                                          (i32.load
                                            (local.get $p2)))
                                        (i32.const 4)))
                                    (i64.store
                                      (local.get $p0)
                                      (i64.load32_u
                                        (local.get $p1)))
                                    (return))
                                  (i32.store
                                    (local.get $p2)
                                    (i32.add
                                      (local.tee $p1
                                        (i32.load
                                          (local.get $p2)))
                                      (i32.const 4)))
                                  (i64.store
                                    (local.get $p0)
                                    (i64.load32_s
                                      (local.get $p1)))
                                  (return))
                                (i32.store
                                  (local.get $p2)
                                  (i32.add
                                    (local.tee $p1
                                      (i32.load
                                        (local.get $p2)))
                                    (i32.const 4)))
                                (i64.store
                                  (local.get $p0)
                                  (i64.load32_u
                                    (local.get $p1)))
                                (return))
                              (i32.store
                                (local.get $p2)
                                (i32.add
                                  (local.tee $p1
                                    (i32.and
                                      (i32.add
                                        (i32.load
                                          (local.get $p2))
                                        (i32.const 7))
                                      (i32.const -8)))
                                  (i32.const 8)))
                              (i64.store
                                (local.get $p0)
                                (i64.load
                                  (local.get $p1)))
                              (return))
                            (i32.store
                              (local.get $p2)
                              (i32.add
                                (local.tee $p1
                                  (i32.load
                                    (local.get $p2)))
                                (i32.const 4)))
                            (i64.store
                              (local.get $p0)
                              (i64.load16_s
                                (local.get $p1)))
                            (return))
                          (i32.store
                            (local.get $p2)
                            (i32.add
                              (local.tee $p1
                                (i32.load
                                  (local.get $p2)))
                              (i32.const 4)))
                          (i64.store
                            (local.get $p0)
                            (i64.load16_u
                              (local.get $p1)))
                          (return))
                        (i32.store
                          (local.get $p2)
                          (i32.add
                            (local.tee $p1
                              (i32.load
                                (local.get $p2)))
                            (i32.const 4)))
                        (i64.store
                          (local.get $p0)
                          (i64.load8_s
                            (local.get $p1)))
                        (return))
                      (i32.store
                        (local.get $p2)
                        (i32.add
                          (local.tee $p1
                            (i32.load
                              (local.get $p2)))
                          (i32.const 4)))
                      (i64.store
                        (local.get $p0)
                        (i64.load8_u
                          (local.get $p1)))
                      (return))
                    (i32.store
                      (local.get $p2)
                      (i32.add
                        (local.tee $p1
                          (i32.and
                            (i32.add
                              (i32.load
                                (local.get $p2))
                              (i32.const 7))
                            (i32.const -8)))
                        (i32.const 8)))
                    (i64.store
                      (local.get $p0)
                      (i64.load
                        (local.get $p1)))
                    (return))
                  (i32.store
                    (local.get $p2)
                    (i32.add
                      (local.tee $p1
                        (i32.load
                          (local.get $p2)))
                      (i32.const 4)))
                  (i64.store
                    (local.get $p0)
                    (i64.load32_u
                      (local.get $p1)))
                  (return))
                (i32.store
                  (local.get $p2)
                  (i32.add
                    (local.tee $p1
                      (i32.and
                        (i32.add
                          (i32.load
                            (local.get $p2))
                          (i32.const 7))
                        (i32.const -8)))
                    (i32.const 8)))
                (i64.store
                  (local.get $p0)
                  (i64.load
                    (local.get $p1)))
                (return))
              (i32.store
                (local.get $p2)
                (i32.add
                  (local.tee $p1
                    (i32.and
                      (i32.add
                        (i32.load
                          (local.get $p2))
                        (i32.const 7))
                      (i32.const -8)))
                  (i32.const 8)))
              (i64.store
                (local.get $p0)
                (i64.load
                  (local.get $p1)))
              (return))
            (i32.store
              (local.get $p2)
              (i32.add
                (local.tee $p1
                  (i32.load
                    (local.get $p2)))
                (i32.const 4)))
            (i64.store
              (local.get $p0)
              (i64.load32_s
                (local.get $p1)))
            (return))
          (i32.store
            (local.get $p2)
            (i32.add
              (local.tee $p1
                (i32.load
                  (local.get $p2)))
              (i32.const 4)))
          (i64.store
            (local.get $p0)
            (i64.load32_u
              (local.get $p1)))
          (return))
        (i32.store
          (local.get $p2)
          (i32.add
            (local.tee $p1
              (i32.and
                (i32.add
                  (i32.load
                    (local.get $p2))
                  (i32.const 7))
                (i32.const -8)))
            (i32.const 8)))
        (f64.store
          (local.get $p0)
          (f64.load
            (local.get $p1)))
        (return))
      (call_indirect $__indirect_function_table (type $t10)
        (local.get $p0)
        (local.get $p2)
        (local.get $p3))))
  (func $fmt_x (type $t19) (param $p0 i64) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i64.eqz
          (local.get $p0)))
      (loop $L1
        (i32.store8
          (local.tee $p1
            (i32.add
              (local.get $p1)
              (i32.const -1)))
          (i32.or
            (i32.load8_u
              (i32.add
                (i32.and
                  (i32.wrap_i64
                    (local.get $p0))
                  (i32.const 15))
                (i32.const 1600)))
            (local.get $p2)))
        (local.set $l3
          (i64.gt_u
            (local.get $p0)
            (i64.const 15)))
        (local.set $p0
          (i64.shr_u
            (local.get $p0)
            (i64.const 4)))
        (br_if $L1
          (local.get $l3))))
    (local.get $p1))
  (func $fmt_o (type $t11) (param $p0 i64) (param $p1 i32) (result i32)
    (local $l2 i32)
    (block $B0
      (br_if $B0
        (i64.eqz
          (local.get $p0)))
      (loop $L1
        (i32.store8
          (local.tee $p1
            (i32.add
              (local.get $p1)
              (i32.const -1)))
          (i32.or
            (i32.and
              (i32.wrap_i64
                (local.get $p0))
              (i32.const 7))
            (i32.const 48)))
        (local.set $l2
          (i64.gt_u
            (local.get $p0)
            (i64.const 7)))
        (local.set $p0
          (i64.shr_u
            (local.get $p0)
            (i64.const 3)))
        (br_if $L1
          (local.get $l2))))
    (local.get $p1))
  (func $fmt_u (type $t11) (param $p0 i64) (param $p1 i32) (result i32)
    (local $l2 i64) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i64.ge_u
            (local.get $p0)
            (i64.const 4294967296)))
        (local.set $l2
          (local.get $p0))
        (br $B0))
      (loop $L2
        (i32.store8
          (local.tee $p1
            (i32.add
              (local.get $p1)
              (i32.const -1)))
          (i32.or
            (i32.wrap_i64
              (i64.sub
                (local.get $p0)
                (i64.mul
                  (local.tee $l2
                    (i64.div_u
                      (local.get $p0)
                      (i64.const 10)))
                  (i64.const 10))))
            (i32.const 48)))
        (local.set $l3
          (i64.gt_u
            (local.get $p0)
            (i64.const 42949672959)))
        (local.set $p0
          (local.get $l2))
        (br_if $L2
          (local.get $l3))))
    (block $B3
      (br_if $B3
        (i32.eqz
          (local.tee $l3
            (i32.wrap_i64
              (local.get $l2)))))
      (loop $L4
        (i32.store8
          (local.tee $p1
            (i32.add
              (local.get $p1)
              (i32.const -1)))
          (i32.or
            (i32.sub
              (local.get $l3)
              (i32.mul
                (local.tee $l4
                  (i32.div_u
                    (local.get $l3)
                    (i32.const 10)))
                (i32.const 10)))
            (i32.const 48)))
        (local.set $l5
          (i32.gt_u
            (local.get $l3)
            (i32.const 9)))
        (local.set $l3
          (local.get $l4))
        (br_if $L4
          (local.get $l5))))
    (local.get $p1))
  (func $pad (type $t20) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 256))))
    (block $B0
      (br_if $B0
        (i32.and
          (local.get $p4)
          (i32.const 73728)))
      (br_if $B0
        (i32.le_s
          (local.get $p2)
          (local.get $p3)))
      (drop
        (call $memset
          (local.get $l5)
          (i32.and
            (local.get $p1)
            (i32.const 255))
          (select
            (local.tee $p2
              (i32.sub
                (local.get $p2)
                (local.get $p3)))
            (i32.const 256)
            (local.tee $p3
              (i32.lt_u
                (local.get $p2)
                (i32.const 256))))))
      (block $B1
        (br_if $B1
          (local.get $p3))
        (loop $L2
          (call $out
            (local.get $p0)
            (local.get $l5)
            (i32.const 256))
          (br_if $L2
            (i32.gt_u
              (local.tee $p2
                (i32.add
                  (local.get $p2)
                  (i32.const -256)))
              (i32.const 255)))))
      (call $out
        (local.get $p0)
        (local.get $l5)
        (local.get $p2)))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 256))))
  (func $vfprintf (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (call $__vfprintf_internal
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)
      (i32.const 8)
      (i32.const 9)))
  (func $fmt_fp (type $t9) (param $p0 i32) (param $p1 f64) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (result i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i64) (local $l25 i64) (local $l26 f64)
    (global.set $g0
      (local.tee $l6
        (i32.sub
          (global.get $g0)
          (i32.const 560))))
    (local.set $l7
      (i32.const 0))
    (i32.store offset=44
      (local.get $l6)
      (i32.const 0))
    (block $B0
      (block $B1
        (br_if $B1
          (i64.gt_s
            (local.tee $l24
              (call $__DOUBLE_BITS
                (local.get $p1)))
            (i64.const -1)))
        (local.set $l8
          (i32.const 1))
        (local.set $l9
          (i32.const 1034))
        (local.set $l24
          (call $__DOUBLE_BITS
            (local.tee $p1
              (f64.neg
                (local.get $p1)))))
        (br $B0))
      (block $B2
        (br_if $B2
          (i32.eqz
            (i32.and
              (local.get $p4)
              (i32.const 2048))))
        (local.set $l8
          (i32.const 1))
        (local.set $l9
          (i32.const 1037))
        (br $B0))
      (local.set $l9
        (select
          (i32.const 1040)
          (i32.const 1035)
          (local.tee $l8
            (i32.and
              (local.get $p4)
              (i32.const 1)))))
      (local.set $l7
        (i32.eqz
          (local.get $l8))))
    (block $B3
      (block $B4
        (br_if $B4
          (i64.ne
            (i64.and
              (local.get $l24)
              (i64.const 9218868437227405312))
            (i64.const 9218868437227405312)))
        (call $pad
          (local.get $p0)
          (i32.const 32)
          (local.get $p2)
          (local.tee $l10
            (i32.add
              (local.get $l8)
              (i32.const 3)))
          (i32.and
            (local.get $p4)
            (i32.const -65537)))
        (call $out
          (local.get $p0)
          (local.get $l9)
          (local.get $l8))
        (call $out
          (local.get $p0)
          (select
            (select
              (i32.const 1097)
              (i32.const 1109)
              (local.tee $l11
                (i32.and
                  (local.get $p5)
                  (i32.const 32))))
            (select
              (i32.const 1101)
              (i32.const 1113)
              (local.get $l11))
            (f64.ne
              (local.get $p1)
              (local.get $p1)))
          (i32.const 3))
        (call $pad
          (local.get $p0)
          (i32.const 32)
          (local.get $p2)
          (local.get $l10)
          (i32.xor
            (local.get $p4)
            (i32.const 8192)))
        (local.set $l12
          (select
            (local.get $p2)
            (local.get $l10)
            (i32.lt_s
              (local.get $l10)
              (local.get $p2))))
        (br $B3))
      (local.set $l13
        (i32.add
          (local.get $l6)
          (i32.const 16)))
      (block $B5
        (block $B6
          (block $B7
            (block $B8
              (br_if $B8
                (f64.eq
                  (local.tee $p1
                    (f64.add
                      (local.tee $p1
                        (call $frexp
                          (local.get $p1)
                          (i32.add
                            (local.get $l6)
                            (i32.const 44))))
                      (local.get $p1)))
                  (f64.const 0x0p+0 (;=0;))))
              (i32.store offset=44
                (local.get $l6)
                (i32.add
                  (local.tee $l10
                    (i32.load offset=44
                      (local.get $l6)))
                  (i32.const -1)))
              (br_if $B7
                (i32.ne
                  (local.tee $l14
                    (i32.or
                      (local.get $p5)
                      (i32.const 32)))
                  (i32.const 97)))
              (br $B5))
            (br_if $B5
              (i32.eq
                (local.tee $l14
                  (i32.or
                    (local.get $p5)
                    (i32.const 32)))
                (i32.const 97)))
            (local.set $l15
              (select
                (i32.const 6)
                (local.get $p3)
                (i32.lt_s
                  (local.get $p3)
                  (i32.const 0))))
            (local.set $l16
              (i32.load offset=44
                (local.get $l6)))
            (br $B6))
          (i32.store offset=44
            (local.get $l6)
            (local.tee $l16
              (i32.add
                (local.get $l10)
                (i32.const -29))))
          (local.set $l15
            (select
              (i32.const 6)
              (local.get $p3)
              (i32.lt_s
                (local.get $p3)
                (i32.const 0))))
          (local.set $p1
            (f64.mul
              (local.get $p1)
              (f64.const 0x1p+28 (;=2.68435e+08;)))))
        (local.set $l11
          (local.tee $l17
            (select
              (i32.add
                (local.get $l6)
                (i32.const 48))
              (i32.add
                (local.get $l6)
                (i32.const 336))
              (i32.lt_s
                (local.get $l16)
                (i32.const 0)))))
        (loop $L9
          (block $B10
            (block $B11
              (br_if $B11
                (i32.eqz
                  (i32.and
                    (f64.lt
                      (local.get $p1)
                      (f64.const 0x1p+32 (;=4.29497e+09;)))
                    (f64.ge
                      (local.get $p1)
                      (f64.const 0x0p+0 (;=0;))))))
              (local.set $l10
                (i32.trunc_f64_u
                  (local.get $p1)))
              (br $B10))
            (local.set $l10
              (i32.const 0)))
          (i32.store
            (local.get $l11)
            (local.get $l10))
          (local.set $l11
            (i32.add
              (local.get $l11)
              (i32.const 4)))
          (br_if $L9
            (f64.ne
              (local.tee $p1
                (f64.mul
                  (f64.sub
                    (local.get $p1)
                    (f64.convert_i32_u
                      (local.get $l10)))
                  (f64.const 0x1.dcd65p+29 (;=1e+09;))))
              (f64.const 0x0p+0 (;=0;)))))
        (block $B12
          (block $B13
            (br_if $B13
              (i32.ge_s
                (local.get $l16)
                (i32.const 1)))
            (local.set $p3
              (local.get $l16))
            (local.set $l10
              (local.get $l11))
            (local.set $l18
              (local.get $l17))
            (br $B12))
          (local.set $l18
            (local.get $l17))
          (local.set $p3
            (local.get $l16))
          (loop $L14
            (local.set $p3
              (select
                (local.get $p3)
                (i32.const 29)
                (i32.lt_u
                  (local.get $p3)
                  (i32.const 29))))
            (block $B15
              (br_if $B15
                (i32.lt_u
                  (local.tee $l10
                    (i32.add
                      (local.get $l11)
                      (i32.const -4)))
                  (local.get $l18)))
              (local.set $l25
                (i64.extend_i32_u
                  (local.get $p3)))
              (local.set $l24
                (i64.const 0))
              (loop $L16
                (i64.store32
                  (local.get $l10)
                  (i64.sub
                    (local.tee $l24
                      (i64.add
                        (i64.shl
                          (i64.load32_u
                            (local.get $l10))
                          (local.get $l25))
                        (i64.and
                          (local.get $l24)
                          (i64.const 4294967295))))
                    (i64.mul
                      (local.tee $l24
                        (i64.div_u
                          (local.get $l24)
                          (i64.const 1000000000)))
                      (i64.const 1000000000))))
                (br_if $L16
                  (i32.ge_u
                    (local.tee $l10
                      (i32.add
                        (local.get $l10)
                        (i32.const -4)))
                    (local.get $l18))))
              (br_if $B15
                (i32.eqz
                  (local.tee $l10
                    (i32.wrap_i64
                      (local.get $l24)))))
              (i32.store
                (local.tee $l18
                  (i32.add
                    (local.get $l18)
                    (i32.const -4)))
                (local.get $l10)))
            (block $B17
              (loop $L18
                (br_if $B17
                  (i32.le_u
                    (local.tee $l10
                      (local.get $l11))
                    (local.get $l18)))
                (br_if $L18
                  (i32.eqz
                    (i32.load
                      (local.tee $l11
                        (i32.add
                          (local.get $l10)
                          (i32.const -4))))))))
            (i32.store offset=44
              (local.get $l6)
              (local.tee $p3
                (i32.sub
                  (i32.load offset=44
                    (local.get $l6))
                  (local.get $p3))))
            (local.set $l11
              (local.get $l10))
            (br_if $L14
              (i32.gt_s
                (local.get $p3)
                (i32.const 0)))))
        (local.set $l11
          (i32.div_u
            (i32.add
              (local.get $l15)
              (i32.const 25))
            (i32.const 9)))
        (block $B19
          (br_if $B19
            (i32.gt_s
              (local.get $p3)
              (i32.const -1)))
          (local.set $l19
            (i32.add
              (local.get $l11)
              (i32.const 1)))
          (local.set $l20
            (i32.eq
              (local.get $l14)
              (i32.const 102)))
          (loop $L20
            (local.set $l21
              (select
                (local.tee $l11
                  (i32.sub
                    (i32.const 0)
                    (local.get $p3)))
                (i32.const 9)
                (i32.lt_u
                  (local.get $l11)
                  (i32.const 9))))
            (block $B21
              (block $B22
                (br_if $B22
                  (i32.ge_u
                    (local.get $l18)
                    (local.get $l10)))
                (local.set $l22
                  (i32.shr_u
                    (i32.const 1000000000)
                    (local.get $l21)))
                (local.set $l23
                  (i32.xor
                    (i32.shl
                      (i32.const -1)
                      (local.get $l21))
                    (i32.const -1)))
                (local.set $p3
                  (i32.const 0))
                (local.set $l11
                  (local.get $l18))
                (loop $L23
                  (i32.store
                    (local.get $l11)
                    (i32.add
                      (i32.shr_u
                        (local.tee $l12
                          (i32.load
                            (local.get $l11)))
                        (local.get $l21))
                      (local.get $p3)))
                  (local.set $p3
                    (i32.mul
                      (i32.and
                        (local.get $l12)
                        (local.get $l23))
                      (local.get $l22)))
                  (br_if $L23
                    (i32.lt_u
                      (local.tee $l11
                        (i32.add
                          (local.get $l11)
                          (i32.const 4)))
                      (local.get $l10))))
                (local.set $l11
                  (i32.load
                    (local.get $l18)))
                (br_if $B21
                  (i32.eqz
                    (local.get $p3)))
                (i32.store
                  (local.get $l10)
                  (local.get $p3))
                (local.set $l10
                  (i32.add
                    (local.get $l10)
                    (i32.const 4)))
                (br $B21))
              (local.set $l11
                (i32.load
                  (local.get $l18))))
            (i32.store offset=44
              (local.get $l6)
              (local.tee $p3
                (i32.add
                  (i32.load offset=44
                    (local.get $l6))
                  (local.get $l21))))
            (local.set $l10
              (select
                (i32.add
                  (local.tee $l11
                    (select
                      (local.get $l17)
                      (local.tee $l18
                        (i32.add
                          (local.get $l18)
                          (i32.shl
                            (i32.eqz
                              (local.get $l11))
                            (i32.const 2))))
                      (local.get $l20)))
                  (i32.shl
                    (local.get $l19)
                    (i32.const 2)))
                (local.get $l10)
                (i32.gt_s
                  (i32.shr_s
                    (i32.sub
                      (local.get $l10)
                      (local.get $l11))
                    (i32.const 2))
                  (local.get $l19))))
            (br_if $L20
              (i32.lt_s
                (local.get $p3)
                (i32.const 0)))))
        (local.set $p3
          (i32.const 0))
        (block $B24
          (br_if $B24
            (i32.ge_u
              (local.get $l18)
              (local.get $l10)))
          (local.set $p3
            (i32.mul
              (i32.shr_s
                (i32.sub
                  (local.get $l17)
                  (local.get $l18))
                (i32.const 2))
              (i32.const 9)))
          (local.set $l11
            (i32.const 10))
          (br_if $B24
            (i32.lt_u
              (local.tee $l12
                (i32.load
                  (local.get $l18)))
              (i32.const 10)))
          (loop $L25
            (local.set $p3
              (i32.add
                (local.get $p3)
                (i32.const 1)))
            (br_if $L25
              (i32.ge_u
                (local.get $l12)
                (local.tee $l11
                  (i32.mul
                    (local.get $l11)
                    (i32.const 10)))))))
        (block $B26
          (br_if $B26
            (i32.ge_s
              (local.tee $l11
                (i32.sub
                  (i32.sub
                    (local.get $l15)
                    (select
                      (i32.const 0)
                      (local.get $p3)
                      (i32.eq
                        (local.get $l14)
                        (i32.const 102))))
                  (i32.and
                    (i32.eq
                      (local.get $l14)
                      (i32.const 103))
                    (i32.ne
                      (local.get $l15)
                      (i32.const 0)))))
              (i32.add
                (i32.mul
                  (i32.shr_s
                    (i32.sub
                      (local.get $l10)
                      (local.get $l17))
                    (i32.const 2))
                  (i32.const 9))
                (i32.const -9))))
          (local.set $l21
            (i32.add
              (i32.add
                (i32.shl
                  (local.tee $l22
                    (i32.div_s
                      (local.tee $l12
                        (i32.add
                          (local.get $l11)
                          (i32.const 9216)))
                      (i32.const 9)))
                  (i32.const 2))
                (i32.add
                  (i32.add
                    (local.get $l6)
                    (i32.const 48))
                  (select
                    (i32.const 4)
                    (i32.const 292)
                    (i32.lt_s
                      (local.get $l16)
                      (i32.const 0)))))
              (i32.const -4096)))
          (local.set $l11
            (i32.const 10))
          (block $B27
            (br_if $B27
              (i32.gt_s
                (local.tee $l12
                  (i32.sub
                    (local.get $l12)
                    (i32.mul
                      (local.get $l22)
                      (i32.const 9))))
                (i32.const 7)))
            (loop $L28
              (local.set $l11
                (i32.mul
                  (local.get $l11)
                  (i32.const 10)))
              (br_if $L28
                (i32.ne
                  (local.tee $l12
                    (i32.add
                      (local.get $l12)
                      (i32.const 1)))
                  (i32.const 8)))))
          (local.set $l23
            (i32.add
              (local.get $l21)
              (i32.const 4)))
          (block $B29
            (block $B30
              (br_if $B30
                (local.tee $l22
                  (i32.sub
                    (local.tee $l12
                      (i32.load
                        (local.get $l21)))
                    (i32.mul
                      (local.tee $l19
                        (i32.div_u
                          (local.get $l12)
                          (local.get $l11)))
                      (local.get $l11)))))
              (br_if $B29
                (i32.eq
                  (local.get $l23)
                  (local.get $l10))))
            (block $B31
              (block $B32
                (br_if $B32
                  (i32.and
                    (local.get $l19)
                    (i32.const 1)))
                (local.set $p1
                  (f64.const 0x1p+53 (;=9.0072e+15;)))
                (br_if $B31
                  (i32.ne
                    (local.get $l11)
                    (i32.const 1000000000)))
                (br_if $B31
                  (i32.le_u
                    (local.get $l21)
                    (local.get $l18)))
                (br_if $B31
                  (i32.eqz
                    (i32.and
                      (i32.load8_u
                        (i32.add
                          (local.get $l21)
                          (i32.const -4)))
                      (i32.const 1)))))
              (local.set $p1
                (f64.const 0x1.0000000000001p+53 (;=9.0072e+15;))))
            (local.set $l26
              (select
                (f64.const 0x1p-1 (;=0.5;))
                (select
                  (select
                    (f64.const 0x1p+0 (;=1;))
                    (f64.const 0x1.8p+0 (;=1.5;))
                    (i32.eq
                      (local.get $l23)
                      (local.get $l10)))
                  (f64.const 0x1.8p+0 (;=1.5;))
                  (i32.eq
                    (local.get $l22)
                    (local.tee $l23
                      (i32.shr_u
                        (local.get $l11)
                        (i32.const 1)))))
                (i32.lt_u
                  (local.get $l22)
                  (local.get $l23))))
            (block $B33
              (br_if $B33
                (local.get $l7))
              (br_if $B33
                (i32.ne
                  (i32.load8_u
                    (local.get $l9))
                  (i32.const 45)))
              (local.set $l26
                (f64.neg
                  (local.get $l26)))
              (local.set $p1
                (f64.neg
                  (local.get $p1))))
            (i32.store
              (local.get $l21)
              (local.tee $l12
                (i32.sub
                  (local.get $l12)
                  (local.get $l22))))
            (br_if $B29
              (f64.eq
                (f64.add
                  (local.get $p1)
                  (local.get $l26))
                (local.get $p1)))
            (i32.store
              (local.get $l21)
              (local.tee $l11
                (i32.add
                  (local.get $l12)
                  (local.get $l11))))
            (block $B34
              (br_if $B34
                (i32.lt_u
                  (local.get $l11)
                  (i32.const 1000000000)))
              (loop $L35
                (i32.store
                  (local.get $l21)
                  (i32.const 0))
                (block $B36
                  (br_if $B36
                    (i32.ge_u
                      (local.tee $l21
                        (i32.add
                          (local.get $l21)
                          (i32.const -4)))
                      (local.get $l18)))
                  (i32.store
                    (local.tee $l18
                      (i32.add
                        (local.get $l18)
                        (i32.const -4)))
                    (i32.const 0)))
                (i32.store
                  (local.get $l21)
                  (local.tee $l11
                    (i32.add
                      (i32.load
                        (local.get $l21))
                      (i32.const 1))))
                (br_if $L35
                  (i32.gt_u
                    (local.get $l11)
                    (i32.const 999999999)))))
            (local.set $p3
              (i32.mul
                (i32.shr_s
                  (i32.sub
                    (local.get $l17)
                    (local.get $l18))
                  (i32.const 2))
                (i32.const 9)))
            (local.set $l11
              (i32.const 10))
            (br_if $B29
              (i32.lt_u
                (local.tee $l12
                  (i32.load
                    (local.get $l18)))
                (i32.const 10)))
            (loop $L37
              (local.set $p3
                (i32.add
                  (local.get $p3)
                  (i32.const 1)))
              (br_if $L37
                (i32.ge_u
                  (local.get $l12)
                  (local.tee $l11
                    (i32.mul
                      (local.get $l11)
                      (i32.const 10)))))))
          (local.set $l10
            (select
              (local.tee $l11
                (i32.add
                  (local.get $l21)
                  (i32.const 4)))
              (local.get $l10)
              (i32.gt_u
                (local.get $l10)
                (local.get $l11)))))
        (block $B38
          (loop $L39
            (br_if $B38
              (local.tee $l12
                (i32.le_u
                  (local.tee $l11
                    (local.get $l10))
                  (local.get $l18))))
            (br_if $L39
              (i32.eqz
                (i32.load
                  (local.tee $l10
                    (i32.add
                      (local.get $l11)
                      (i32.const -4))))))))
        (block $B40
          (block $B41
            (br_if $B41
              (i32.eq
                (local.get $l14)
                (i32.const 103)))
            (local.set $l21
              (i32.and
                (local.get $p4)
                (i32.const 8)))
            (br $B40))
          (local.set $l15
            (i32.add
              (select
                (i32.xor
                  (local.get $p3)
                  (i32.const -1))
                (i32.const -1)
                (local.tee $l21
                  (i32.and
                    (i32.gt_s
                      (local.tee $l10
                        (select
                          (local.get $l15)
                          (i32.const 1)
                          (local.get $l15)))
                      (local.get $p3))
                    (i32.gt_s
                      (local.get $p3)
                      (i32.const -5)))))
              (local.get $l10)))
          (local.set $p5
            (i32.add
              (select
                (i32.const -1)
                (i32.const -2)
                (local.get $l21))
              (local.get $p5)))
          (br_if $B40
            (local.tee $l21
              (i32.and
                (local.get $p4)
                (i32.const 8))))
          (local.set $l10
            (i32.const -9))
          (block $B42
            (br_if $B42
              (local.get $l12))
            (br_if $B42
              (i32.eqz
                (local.tee $l21
                  (i32.load
                    (i32.add
                      (local.get $l11)
                      (i32.const -4))))))
            (local.set $l12
              (i32.const 10))
            (local.set $l10
              (i32.const 0))
            (br_if $B42
              (i32.rem_u
                (local.get $l21)
                (i32.const 10)))
            (loop $L43
              (local.set $l10
                (i32.add
                  (local.tee $l22
                    (local.get $l10))
                  (i32.const 1)))
              (br_if $L43
                (i32.eqz
                  (i32.rem_u
                    (local.get $l21)
                    (local.tee $l12
                      (i32.mul
                        (local.get $l12)
                        (i32.const 10)))))))
            (local.set $l10
              (i32.xor
                (local.get $l22)
                (i32.const -1))))
          (local.set $l12
            (i32.mul
              (i32.shr_s
                (i32.sub
                  (local.get $l11)
                  (local.get $l17))
                (i32.const 2))
              (i32.const 9)))
          (block $B44
            (br_if $B44
              (i32.ne
                (i32.and
                  (local.get $p5)
                  (i32.const -33))
                (i32.const 70)))
            (local.set $l21
              (i32.const 0))
            (local.set $l15
              (select
                (local.get $l15)
                (local.tee $l10
                  (select
                    (local.tee $l10
                      (i32.add
                        (i32.add
                          (local.get $l12)
                          (local.get $l10))
                        (i32.const -9)))
                    (i32.const 0)
                    (i32.gt_s
                      (local.get $l10)
                      (i32.const 0))))
                (i32.lt_s
                  (local.get $l15)
                  (local.get $l10))))
            (br $B40))
          (local.set $l21
            (i32.const 0))
          (local.set $l15
            (select
              (local.get $l15)
              (local.tee $l10
                (select
                  (local.tee $l10
                    (i32.add
                      (i32.add
                        (i32.add
                          (local.get $p3)
                          (local.get $l12))
                        (local.get $l10))
                      (i32.const -9)))
                  (i32.const 0)
                  (i32.gt_s
                    (local.get $l10)
                    (i32.const 0))))
              (i32.lt_s
                (local.get $l15)
                (local.get $l10)))))
        (local.set $l12
          (i32.const -1))
        (br_if $B3
          (i32.gt_s
            (local.get $l15)
            (select
              (i32.const 2147483645)
              (i32.const 2147483646)
              (local.tee $l10
                (i32.or
                  (local.get $l15)
                  (local.get $l21))))))
        (local.set $l22
          (i32.add
            (i32.add
              (local.get $l15)
              (local.tee $l20
                (i32.ne
                  (local.get $l10)
                  (i32.const 0))))
            (i32.const 1)))
        (block $B45
          (block $B46
            (br_if $B46
              (i32.ne
                (local.tee $l19
                  (i32.and
                    (local.get $p5)
                    (i32.const -33)))
                (i32.const 70)))
            (br_if $B3
              (i32.gt_s
                (local.get $p3)
                (i32.sub
                  (i32.const 2147483647)
                  (local.get $l22))))
            (local.set $l10
              (select
                (local.get $p3)
                (i32.const 0)
                (i32.gt_s
                  (local.get $p3)
                  (i32.const 0))))
            (br $B45))
          (block $B47
            (br_if $B47
              (i32.gt_s
                (i32.sub
                  (local.get $l13)
                  (local.tee $l10
                    (call $fmt_u
                      (i64.extend_i32_u
                        (i32.xor
                          (i32.add
                            (local.get $p3)
                            (local.tee $l10
                              (i32.shr_s
                                (local.get $p3)
                                (i32.const 31))))
                          (local.get $l10)))
                      (local.get $l13))))
                (i32.const 1)))
            (loop $L48
              (i32.store8
                (local.tee $l10
                  (i32.add
                    (local.get $l10)
                    (i32.const -1)))
                (i32.const 48))
              (br_if $L48
                (i32.lt_s
                  (i32.sub
                    (local.get $l13)
                    (local.get $l10))
                  (i32.const 2)))))
          (i32.store8
            (local.tee $l23
              (i32.add
                (local.get $l10)
                (i32.const -2)))
            (local.get $p5))
          (local.set $l12
            (i32.const -1))
          (i32.store8
            (i32.add
              (local.get $l10)
              (i32.const -1))
            (select
              (i32.const 45)
              (i32.const 43)
              (i32.lt_s
                (local.get $p3)
                (i32.const 0))))
          (br_if $B3
            (i32.gt_s
              (local.tee $l10
                (i32.sub
                  (local.get $l13)
                  (local.get $l23)))
              (i32.sub
                (i32.const 2147483647)
                (local.get $l22)))))
        (local.set $l12
          (i32.const -1))
        (br_if $B3
          (i32.gt_s
            (local.tee $l10
              (i32.add
                (local.get $l10)
                (local.get $l22)))
            (i32.xor
              (local.get $l8)
              (i32.const 2147483647))))
        (call $pad
          (local.get $p0)
          (i32.const 32)
          (local.get $p2)
          (local.tee $p5
            (i32.add
              (local.get $l10)
              (local.get $l8)))
          (local.get $p4))
        (call $out
          (local.get $p0)
          (local.get $l9)
          (local.get $l8))
        (call $pad
          (local.get $p0)
          (i32.const 48)
          (local.get $p2)
          (local.get $p5)
          (i32.xor
            (local.get $p4)
            (i32.const 65536)))
        (block $B49
          (block $B50
            (block $B51
              (block $B52
                (br_if $B52
                  (i32.ne
                    (local.get $l19)
                    (i32.const 70)))
                (local.set $l21
                  (i32.or
                    (i32.add
                      (local.get $l6)
                      (i32.const 16))
                    (i32.const 8)))
                (local.set $p3
                  (i32.or
                    (i32.add
                      (local.get $l6)
                      (i32.const 16))
                    (i32.const 9)))
                (local.set $l18
                  (local.tee $l12
                    (select
                      (local.get $l17)
                      (local.get $l18)
                      (i32.gt_u
                        (local.get $l18)
                        (local.get $l17)))))
                (loop $L53
                  (local.set $l10
                    (call $fmt_u
                      (i64.load32_u
                        (local.get $l18))
                      (local.get $p3)))
                  (block $B54
                    (block $B55
                      (br_if $B55
                        (i32.eq
                          (local.get $l18)
                          (local.get $l12)))
                      (br_if $B54
                        (i32.le_u
                          (local.get $l10)
                          (i32.add
                            (local.get $l6)
                            (i32.const 16))))
                      (loop $L56
                        (i32.store8
                          (local.tee $l10
                            (i32.add
                              (local.get $l10)
                              (i32.const -1)))
                          (i32.const 48))
                        (br_if $L56
                          (i32.gt_u
                            (local.get $l10)
                            (i32.add
                              (local.get $l6)
                              (i32.const 16))))
                        (br $B54))
                      (unreachable))
                    (br_if $B54
                      (i32.ne
                        (local.get $l10)
                        (local.get $p3)))
                    (i32.store8 offset=24
                      (local.get $l6)
                      (i32.const 48))
                    (local.set $l10
                      (local.get $l21)))
                  (call $out
                    (local.get $p0)
                    (local.get $l10)
                    (i32.sub
                      (local.get $p3)
                      (local.get $l10)))
                  (br_if $L53
                    (i32.le_u
                      (local.tee $l18
                        (i32.add
                          (local.get $l18)
                          (i32.const 4)))
                      (local.get $l17))))
                (local.set $l10
                  (i32.const 0))
                (br_if $B50
                  (i32.eqz
                    (local.get $l20)))
                (call $out
                  (local.get $p0)
                  (i32.const 1117)
                  (i32.const 1))
                (br_if $B51
                  (i32.ge_u
                    (local.get $l18)
                    (local.get $l11)))
                (br_if $B51
                  (i32.lt_s
                    (local.get $l15)
                    (i32.const 1)))
                (loop $L57
                  (block $B58
                    (br_if $B58
                      (i32.le_u
                        (local.tee $l10
                          (call $fmt_u
                            (i64.load32_u
                              (local.get $l18))
                            (local.get $p3)))
                        (i32.add
                          (local.get $l6)
                          (i32.const 16))))
                    (loop $L59
                      (i32.store8
                        (local.tee $l10
                          (i32.add
                            (local.get $l10)
                            (i32.const -1)))
                        (i32.const 48))
                      (br_if $L59
                        (i32.gt_u
                          (local.get $l10)
                          (i32.add
                            (local.get $l6)
                            (i32.const 16))))))
                  (call $out
                    (local.get $p0)
                    (local.get $l10)
                    (select
                      (local.get $l15)
                      (i32.const 9)
                      (i32.lt_s
                        (local.get $l15)
                        (i32.const 9))))
                  (local.set $l10
                    (i32.add
                      (local.get $l15)
                      (i32.const -9)))
                  (br_if $B50
                    (i32.ge_u
                      (local.tee $l18
                        (i32.add
                          (local.get $l18)
                          (i32.const 4)))
                      (local.get $l11)))
                  (local.set $l12
                    (i32.gt_s
                      (local.get $l15)
                      (i32.const 9)))
                  (local.set $l15
                    (local.get $l10))
                  (br_if $L57
                    (local.get $l12))
                  (br $B50))
                (unreachable))
              (block $B60
                (br_if $B60
                  (i32.lt_s
                    (local.get $l15)
                    (i32.const 0)))
                (local.set $l22
                  (select
                    (local.get $l11)
                    (i32.add
                      (local.get $l18)
                      (i32.const 4))
                    (i32.gt_u
                      (local.get $l11)
                      (local.get $l18))))
                (local.set $p3
                  (i32.or
                    (i32.add
                      (local.get $l6)
                      (i32.const 16))
                    (i32.const 9)))
                (local.set $l19
                  (i32.or
                    (i32.add
                      (local.get $l6)
                      (i32.const 16))
                    (i32.const 8)))
                (local.set $l11
                  (local.get $l18))
                (loop $L61
                  (block $B62
                    (br_if $B62
                      (i32.ne
                        (local.tee $l10
                          (call $fmt_u
                            (i64.load32_u
                              (local.get $l11))
                            (local.get $p3)))
                        (local.get $p3)))
                    (i32.store8 offset=24
                      (local.get $l6)
                      (i32.const 48))
                    (local.set $l10
                      (local.get $l19)))
                  (block $B63
                    (block $B64
                      (br_if $B64
                        (i32.eq
                          (local.get $l11)
                          (local.get $l18)))
                      (br_if $B63
                        (i32.le_u
                          (local.get $l10)
                          (i32.add
                            (local.get $l6)
                            (i32.const 16))))
                      (loop $L65
                        (i32.store8
                          (local.tee $l10
                            (i32.add
                              (local.get $l10)
                              (i32.const -1)))
                          (i32.const 48))
                        (br_if $L65
                          (i32.gt_u
                            (local.get $l10)
                            (i32.add
                              (local.get $l6)
                              (i32.const 16))))
                        (br $B63))
                      (unreachable))
                    (call $out
                      (local.get $p0)
                      (local.get $l10)
                      (i32.const 1))
                    (local.set $l10
                      (i32.add
                        (local.get $l10)
                        (i32.const 1)))
                    (br_if $B63
                      (i32.eqz
                        (i32.or
                          (local.get $l15)
                          (local.get $l21))))
                    (call $out
                      (local.get $p0)
                      (i32.const 1117)
                      (i32.const 1)))
                  (call $out
                    (local.get $p0)
                    (local.get $l10)
                    (select
                      (local.tee $l12
                        (i32.sub
                          (local.get $p3)
                          (local.get $l10)))
                      (local.get $l15)
                      (i32.gt_s
                        (local.get $l15)
                        (local.get $l12))))
                  (local.set $l15
                    (i32.sub
                      (local.get $l15)
                      (local.get $l12)))
                  (br_if $B60
                    (i32.ge_u
                      (local.tee $l11
                        (i32.add
                          (local.get $l11)
                          (i32.const 4)))
                      (local.get $l22)))
                  (br_if $L61
                    (i32.gt_s
                      (local.get $l15)
                      (i32.const -1)))))
              (call $pad
                (local.get $p0)
                (i32.const 48)
                (i32.add
                  (local.get $l15)
                  (i32.const 18))
                (i32.const 18)
                (i32.const 0))
              (call $out
                (local.get $p0)
                (local.get $l23)
                (i32.sub
                  (local.get $l13)
                  (local.get $l23)))
              (br $B49))
            (local.set $l10
              (local.get $l15)))
          (call $pad
            (local.get $p0)
            (i32.const 48)
            (i32.add
              (local.get $l10)
              (i32.const 9))
            (i32.const 9)
            (i32.const 0)))
        (call $pad
          (local.get $p0)
          (i32.const 32)
          (local.get $p2)
          (local.get $p5)
          (i32.xor
            (local.get $p4)
            (i32.const 8192)))
        (local.set $l12
          (select
            (local.get $p2)
            (local.get $p5)
            (i32.lt_s
              (local.get $p5)
              (local.get $p2))))
        (br $B3))
      (local.set $l23
        (i32.add
          (local.get $l9)
          (i32.and
            (i32.shr_s
              (i32.shl
                (local.get $p5)
                (i32.const 26))
              (i32.const 31))
            (i32.const 9))))
      (block $B66
        (br_if $B66
          (i32.gt_u
            (local.get $p3)
            (i32.const 11)))
        (local.set $l10
          (i32.sub
            (i32.const 12)
            (local.get $p3)))
        (local.set $l26
          (f64.const 0x1p+4 (;=16;)))
        (loop $L67
          (local.set $l26
            (f64.mul
              (local.get $l26)
              (f64.const 0x1p+4 (;=16;))))
          (br_if $L67
            (local.tee $l10
              (i32.add
                (local.get $l10)
                (i32.const -1)))))
        (block $B68
          (br_if $B68
            (i32.ne
              (i32.load8_u
                (local.get $l23))
              (i32.const 45)))
          (local.set $p1
            (f64.neg
              (f64.add
                (local.get $l26)
                (f64.sub
                  (f64.neg
                    (local.get $p1))
                  (local.get $l26)))))
          (br $B66))
        (local.set $p1
          (f64.sub
            (f64.add
              (local.get $p1)
              (local.get $l26))
            (local.get $l26))))
      (block $B69
        (br_if $B69
          (i32.ne
            (local.tee $l10
              (call $fmt_u
                (i64.extend_i32_u
                  (i32.xor
                    (i32.add
                      (local.tee $l10
                        (i32.load offset=44
                          (local.get $l6)))
                      (local.tee $l10
                        (i32.shr_s
                          (local.get $l10)
                          (i32.const 31))))
                    (local.get $l10)))
                (local.get $l13)))
            (local.get $l13)))
        (i32.store8 offset=15
          (local.get $l6)
          (i32.const 48))
        (local.set $l10
          (i32.add
            (local.get $l6)
            (i32.const 15))))
      (local.set $l21
        (i32.or
          (local.get $l8)
          (i32.const 2)))
      (local.set $l18
        (i32.and
          (local.get $p5)
          (i32.const 32)))
      (local.set $l11
        (i32.load offset=44
          (local.get $l6)))
      (i32.store8
        (local.tee $l22
          (i32.add
            (local.get $l10)
            (i32.const -2)))
        (i32.add
          (local.get $p5)
          (i32.const 15)))
      (i32.store8
        (i32.add
          (local.get $l10)
          (i32.const -1))
        (select
          (i32.const 45)
          (i32.const 43)
          (i32.lt_s
            (local.get $l11)
            (i32.const 0))))
      (local.set $l12
        (i32.and
          (local.get $p4)
          (i32.const 8)))
      (local.set $l11
        (i32.add
          (local.get $l6)
          (i32.const 16)))
      (loop $L70
        (local.set $l10
          (local.get $l11))
        (block $B71
          (block $B72
            (br_if $B72
              (i32.eqz
                (f64.lt
                  (f64.abs
                    (local.get $p1))
                  (f64.const 0x1p+31 (;=2.14748e+09;)))))
            (local.set $l11
              (i32.trunc_f64_s
                (local.get $p1)))
            (br $B71))
          (local.set $l11
            (i32.const -2147483648)))
        (i32.store8
          (local.get $l10)
          (i32.or
            (i32.load8_u
              (i32.add
                (local.get $l11)
                (i32.const 1600)))
            (local.get $l18)))
        (local.set $p1
          (f64.mul
            (f64.sub
              (local.get $p1)
              (f64.convert_i32_s
                (local.get $l11)))
            (f64.const 0x1p+4 (;=16;))))
        (block $B73
          (br_if $B73
            (i32.ne
              (i32.sub
                (local.tee $l11
                  (i32.add
                    (local.get $l10)
                    (i32.const 1)))
                (i32.add
                  (local.get $l6)
                  (i32.const 16)))
              (i32.const 1)))
          (block $B74
            (br_if $B74
              (f64.ne
                (local.get $p1)
                (f64.const 0x0p+0 (;=0;))))
            (br_if $B74
              (i32.gt_s
                (local.get $p3)
                (i32.const 0)))
            (br_if $B73
              (i32.eqz
                (local.get $l12))))
          (i32.store8 offset=1
            (local.get $l10)
            (i32.const 46))
          (local.set $l11
            (i32.add
              (local.get $l10)
              (i32.const 2))))
        (br_if $L70
          (f64.ne
            (local.get $p1)
            (f64.const 0x0p+0 (;=0;)))))
      (local.set $l12
        (i32.const -1))
      (br_if $B3
        (i32.lt_s
          (i32.sub
            (i32.const 2147483645)
            (local.tee $l10
              (i32.add
                (local.get $l21)
                (local.tee $l19
                  (i32.sub
                    (local.get $l13)
                    (local.get $l22))))))
          (local.get $p3)))
      (block $B75
        (block $B76
          (br_if $B76
            (i32.eqz
              (local.get $p3)))
          (br_if $B76
            (i32.ge_s
              (i32.add
                (local.tee $l18
                  (i32.sub
                    (local.get $l11)
                    (i32.add
                      (local.get $l6)
                      (i32.const 16))))
                (i32.const -2))
              (local.get $p3)))
          (local.set $l11
            (i32.add
              (local.get $p3)
              (i32.const 2)))
          (br $B75))
        (local.set $l11
          (local.tee $l18
            (i32.sub
              (local.get $l11)
              (i32.add
                (local.get $l6)
                (i32.const 16))))))
      (call $pad
        (local.get $p0)
        (i32.const 32)
        (local.get $p2)
        (local.tee $l10
          (i32.add
            (local.get $l10)
            (local.get $l11)))
        (local.get $p4))
      (call $out
        (local.get $p0)
        (local.get $l23)
        (local.get $l21))
      (call $pad
        (local.get $p0)
        (i32.const 48)
        (local.get $p2)
        (local.get $l10)
        (i32.xor
          (local.get $p4)
          (i32.const 65536)))
      (call $out
        (local.get $p0)
        (i32.add
          (local.get $l6)
          (i32.const 16))
        (local.get $l18))
      (call $pad
        (local.get $p0)
        (i32.const 48)
        (i32.sub
          (local.get $l11)
          (local.get $l18))
        (i32.const 0)
        (i32.const 0))
      (call $out
        (local.get $p0)
        (local.get $l22)
        (local.get $l19))
      (call $pad
        (local.get $p0)
        (i32.const 32)
        (local.get $p2)
        (local.get $l10)
        (i32.xor
          (local.get $p4)
          (i32.const 8192)))
      (local.set $l12
        (select
          (local.get $p2)
          (local.get $l10)
          (i32.lt_s
            (local.get $l10)
            (local.get $p2)))))
    (global.set $g0
      (i32.add
        (local.get $l6)
        (i32.const 560)))
    (local.get $l12))
  (func $pop_arg_long_double (type $t10) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (i32.store
      (local.get $p1)
      (i32.add
        (local.tee $l2
          (i32.and
            (i32.add
              (i32.load
                (local.get $p1))
              (i32.const 7))
            (i32.const -8)))
        (i32.const 16)))
    (f64.store
      (local.get $p0)
      (call $__trunctfdf2
        (i64.load
          (local.get $l2))
        (i64.load
          (i32.add
            (local.get $l2)
            (i32.const 8))))))
  (func $__DOUBLE_BITS (type $t21) (param $p0 f64) (result i64)
    (i64.reinterpret_f64
      (local.get $p0)))
  (func $printf (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (local.get $p1))
    (local.set $p1
      (call $vfprintf
        (i32.const 1624)
        (local.get $p0)
        (local.get $p1)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $strlen (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (local.set $l1
      (local.get $p0))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.get $p0)
              (i32.const 3))))
        (local.set $l1
          (local.get $p0))
        (loop $L2
          (br_if $B0
            (i32.eqz
              (i32.load8_u
                (local.get $l1))))
          (br_if $L2
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $l1)
                  (i32.const 1)))
              (i32.const 3)))))
      (loop $L3
        (local.set $l1
          (i32.add
            (local.tee $l2
              (local.get $l1))
            (i32.const 4)))
        (br_if $L3
          (i32.eqz
            (i32.and
              (i32.and
                (i32.xor
                  (local.tee $l3
                    (i32.load
                      (local.get $l2)))
                  (i32.const -1))
                (i32.add
                  (local.get $l3)
                  (i32.const -16843009)))
              (i32.const -2139062144)))))
      (block $B4
        (br_if $B4
          (i32.and
            (local.get $l3)
            (i32.const 255)))
        (return
          (i32.sub
            (local.get $l2)
            (local.get $p0))))
      (loop $L5
        (local.set $l3
          (i32.load8_u offset=1
            (local.get $l2)))
        (local.set $l2
          (local.tee $l1
            (i32.add
              (local.get $l2)
              (i32.const 1))))
        (br_if $L5
          (local.get $l3))))
    (i32.sub
      (local.get $l1)
      (local.get $p0)))
  (func $stackSave (export "stackSave") (type $t3) (result i32)
    (global.get $g0))
  (func $stackRestore (export "stackRestore") (type $t2) (param $p0 i32)
    (global.set $g0
      (local.get $p0)))
  (func $stackAlloc (export "stackAlloc") (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.and
          (i32.sub
            (global.get $g0)
            (local.get $p0))
          (i32.const -16))))
    (local.get $l1))
  (func $emscripten_stack_init (export "emscripten_stack_init") (type $t4)
    (global.set $g2
      (i32.const 5246544))
    (global.set $g1
      (i32.and
        (i32.add
          (i32.const 3664)
          (i32.const 15))
        (i32.const -16))))
  (func $emscripten_stack_get_free (export "emscripten_stack_get_free") (type $t3) (result i32)
    (i32.sub
      (global.get $g0)
      (global.get $g1)))
  (func $emscripten_stack_get_end (export "emscripten_stack_get_end") (type $t3) (result i32)
    (global.get $g1))
  (table $__indirect_function_table (export "__indirect_function_table") 10 10 funcref)
  (memory $memory (export "memory") 256 256)
  (global $g0 (mut i32) (i32.const 5246544))
  (global $g1 (mut i32) (i32.const 0))
  (global $g2 (mut i32) (i32.const 0))
  (elem $e0 (i32.const 1) func $__wasm_call_ctors $__stdio_seek $__stdio_write $__stdio_read $__stdio_close $__emscripten_stdout_close $__emscripten_stdout_seek $fmt_fp $pop_arg_long_double)
  (data $d0 (i32.const 1024) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00temp.txt\00/dev/stdout\00/dev/stderr\00/dev/stdin\00nan\00inf\00rwa\00NAN\00INF\00.\00(null)\00%s\0a\00\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $d1 (i32.const 1616) "P\0eP\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\07\00\00\00\d8\09\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00X\06\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\e0\0d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\06\00\00"))

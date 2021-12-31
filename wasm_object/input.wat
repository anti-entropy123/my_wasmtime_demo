(module
  (type $t0 (func (param i32) (result i32)))
  (type $t1 (func (param i32 i32 i32) (result i32)))
  (type $t2 (func (result i32)))
  (type $t3 (func (param i32)))
  (type $t4 (func))
  (type $t5 (func (param i32 i32) (result i32)))
  (type $t6 (func (param i32 i64 i64 i64 i64)))
  (type $t7 (func (param i32 i32)))
  (type $t8 (func (param i32 i64 i32) (result i64)))
  (type $t9 (func (param i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i64 i64 i32)))
  (type $t11 (func (param i32 i32 i32 i32)))
  (type $t12 (func (param i64 i64 i64 i64) (result i32)))
  (type $t13 (func (param f64 i32) (result f64)))
  (type $t14 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type $t15 (func (param i64 i32) (result i32)))
  (type $t16 (func (param i32 i64 i32 i32) (result i32)))
  (type $t17 (func (param i32 i64)))
  (type $t18 (func (param i32 i64 i64)))
  (type $t19 (func (param i32 i32 i32 i32 i32 i32)))
  (type $t20 (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type $t21 (func (param i32 i32) (result i64)))
  (type $t22 (func (param i32 i32 i32 i64) (result i64)))
  (type $t23 (func (param i32 i32 i64)))
  (type $t24 (func (param i32 f64)))
  (type $t25 (func (param i32 f32)))
  (type $t26 (func (param i64 i64) (result f64)))
  (type $t27 (func (param i64 i64) (result f32)))
  (type $t28 (func (param i64 i64) (result i32)))
  (type $t29 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t30 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type $t31 (func (param i32 i32 i32)))
  (type $t32 (func (param i64 i32 i32) (result i32)))
  (type $t33 (func (param i32 i32 i32 i32 i32)))
  (type $t34 (func (param f64) (result i64)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__wasi_fd_close (type $t0)))
  (import "wasi_snapshot_preview1" "fd_read" (func $__wasi_fd_read (type $t9)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__wasi_fd_seek (type $t16)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__wasi_fd_write (type $t9)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__wasi_proc_exit (type $t3)))
  (func $__wasm_call_ctors (type $t4)
    (call $emscripten_stack_init)
    (call $init_pthread_self))
  (func $__original_main (type $t2) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32)
    (local.set $l0
      (global.get $g0))
    (local.set $l1
      (i32.const 80))
    (local.set $l2
      (i32.sub
        (local.get $l0)
        (local.get $l1)))
    (global.set $g0
      (local.get $l2))
    (local.set $l3
      (i32.const 0))
    (i32.store offset=76
      (local.get $l2)
      (local.get $l3))
    (local.set $l4
      (i32.const 32))
    (local.set $l5
      (i32.add
        (local.get $l2)
        (local.get $l4)))
    (local.set $l6
      (local.get $l5))
    (i32.store
      (local.get $l2)
      (local.get $l6))
    (local.set $l7
      (i32.const 1062))
    (drop
      (call $scanf
        (local.get $l7)
        (local.get $l2)))
    (local.set $l8
      (i32.const 32))
    (local.set $l9
      (i32.add
        (local.get $l2)
        (local.get $l8)))
    (local.set $l10
      (local.get $l9))
    (i32.store offset=16
      (local.get $l2)
      (local.get $l10))
    (local.set $l11
      (i32.const 1090))
    (local.set $l12
      (i32.const 16))
    (local.set $l13
      (i32.add
        (local.get $l2)
        (local.get $l12)))
    (drop
      (call $printf
        (local.get $l11)
        (local.get $l13)))
    (local.set $l14
      (i32.const 0))
    (local.set $l15
      (i32.const 80))
    (local.set $l16
      (i32.add
        (local.get $l2)
        (local.get $l15)))
    (global.set $g0
      (local.get $l16))
    (return
      (local.get $l14)))
  (func $_start (export "_start") (type $t4)
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.const 1)))
      (call $__wasm_call_ctors))
    (call $exit
      (call $__original_main))
    (unreachable))
  (func $scanf (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
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
      (call $vscanf
        (local.get $p0)
        (local.get $p1)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $dummy (type $t0) (param $p0 i32) (result i32)
    (local.get $p0))
  (func $__stdio_close (type $t0) (param $p0 i32) (result i32)
    (call $__wasi_fd_close
      (call $dummy
        (i32.load offset=60
          (local.get $p0)))))
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
  (func $__lseek (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
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
  (func $__stdio_seek (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (call $__lseek
      (i32.load offset=60
        (local.get $p0))
      (local.get $p1)
      (local.get $p2)))
  (func $__lock (type $t3) (param $p0 i32))
  (func $__ofl_lock (type $t2) (result i32)
    (call $__lock
      (i32.const 3640))
    (i32.const 3644))
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
      (i32.load offset=2288
        (i32.const 0)))
    (call $close_file
      (i32.load offset=2592
        (i32.const 0)))
    (call $close_file
      (i32.load offset=2440
        (i32.const 0))))
  (func $close_file (type $t3) (param $p0 i32)
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
        (call_indirect $__indirect_function_table (type $t8)
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
  (func $isspace (type $t0) (param $p0 i32) (result i32)
    (i32.or
      (i32.eq
        (local.get $p0)
        (i32.const 32))
      (i32.lt_u
        (i32.add
          (local.get $p0)
          (i32.const -9))
        (i32.const 5))))
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
  (func $__shlim (type $t17) (param $p0 i32) (param $p1 i64)
    (local $l2 i32) (local $l3 i32)
    (i64.store offset=112
      (local.get $p0)
      (local.get $p1))
    (i64.store offset=120
      (local.get $p0)
      (i64.extend_i32_s
        (i32.sub
          (i32.load offset=44
            (local.get $p0))
          (local.tee $l2
            (i32.load offset=4
              (local.get $p0))))))
    (local.set $l3
      (i32.load offset=8
        (local.get $p0)))
    (block $B0
      (br_if $B0
        (i64.eqz
          (local.get $p1)))
      (br_if $B0
        (i64.le_s
          (i64.extend_i32_s
            (i32.sub
              (local.get $l3)
              (local.get $l2)))
          (local.get $p1)))
      (local.set $l3
        (i32.add
          (local.get $l2)
          (i32.wrap_i64
            (local.get $p1)))))
    (i32.store offset=104
      (local.get $p0)
      (local.get $l3)))
  (func $__shgetc (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i64)
    (local.set $l4
      (i64.add
        (i64.load offset=120
          (local.get $p0))
        (i64.extend_i32_s
          (i32.sub
            (local.tee $l1
              (i32.load offset=4
                (local.get $p0)))
            (local.tee $l2
              (i32.load offset=44
                (local.get $p0)))))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i64.eqz
              (local.tee $l5
                (i64.load offset=112
                  (local.get $p0)))))
          (br_if $B1
            (i64.ge_s
              (local.get $l4)
              (local.get $l5))))
        (br_if $B0
          (i32.gt_s
            (local.tee $l2
              (call $__uflow
                (local.get $p0)))
            (i32.const -1)))
        (local.set $l1
          (i32.load offset=4
            (local.get $p0)))
        (local.set $l2
          (i32.load offset=44
            (local.get $p0))))
      (i64.store offset=112
        (local.get $p0)
        (i64.const -1))
      (i32.store offset=104
        (local.get $p0)
        (local.get $l1))
      (i64.store offset=120
        (local.get $p0)
        (i64.add
          (local.get $l4)
          (i64.extend_i32_s
            (i32.sub
              (local.get $l2)
              (local.get $l1)))))
      (return
        (i32.const -1)))
    (local.set $l4
      (i64.add
        (local.get $l4)
        (i64.const 1)))
    (local.set $l1
      (i32.load offset=4
        (local.get $p0)))
    (local.set $l3
      (i32.load offset=8
        (local.get $p0)))
    (block $B3
      (br_if $B3
        (i64.eq
          (local.tee $l5
            (i64.load offset=112
              (local.get $p0)))
          (i64.const 0)))
      (br_if $B3
        (i64.ge_s
          (local.tee $l5
            (i64.sub
              (local.get $l5)
              (local.get $l4)))
          (i64.extend_i32_s
            (i32.sub
              (local.get $l3)
              (local.get $l1)))))
      (local.set $l3
        (i32.add
          (local.get $l1)
          (i32.wrap_i64
            (local.get $l5)))))
    (i32.store offset=104
      (local.get $p0)
      (local.get $l3))
    (i64.store offset=120
      (local.get $p0)
      (i64.add
        (local.get $l4)
        (i64.extend_i32_s
          (i32.sub
            (local.tee $l3
              (i32.load offset=44
                (local.get $p0)))
            (local.get $l1)))))
    (block $B4
      (br_if $B4
        (i32.gt_u
          (local.get $l1)
          (local.get $l3)))
      (i32.store8
        (i32.add
          (local.get $l1)
          (i32.const -1))
        (local.get $l2)))
    (local.get $l2))
  (func $isdigit (type $t0) (param $p0 i32) (result i32)
    (i32.lt_u
      (i32.add
        (local.get $p0)
        (i32.const -48))
      (i32.const 10)))
  (func $__errno_location (export "__errno_location") (type $t2) (result i32)
    (i32.const 3648))
  (func $copysignl (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i64) (param $p4 i64)
    (i64.store
      (local.get $p0)
      (local.get $p1))
    (i64.store offset=8
      (local.get $p0)
      (i64.or
        (i64.shl
          (i64.extend_i32_u
            (i32.or
              (i32.and
                (i32.wrap_i64
                  (i64.shr_u
                    (local.get $p4)
                    (i64.const 48)))
                (i32.const 32768))
              (i32.and
                (i32.wrap_i64
                  (i64.shr_u
                    (local.get $p2)
                    (i64.const 48)))
                (i32.const 32767))))
          (i64.const 48))
        (i64.and
          (local.get $p2)
          (i64.const 281474976710655)))))
  (func $scalbnl (type $t10) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i32)
    (local $l4 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 80))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.lt_s
            (local.get $p3)
            (i32.const 16384)))
        (call $__multf3
          (i32.add
            (local.get $l4)
            (i32.const 32))
          (local.get $p1)
          (local.get $p2)
          (i64.const 0)
          (i64.const 9222809086901354496))
        (local.set $p2
          (i64.load
            (i32.add
              (i32.add
                (local.get $l4)
                (i32.const 32))
              (i32.const 8))))
        (local.set $p1
          (i64.load offset=32
            (local.get $l4)))
        (block $B2
          (br_if $B2
            (i32.ge_u
              (local.get $p3)
              (i32.const 32767)))
          (local.set $p3
            (i32.add
              (local.get $p3)
              (i32.const -16383)))
          (br $B0))
        (call $__multf3
          (i32.add
            (local.get $l4)
            (i32.const 16))
          (local.get $p1)
          (local.get $p2)
          (i64.const 0)
          (i64.const 9222809086901354496))
        (local.set $p3
          (i32.add
            (select
              (local.get $p3)
              (i32.const 49149)
              (i32.lt_u
                (local.get $p3)
                (i32.const 49149)))
            (i32.const -32766)))
        (local.set $p2
          (i64.load
            (i32.add
              (i32.add
                (local.get $l4)
                (i32.const 16))
              (i32.const 8))))
        (local.set $p1
          (i64.load offset=16
            (local.get $l4)))
        (br $B0))
      (br_if $B0
        (i32.gt_s
          (local.get $p3)
          (i32.const -16383)))
      (call $__multf3
        (i32.add
          (local.get $l4)
          (i32.const 64))
        (local.get $p1)
        (local.get $p2)
        (i64.const 0)
        (i64.const 32088147345014784))
      (local.set $p2
        (i64.load
          (i32.add
            (i32.add
              (local.get $l4)
              (i32.const 64))
            (i32.const 8))))
      (local.set $p1
        (i64.load offset=64
          (local.get $l4)))
      (block $B3
        (br_if $B3
          (i32.le_u
            (local.get $p3)
            (i32.const -32652)))
        (local.set $p3
          (i32.add
            (local.get $p3)
            (i32.const 16269)))
        (br $B0))
      (call $__multf3
        (i32.add
          (local.get $l4)
          (i32.const 48))
        (local.get $p1)
        (local.get $p2)
        (i64.const 0)
        (i64.const 32088147345014784))
      (local.set $p3
        (i32.add
          (select
            (local.get $p3)
            (i32.const -48920)
            (i32.gt_u
              (local.get $p3)
              (i32.const -48920)))
          (i32.const 32538)))
      (local.set $p2
        (i64.load
          (i32.add
            (i32.add
              (local.get $l4)
              (i32.const 48))
            (i32.const 8))))
      (local.set $p1
        (i64.load offset=48
          (local.get $l4))))
    (call $__multf3
      (local.get $l4)
      (local.get $p1)
      (local.get $p2)
      (i64.const 0)
      (i64.shl
        (i64.extend_i32_u
          (i32.add
            (local.get $p3)
            (i32.const 16383)))
        (i64.const 48)))
    (i64.store offset=8
      (local.get $p0)
      (i64.load
        (i32.add
          (local.get $l4)
          (i32.const 8))))
    (i64.store
      (local.get $p0)
      (i64.load
        (local.get $l4)))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 80))))
  (func $fabsl (type $t18) (param $p0 i32) (param $p1 i64) (param $p2 i64)
    (i64.store offset=8
      (local.get $p0)
      (i64.and
        (local.get $p2)
        (i64.const 9223372036854775807)))
    (i64.store
      (local.get $p0)
      (local.get $p1)))
  (func $__floatscan (type $t11) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i64) (local $l11 i64) (local $l12 i64)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (local.set $l10
      (i64.const 0))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.get $p2)
            (i32.const 2)))
        (local.set $l5
          (i32.add
            (local.get $p1)
            (i32.const 4)))
        (local.set $l6
          (i32.load
            (i32.add
              (local.tee $p2
                (i32.shl
                  (local.get $p2)
                  (i32.const 2)))
              (i32.const 1164))))
        (local.set $l7
          (i32.load
            (i32.add
              (local.get $p2)
              (i32.const 1152))))
        (loop $L2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.eq
                  (local.tee $p2
                    (i32.load offset=4
                      (local.get $p1)))
                  (i32.load offset=104
                    (local.get $p1))))
              (i32.store
                (local.get $l5)
                (i32.add
                  (local.get $p2)
                  (i32.const 1)))
              (local.set $p2
                (i32.load8_u
                  (local.get $p2)))
              (br $B3))
            (local.set $p2
              (call $__shgetc
                (local.get $p1))))
          (br_if $L2
            (call $isspace
              (local.get $p2))))
        (local.set $l8
          (i32.const 1))
        (block $B5
          (block $B6
            (br_table $B6 $B5 $B6 $B5
              (i32.add
                (local.get $p2)
                (i32.const -43))))
          (local.set $l8
            (select
              (i32.const -1)
              (i32.const 1)
              (i32.eq
                (local.get $p2)
                (i32.const 45))))
          (block $B7
            (br_if $B7
              (i32.eq
                (local.tee $p2
                  (i32.load offset=4
                    (local.get $p1)))
                (i32.load offset=104
                  (local.get $p1))))
            (i32.store
              (local.get $l5)
              (i32.add
                (local.get $p2)
                (i32.const 1)))
            (local.set $p2
              (i32.load8_u
                (local.get $p2)))
            (br $B5))
          (local.set $p2
            (call $__shgetc
              (local.get $p1))))
        (local.set $l9
          (i32.const 0))
        (block $B8
          (block $B9
            (block $B10
              (loop $L11
                (br_if $B10
                  (i32.ne
                    (i32.or
                      (local.get $p2)
                      (i32.const 32))
                    (i32.load8_s
                      (i32.add
                        (local.get $l9)
                        (i32.const 1024)))))
                (block $B12
                  (br_if $B12
                    (i32.gt_u
                      (local.get $l9)
                      (i32.const 6)))
                  (block $B13
                    (br_if $B13
                      (i32.eq
                        (local.tee $p2
                          (i32.load offset=4
                            (local.get $p1)))
                        (i32.load offset=104
                          (local.get $p1))))
                    (i32.store
                      (local.get $l5)
                      (i32.add
                        (local.get $p2)
                        (i32.const 1)))
                    (local.set $p2
                      (i32.load8_u
                        (local.get $p2)))
                    (br $B12))
                  (local.set $p2
                    (call $__shgetc
                      (local.get $p1))))
                (br_if $L11
                  (i32.ne
                    (local.tee $l9
                      (i32.add
                        (local.get $l9)
                        (i32.const 1)))
                    (i32.const 8)))
                (br $B9))
              (unreachable))
            (block $B14
              (br_if $B14
                (i32.eq
                  (local.get $l9)
                  (i32.const 3)))
              (br_if $B9
                (i32.eq
                  (local.get $l9)
                  (i32.const 8)))
              (br_if $B8
                (i32.lt_u
                  (local.get $l9)
                  (i32.const 4)))
              (br_if $B8
                (i32.eqz
                  (local.get $p3)))
              (br_if $B9
                (i32.eq
                  (local.get $l9)
                  (i32.const 8))))
            (block $B15
              (br_if $B15
                (i64.lt_s
                  (local.tee $l10
                    (i64.load offset=112
                      (local.get $p1)))
                  (i64.const 0)))
              (i32.store
                (local.get $l5)
                (i32.add
                  (i32.load
                    (local.get $l5))
                  (i32.const -1))))
            (br_if $B9
              (i32.eqz
                (local.get $p3)))
            (br_if $B9
              (i32.lt_u
                (local.get $l9)
                (i32.const 4)))
            (local.set $p1
              (i64.lt_s
                (local.get $l10)
                (i64.const 0)))
            (loop $L16
              (block $B17
                (br_if $B17
                  (local.get $p1))
                (i32.store
                  (local.get $l5)
                  (i32.add
                    (i32.load
                      (local.get $l5))
                    (i32.const -1))))
              (br_if $L16
                (i32.gt_u
                  (local.tee $l9
                    (i32.add
                      (local.get $l9)
                      (i32.const -1)))
                  (i32.const 3)))))
          (call $__extendsftf2
            (local.get $l4)
            (f32.mul
              (f32.convert_i32_s
                (local.get $l8))
              (f32.const inf (;=inf;))))
          (local.set $l11
            (i64.load
              (i32.add
                (local.get $l4)
                (i32.const 8))))
          (local.set $l10
            (i64.load
              (local.get $l4)))
          (br $B0))
        (block $B18
          (block $B19
            (block $B20
              (br_if $B20
                (local.get $l9))
              (local.set $l9
                (i32.const 0))
              (loop $L21
                (br_if $B20
                  (i32.ne
                    (i32.or
                      (local.get $p2)
                      (i32.const 32))
                    (i32.load8_s
                      (i32.add
                        (local.get $l9)
                        (i32.const 1065)))))
                (block $B22
                  (br_if $B22
                    (i32.gt_u
                      (local.get $l9)
                      (i32.const 1)))
                  (block $B23
                    (br_if $B23
                      (i32.eq
                        (local.tee $p2
                          (i32.load offset=4
                            (local.get $p1)))
                        (i32.load offset=104
                          (local.get $p1))))
                    (i32.store
                      (local.get $l5)
                      (i32.add
                        (local.get $p2)
                        (i32.const 1)))
                    (local.set $p2
                      (i32.load8_u
                        (local.get $p2)))
                    (br $B22))
                  (local.set $p2
                    (call $__shgetc
                      (local.get $p1))))
                (br_if $L21
                  (i32.ne
                    (local.tee $l9
                      (i32.add
                        (local.get $l9)
                        (i32.const 1)))
                    (i32.const 3)))
                (br $B19))
              (unreachable))
            (block $B24
              (block $B25
                (br_table $B25 $B24 $B24 $B19 $B24
                  (local.get $l9)))
              (block $B26
                (br_if $B26
                  (i32.ne
                    (local.get $p2)
                    (i32.const 48)))
                (block $B27
                  (block $B28
                    (br_if $B28
                      (i32.eq
                        (local.tee $l9
                          (i32.load offset=4
                            (local.get $p1)))
                        (i32.load offset=104
                          (local.get $p1))))
                    (i32.store
                      (local.get $l5)
                      (i32.add
                        (local.get $l9)
                        (i32.const 1)))
                    (local.set $l9
                      (i32.load8_u
                        (local.get $l9)))
                    (br $B27))
                  (local.set $l9
                    (call $__shgetc
                      (local.get $p1))))
                (block $B29
                  (br_if $B29
                    (i32.ne
                      (i32.and
                        (local.get $l9)
                        (i32.const -33))
                      (i32.const 88)))
                  (call $hexfloat
                    (i32.add
                      (local.get $l4)
                      (i32.const 16))
                    (local.get $p1)
                    (local.get $l7)
                    (local.get $l6)
                    (local.get $l8)
                    (local.get $p3))
                  (local.set $l11
                    (i64.load
                      (i32.add
                        (local.get $l4)
                        (i32.const 24))))
                  (local.set $l10
                    (i64.load offset=16
                      (local.get $l4)))
                  (br $B0))
                (br_if $B26
                  (i64.lt_s
                    (i64.load offset=112
                      (local.get $p1))
                    (i64.const 0)))
                (i32.store
                  (local.get $l5)
                  (i32.add
                    (i32.load
                      (local.get $l5))
                    (i32.const -1))))
              (call $decfloat
                (i32.add
                  (local.get $l4)
                  (i32.const 32))
                (local.get $p1)
                (local.get $p2)
                (local.get $l7)
                (local.get $l6)
                (local.get $l8)
                (local.get $p3))
              (local.set $l11
                (i64.load
                  (i32.add
                    (local.get $l4)
                    (i32.const 40))))
              (local.set $l10
                (i64.load offset=32
                  (local.get $l4)))
              (br $B0))
            (local.set $l10
              (i64.const 0))
            (block $B30
              (br_if $B30
                (i64.lt_s
                  (i64.load offset=112
                    (local.get $p1))
                  (i64.const 0)))
              (i32.store
                (local.get $l5)
                (i32.add
                  (i32.load
                    (local.get $l5))
                  (i32.const -1))))
            (i32.store
              (call $__errno_location)
              (i32.const 28))
            (br $B18))
          (block $B31
            (block $B32
              (br_if $B32
                (i32.eq
                  (local.tee $p2
                    (i32.load offset=4
                      (local.get $p1)))
                  (i32.load offset=104
                    (local.get $p1))))
              (i32.store
                (local.get $l5)
                (i32.add
                  (local.get $p2)
                  (i32.const 1)))
              (local.set $p2
                (i32.load8_u
                  (local.get $p2)))
              (br $B31))
            (local.set $p2
              (call $__shgetc
                (local.get $p1))))
          (block $B33
            (block $B34
              (br_if $B34
                (i32.ne
                  (local.get $p2)
                  (i32.const 40)))
              (local.set $l9
                (i32.const 1))
              (br $B33))
            (local.set $l10
              (i64.const 0))
            (local.set $l11
              (i64.const 9223231299366420480))
            (br_if $B0
              (i64.lt_s
                (i64.load offset=112
                  (local.get $p1))
                (i64.const 0)))
            (i32.store
              (local.get $l5)
              (i32.add
                (i32.load
                  (local.get $l5))
                (i32.const -1)))
            (br $B0))
          (loop $L35
            (block $B36
              (block $B37
                (br_if $B37
                  (i32.eq
                    (local.tee $p2
                      (i32.load offset=4
                        (local.get $p1)))
                    (i32.load offset=104
                      (local.get $p1))))
                (i32.store
                  (local.get $l5)
                  (i32.add
                    (local.get $p2)
                    (i32.const 1)))
                (local.set $p2
                  (i32.load8_u
                    (local.get $p2)))
                (br $B36))
              (local.set $p2
                (call $__shgetc
                  (local.get $p1))))
            (local.set $l8
              (i32.add
                (local.get $p2)
                (i32.const -65)))
            (block $B38
              (block $B39
                (br_if $B39
                  (i32.lt_u
                    (i32.add
                      (local.get $p2)
                      (i32.const -48))
                    (i32.const 10)))
                (br_if $B39
                  (i32.lt_u
                    (local.get $l8)
                    (i32.const 26)))
                (local.set $l8
                  (i32.add
                    (local.get $p2)
                    (i32.const -97)))
                (br_if $B39
                  (i32.eq
                    (local.get $p2)
                    (i32.const 95)))
                (br_if $B38
                  (i32.ge_u
                    (local.get $l8)
                    (i32.const 26))))
              (local.set $l9
                (i32.add
                  (local.get $l9)
                  (i32.const 1)))
              (br $L35)))
          (local.set $l11
            (i64.const 9223231299366420480))
          (br_if $B0
            (i32.eq
              (local.get $p2)
              (i32.const 41)))
          (block $B40
            (br_if $B40
              (i64.lt_s
                (local.tee $l12
                  (i64.load offset=112
                    (local.get $p1)))
                (i64.const 0)))
            (i32.store
              (local.get $l5)
              (i32.add
                (i32.load
                  (local.get $l5))
                (i32.const -1))))
          (block $B41
            (block $B42
              (br_if $B42
                (i32.eqz
                  (local.get $p3)))
              (br_if $B41
                (local.get $l9))
              (local.set $l10
                (i64.const 0))
              (br $B0))
            (i32.store
              (call $__errno_location)
              (i32.const 28))
            (local.set $l10
              (i64.const 0))
            (br $B18))
          (loop $L43
            (local.set $l9
              (i32.add
                (local.get $l9)
                (i32.const -1)))
            (block $B44
              (br_if $B44
                (i64.lt_s
                  (local.get $l12)
                  (i64.const 0)))
              (i32.store
                (local.get $l5)
                (i32.add
                  (i32.load
                    (local.get $l5))
                  (i32.const -1))))
            (local.set $l10
              (i64.const 0))
            (br_if $L43
              (local.get $l9))
            (br $B0))
          (unreachable))
        (call $__shlim
          (local.get $p1)
          (local.get $l10)))
      (local.set $l11
        (i64.const 0)))
    (i64.store
      (local.get $p0)
      (local.get $l10))
    (i64.store offset=8
      (local.get $p0)
      (local.get $l11))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 48))))
  (func $hexfloat (type $t19) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i64) (local $l15 i64) (local $l16 i64) (local $l17 i64) (local $l18 i64) (local $l19 i64) (local $l20 i64)
    (global.set $g0
      (local.tee $l6
        (i32.sub
          (global.get $g0)
          (i32.const 432))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eq
            (local.tee $l7
              (i32.load offset=4
                (local.get $p1)))
            (i32.load offset=104
              (local.get $p1))))
        (i32.store offset=4
          (local.get $p1)
          (i32.add
            (local.get $l7)
            (i32.const 1)))
        (local.set $l7
          (i32.load8_u
            (local.get $l7)))
        (br $B0))
      (local.set $l7
        (call $__shgetc
          (local.get $p1))))
    (local.set $l8
      (i32.const 0))
    (local.set $l14
      (i64.const 0))
    (local.set $l9
      (i32.const 0))
    (block $B2
      (block $B3
        (block $B4
          (loop $L5
            (block $B6
              (br_if $B6
                (i32.eq
                  (local.get $l7)
                  (i32.const 48)))
              (br_if $B2
                (i32.ne
                  (local.get $l7)
                  (i32.const 46)))
              (br_if $B4
                (i32.eq
                  (local.tee $l7
                    (i32.load offset=4
                      (local.get $p1)))
                  (i32.load offset=104
                    (local.get $p1))))
              (i32.store offset=4
                (local.get $p1)
                (i32.add
                  (local.get $l7)
                  (i32.const 1)))
              (local.set $l7
                (i32.load8_u
                  (local.get $l7)))
              (br $B3))
            (block $B7
              (br_if $B7
                (i32.eq
                  (local.tee $l7
                    (i32.load offset=4
                      (local.get $p1)))
                  (i32.load offset=104
                    (local.get $p1))))
              (local.set $l9
                (i32.const 1))
              (i32.store offset=4
                (local.get $p1)
                (i32.add
                  (local.get $l7)
                  (i32.const 1)))
              (local.set $l7
                (i32.load8_u
                  (local.get $l7)))
              (br $L5))
            (local.set $l9
              (i32.const 1))
            (local.set $l7
              (call $__shgetc
                (local.get $p1)))
            (br $L5))
          (unreachable))
        (local.set $l7
          (call $__shgetc
            (local.get $p1))))
      (local.set $l8
        (i32.const 1))
      (local.set $l14
        (i64.const 0))
      (br_if $B2
        (i32.ne
          (local.get $l7)
          (i32.const 48)))
      (loop $L8
        (block $B9
          (block $B10
            (br_if $B10
              (i32.eq
                (local.tee $l7
                  (i32.load offset=4
                    (local.get $p1)))
                (i32.load offset=104
                  (local.get $p1))))
            (i32.store offset=4
              (local.get $p1)
              (i32.add
                (local.get $l7)
                (i32.const 1)))
            (local.set $l7
              (i32.load8_u
                (local.get $l7)))
            (br $B9))
          (local.set $l7
            (call $__shgetc
              (local.get $p1))))
        (local.set $l14
          (i64.add
            (local.get $l14)
            (i64.const -1)))
        (br_if $L8
          (i32.eq
            (local.get $l7)
            (i32.const 48))))
      (local.set $l8
        (i32.const 1))
      (local.set $l9
        (i32.const 1)))
    (local.set $l15
      (i64.const 4611404543450677248))
    (local.set $l10
      (i32.const 0))
    (local.set $l16
      (i64.const 0))
    (local.set $l17
      (i64.const 0))
    (local.set $l18
      (i64.const 0))
    (local.set $l11
      (i32.const 0))
    (local.set $l19
      (i64.const 0))
    (block $B11
      (block $B12
        (loop $L13
          (local.set $l12
            (i32.or
              (local.get $l7)
              (i32.const 32)))
          (block $B14
            (block $B15
              (br_if $B15
                (i32.lt_u
                  (local.tee $l13
                    (i32.add
                      (local.get $l7)
                      (i32.const -48)))
                  (i32.const 10)))
              (block $B16
                (br_if $B16
                  (i32.lt_u
                    (i32.add
                      (local.get $l12)
                      (i32.const -97))
                    (i32.const 6)))
                (br_if $B11
                  (i32.ne
                    (local.get $l7)
                    (i32.const 46))))
              (br_if $B15
                (i32.ne
                  (local.get $l7)
                  (i32.const 46)))
              (br_if $B12
                (local.get $l8))
              (local.set $l8
                (i32.const 1))
              (local.set $l14
                (local.get $l19))
              (br $B14))
            (local.set $l7
              (select
                (i32.add
                  (local.get $l12)
                  (i32.const -87))
                (local.get $l13)
                (i32.gt_s
                  (local.get $l7)
                  (i32.const 57))))
            (block $B17
              (block $B18
                (br_if $B18
                  (i64.gt_s
                    (local.get $l19)
                    (i64.const 7)))
                (local.set $l10
                  (i32.add
                    (local.get $l7)
                    (i32.shl
                      (local.get $l10)
                      (i32.const 4))))
                (br $B17))
              (block $B19
                (br_if $B19
                  (i64.gt_u
                    (local.get $l19)
                    (i64.const 28)))
                (call $__floatsitf
                  (i32.add
                    (local.get $l6)
                    (i32.const 48))
                  (local.get $l7))
                (call $__multf3
                  (i32.add
                    (local.get $l6)
                    (i32.const 32))
                  (local.get $l18)
                  (local.get $l15)
                  (i64.const 0)
                  (i64.const 4610278643543834624))
                (call $__multf3
                  (i32.add
                    (local.get $l6)
                    (i32.const 16))
                  (i64.load offset=48
                    (local.get $l6))
                  (i64.load
                    (i32.add
                      (i32.add
                        (local.get $l6)
                        (i32.const 48))
                      (i32.const 8)))
                  (local.tee $l18
                    (i64.load offset=32
                      (local.get $l6)))
                  (local.tee $l15
                    (i64.load
                      (i32.add
                        (i32.add
                          (local.get $l6)
                          (i32.const 32))
                        (i32.const 8)))))
                (call $__addtf3
                  (local.get $l6)
                  (i64.load offset=16
                    (local.get $l6))
                  (i64.load
                    (i32.add
                      (i32.add
                        (local.get $l6)
                        (i32.const 16))
                      (i32.const 8)))
                  (local.get $l16)
                  (local.get $l17))
                (local.set $l17
                  (i64.load
                    (i32.add
                      (local.get $l6)
                      (i32.const 8))))
                (local.set $l16
                  (i64.load
                    (local.get $l6)))
                (br $B17))
              (br_if $B17
                (i32.eqz
                  (local.get $l7)))
              (br_if $B17
                (local.get $l11))
              (call $__multf3
                (i32.add
                  (local.get $l6)
                  (i32.const 80))
                (local.get $l18)
                (local.get $l15)
                (i64.const 0)
                (i64.const 4611123068473966592))
              (call $__addtf3
                (i32.add
                  (local.get $l6)
                  (i32.const 64))
                (i64.load offset=80
                  (local.get $l6))
                (i64.load
                  (i32.add
                    (i32.add
                      (local.get $l6)
                      (i32.const 80))
                    (i32.const 8)))
                (local.get $l16)
                (local.get $l17))
              (local.set $l17
                (i64.load
                  (i32.add
                    (i32.add
                      (local.get $l6)
                      (i32.const 64))
                    (i32.const 8))))
              (local.set $l11
                (i32.const 1))
              (local.set $l16
                (i64.load offset=64
                  (local.get $l6))))
            (local.set $l19
              (i64.add
                (local.get $l19)
                (i64.const 1)))
            (local.set $l9
              (i32.const 1)))
          (block $B20
            (br_if $B20
              (i32.eq
                (local.tee $l7
                  (i32.load offset=4
                    (local.get $p1)))
                (i32.load offset=104
                  (local.get $p1))))
            (i32.store offset=4
              (local.get $p1)
              (i32.add
                (local.get $l7)
                (i32.const 1)))
            (local.set $l7
              (i32.load8_u
                (local.get $l7)))
            (br $L13))
          (local.set $l7
            (call $__shgetc
              (local.get $p1)))
          (br $L13))
        (unreachable))
      (local.set $l7
        (i32.const 46)))
    (block $B21
      (block $B22
        (br_if $B22
          (local.get $l9))
        (block $B23
          (block $B24
            (block $B25
              (br_if $B25
                (i64.lt_s
                  (i64.load offset=112
                    (local.get $p1))
                  (i64.const 0)))
              (i32.store offset=4
                (local.get $p1)
                (i32.add
                  (local.tee $l7
                    (i32.load offset=4
                      (local.get $p1)))
                  (i32.const -1)))
              (br_if $B24
                (i32.eqz
                  (local.get $p5)))
              (i32.store offset=4
                (local.get $p1)
                (i32.add
                  (local.get $l7)
                  (i32.const -2)))
              (br_if $B23
                (i32.eqz
                  (local.get $l8)))
              (i32.store offset=4
                (local.get $p1)
                (i32.add
                  (local.get $l7)
                  (i32.const -3)))
              (br $B23))
            (br_if $B23
              (local.get $p5)))
          (call $__shlim
            (local.get $p1)
            (i64.const 0)))
        (call $__extenddftf2
          (i32.add
            (local.get $l6)
            (i32.const 96))
          (f64.mul
            (f64.convert_i32_s
              (local.get $p4))
            (f64.const 0x0p+0 (;=0;))))
        (local.set $l19
          (i64.load
            (i32.add
              (local.get $l6)
              (i32.const 104))))
        (local.set $l16
          (i64.load offset=96
            (local.get $l6)))
        (br $B21))
      (block $B26
        (br_if $B26
          (i64.gt_s
            (local.get $l19)
            (i64.const 7)))
        (local.set $l15
          (local.get $l19))
        (loop $L27
          (local.set $l10
            (i32.shl
              (local.get $l10)
              (i32.const 4)))
          (br_if $L27
            (i64.ne
              (local.tee $l15
                (i64.add
                  (local.get $l15)
                  (i64.const 1)))
              (i64.const 8)))))
      (block $B28
        (block $B29
          (block $B30
            (block $B31
              (br_if $B31
                (i32.ne
                  (i32.and
                    (local.get $l7)
                    (i32.const -33))
                  (i32.const 80)))
              (br_if $B28
                (i64.ne
                  (local.tee $l15
                    (call $scanexp
                      (local.get $p1)
                      (local.get $p5)))
                  (i64.const -9223372036854775808)))
              (block $B32
                (br_if $B32
                  (i32.eqz
                    (local.get $p5)))
                (br_if $B30
                  (i64.gt_s
                    (i64.load offset=112
                      (local.get $p1))
                    (i64.const -1)))
                (br $B29))
              (local.set $l16
                (i64.const 0))
              (call $__shlim
                (local.get $p1)
                (i64.const 0))
              (local.set $l19
                (i64.const 0))
              (br $B21))
            (local.set $l15
              (i64.const 0))
            (br_if $B28
              (i64.lt_s
                (i64.load offset=112
                  (local.get $p1))
                (i64.const 0))))
          (i32.store offset=4
            (local.get $p1)
            (i32.add
              (i32.load offset=4
                (local.get $p1))
              (i32.const -1))))
        (local.set $l15
          (i64.const 0)))
      (block $B33
        (br_if $B33
          (local.get $l10))
        (call $__extenddftf2
          (i32.add
            (local.get $l6)
            (i32.const 112))
          (f64.mul
            (f64.convert_i32_s
              (local.get $p4))
            (f64.const 0x0p+0 (;=0;))))
        (local.set $l19
          (i64.load
            (i32.add
              (local.get $l6)
              (i32.const 120))))
        (local.set $l16
          (i64.load offset=112
            (local.get $l6)))
        (br $B21))
      (block $B34
        (br_if $B34
          (i64.le_s
            (local.tee $l19
              (i64.add
                (i64.add
                  (i64.shl
                    (select
                      (local.get $l14)
                      (local.get $l19)
                      (local.get $l8))
                    (i64.const 2))
                  (local.get $l15))
                (i64.const -32)))
            (i64.extend_i32_u
              (i32.sub
                (i32.const 0)
                (local.get $p3)))))
        (i32.store
          (call $__errno_location)
          (i32.const 68))
        (call $__floatsitf
          (i32.add
            (local.get $l6)
            (i32.const 160))
          (local.get $p4))
        (call $__multf3
          (i32.add
            (local.get $l6)
            (i32.const 144))
          (i64.load offset=160
            (local.get $l6))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 160))
              (i32.const 8)))
          (i64.const -1)
          (i64.const 9223090561878065151))
        (call $__multf3
          (i32.add
            (local.get $l6)
            (i32.const 128))
          (i64.load offset=144
            (local.get $l6))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 144))
              (i32.const 8)))
          (i64.const -1)
          (i64.const 9223090561878065151))
        (local.set $l19
          (i64.load
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 128))
              (i32.const 8))))
        (local.set $l16
          (i64.load offset=128
            (local.get $l6)))
        (br $B21))
      (block $B35
        (br_if $B35
          (i64.lt_s
            (local.get $l19)
            (i64.extend_i32_s
              (i32.add
                (local.get $p3)
                (i32.const -226)))))
        (block $B36
          (br_if $B36
            (i32.le_s
              (local.get $l10)
              (i32.const -1)))
          (loop $L37
            (call $__addtf3
              (i32.add
                (local.get $l6)
                (i32.const 416))
              (local.get $l16)
              (local.get $l17)
              (i64.const 0)
              (i64.const -4611967493404098560))
            (local.set $l7
              (call $__getf2
                (local.get $l16)
                (local.get $l17)
                (i64.const 0)
                (i64.const 4611123068473966592)))
            (call $__addtf3
              (i32.add
                (local.get $l6)
                (i32.const 400))
              (local.get $l16)
              (local.get $l17)
              (select
                (local.get $l16)
                (i64.load offset=416
                  (local.get $l6))
                (local.tee $p1
                  (i32.lt_s
                    (local.get $l7)
                    (i32.const 0))))
              (select
                (local.get $l17)
                (i64.load
                  (i32.add
                    (i32.add
                      (local.get $l6)
                      (i32.const 416))
                    (i32.const 8)))
                (local.get $p1)))
            (local.set $l19
              (i64.add
                (local.get $l19)
                (i64.const -1)))
            (local.set $l17
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l6)
                    (i32.const 400))
                  (i32.const 8))))
            (local.set $l16
              (i64.load offset=400
                (local.get $l6)))
            (br_if $L37
              (i32.gt_s
                (local.tee $l10
                  (i32.or
                    (i32.shl
                      (local.get $l10)
                      (i32.const 1))
                    (i32.gt_s
                      (local.get $l7)
                      (i32.const -1))))
                (i32.const -1)))))
        (block $B38
          (block $B39
            (br_if $B39
              (i32.lt_s
                (local.tee $l7
                  (select
                    (select
                      (local.tee $l7
                        (i32.wrap_i64
                          (local.tee $l14
                            (i64.add
                              (i64.sub
                                (local.get $l19)
                                (i64.extend_i32_s
                                  (local.get $p3)))
                              (i64.const 32)))))
                      (i32.const 0)
                      (i32.gt_s
                        (local.get $l7)
                        (i32.const 0)))
                    (local.get $p2)
                    (i64.lt_s
                      (local.get $l14)
                      (i64.extend_i32_u
                        (local.get $p2)))))
                (i32.const 113)))
            (call $__floatsitf
              (i32.add
                (local.get $l6)
                (i32.const 384))
              (local.get $p4))
            (local.set $l14
              (i64.load
                (i32.add
                  (local.get $l6)
                  (i32.const 392))))
            (local.set $l15
              (i64.const 0))
            (local.set $l18
              (i64.load offset=384
                (local.get $l6)))
            (local.set $l20
              (i64.const 0))
            (br $B38))
          (call $__extenddftf2
            (i32.add
              (local.get $l6)
              (i32.const 352))
            (call $scalbn
              (f64.const 0x1p+0 (;=1;))
              (i32.sub
                (i32.const 144)
                (local.get $l7))))
          (call $__floatsitf
            (i32.add
              (local.get $l6)
              (i32.const 336))
            (local.get $p4))
          (call $copysignl
            (i32.add
              (local.get $l6)
              (i32.const 368))
            (i64.load offset=352
              (local.get $l6))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l6)
                  (i32.const 352))
                (i32.const 8)))
            (local.tee $l18
              (i64.load offset=336
                (local.get $l6)))
            (local.tee $l14
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l6)
                    (i32.const 336))
                  (i32.const 8)))))
          (local.set $l20
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l6)
                  (i32.const 368))
                (i32.const 8))))
          (local.set $l15
            (i64.load offset=368
              (local.get $l6))))
        (call $__floatunsitf
          (i32.add
            (local.get $l6)
            (i32.const 320))
          (i32.add
            (local.get $l10)
            (local.tee $l7
              (i32.and
                (i32.and
                  (i32.lt_s
                    (local.get $l7)
                    (i32.const 32))
                  (i32.ne
                    (call $__letf2
                      (local.get $l16)
                      (local.get $l17)
                      (i64.const 0)
                      (i64.const 0))
                    (i32.const 0)))
                (i32.eqz
                  (i32.and
                    (local.get $l10)
                    (i32.const 1)))))))
        (call $__multf3
          (i32.add
            (local.get $l6)
            (i32.const 304))
          (local.get $l18)
          (local.get $l14)
          (i64.load offset=320
            (local.get $l6))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 320))
              (i32.const 8))))
        (call $__addtf3
          (i32.add
            (local.get $l6)
            (i32.const 272))
          (i64.load offset=304
            (local.get $l6))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 304))
              (i32.const 8)))
          (local.get $l15)
          (local.get $l20))
        (call $__multf3
          (i32.add
            (local.get $l6)
            (i32.const 288))
          (local.get $l18)
          (local.get $l14)
          (select
            (i64.const 0)
            (local.get $l16)
            (local.get $l7))
          (select
            (i64.const 0)
            (local.get $l17)
            (local.get $l7)))
        (call $__addtf3
          (i32.add
            (local.get $l6)
            (i32.const 256))
          (i64.load offset=288
            (local.get $l6))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 288))
              (i32.const 8)))
          (i64.load offset=272
            (local.get $l6))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 272))
              (i32.const 8))))
        (call $__subtf3
          (i32.add
            (local.get $l6)
            (i32.const 240))
          (i64.load offset=256
            (local.get $l6))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 256))
              (i32.const 8)))
          (local.get $l15)
          (local.get $l20))
        (block $B40
          (br_if $B40
            (call $__letf2
              (local.tee $l16
                (i64.load offset=240
                  (local.get $l6)))
              (local.tee $l17
                (i64.load
                  (i32.add
                    (i32.add
                      (local.get $l6)
                      (i32.const 240))
                    (i32.const 8))))
              (i64.const 0)
              (i64.const 0)))
          (i32.store
            (call $__errno_location)
            (i32.const 68)))
        (call $scalbnl
          (i32.add
            (local.get $l6)
            (i32.const 224))
          (local.get $l16)
          (local.get $l17)
          (i32.wrap_i64
            (local.get $l19)))
        (local.set $l19
          (i64.load
            (i32.add
              (i32.add
                (local.get $l6)
                (i32.const 224))
              (i32.const 8))))
        (local.set $l16
          (i64.load offset=224
            (local.get $l6)))
        (br $B21))
      (i32.store
        (call $__errno_location)
        (i32.const 68))
      (call $__floatsitf
        (i32.add
          (local.get $l6)
          (i32.const 208))
        (local.get $p4))
      (call $__multf3
        (i32.add
          (local.get $l6)
          (i32.const 192))
        (i64.load offset=208
          (local.get $l6))
        (i64.load
          (i32.add
            (i32.add
              (local.get $l6)
              (i32.const 208))
            (i32.const 8)))
        (i64.const 0)
        (i64.const 281474976710656))
      (call $__multf3
        (i32.add
          (local.get $l6)
          (i32.const 176))
        (i64.load offset=192
          (local.get $l6))
        (i64.load
          (i32.add
            (i32.add
              (local.get $l6)
              (i32.const 192))
            (i32.const 8)))
        (i64.const 0)
        (i64.const 281474976710656))
      (local.set $l19
        (i64.load
          (i32.add
            (i32.add
              (local.get $l6)
              (i32.const 176))
            (i32.const 8))))
      (local.set $l16
        (i64.load offset=176
          (local.get $l6))))
    (i64.store
      (local.get $p0)
      (local.get $l16))
    (i64.store offset=8
      (local.get $p0)
      (local.get $l19))
    (global.set $g0
      (i32.add
        (local.get $l6)
        (i32.const 432))))
  (func $decfloat (type $t20) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32)
    (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i64) (local $l20 i64) (local $l21 i64) (local $l22 i64) (local $l23 i64) (local $l24 i64) (local $l25 f64)
    (global.set $g0
      (local.tee $l7
        (i32.sub
          (global.get $g0)
          (i32.const 8976))))
    (local.set $l8
      (i32.const 0))
    (local.set $l10
      (i32.sub
        (i32.const 0)
        (local.tee $l9
          (i32.add
            (local.get $p4)
            (local.get $p3)))))
    (local.set $l19
      (i64.const 0))
    (local.set $l11
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (loop $L3
            (block $B4
              (br_if $B4
                (i32.eq
                  (local.get $p2)
                  (i32.const 48)))
              (br_if $B0
                (i32.ne
                  (local.get $p2)
                  (i32.const 46)))
              (br_if $B2
                (i32.eq
                  (local.tee $p2
                    (i32.load offset=4
                      (local.get $p1)))
                  (i32.load offset=104
                    (local.get $p1))))
              (i32.store offset=4
                (local.get $p1)
                (i32.add
                  (local.get $p2)
                  (i32.const 1)))
              (local.set $p2
                (i32.load8_u
                  (local.get $p2)))
              (br $B1))
            (block $B5
              (br_if $B5
                (i32.eq
                  (local.tee $p2
                    (i32.load offset=4
                      (local.get $p1)))
                  (i32.load offset=104
                    (local.get $p1))))
              (local.set $l11
                (i32.const 1))
              (i32.store offset=4
                (local.get $p1)
                (i32.add
                  (local.get $p2)
                  (i32.const 1)))
              (local.set $p2
                (i32.load8_u
                  (local.get $p2)))
              (br $L3))
            (local.set $l11
              (i32.const 1))
            (local.set $p2
              (call $__shgetc
                (local.get $p1)))
            (br $L3))
          (unreachable))
        (local.set $p2
          (call $__shgetc
            (local.get $p1))))
      (local.set $l8
        (i32.const 1))
      (local.set $l19
        (i64.const 0))
      (br_if $B0
        (i32.ne
          (local.get $p2)
          (i32.const 48)))
      (loop $L6
        (block $B7
          (block $B8
            (br_if $B8
              (i32.eq
                (local.tee $p2
                  (i32.load offset=4
                    (local.get $p1)))
                (i32.load offset=104
                  (local.get $p1))))
            (i32.store offset=4
              (local.get $p1)
              (i32.add
                (local.get $p2)
                (i32.const 1)))
            (local.set $p2
              (i32.load8_u
                (local.get $p2)))
            (br $B7))
          (local.set $p2
            (call $__shgetc
              (local.get $p1))))
        (local.set $l19
          (i64.add
            (local.get $l19)
            (i64.const -1)))
        (br_if $L6
          (i32.eq
            (local.get $p2)
            (i32.const 48))))
      (local.set $l11
        (i32.const 1))
      (local.set $l8
        (i32.const 1)))
    (local.set $l12
      (i32.const 0))
    (i32.store offset=784
      (local.get $l7)
      (i32.const 0))
    (local.set $l13
      (i32.add
        (local.get $p2)
        (i32.const -48)))
    (local.set $l20
      (i64.const 0))
    (block $B9
      (block $B10
        (block $B11
          (block $B12
            (block $B13
              (block $B14
                (block $B15
                  (block $B16
                    (block $B17
                      (br_if $B17
                        (i32.eqz
                          (local.tee $l14
                            (i32.eq
                              (local.get $p2)
                              (i32.const 46)))))
                      (local.set $l15
                        (i32.const 0))
                      (local.set $l16
                        (i32.const 0))
                      (br $B16))
                    (local.set $l15
                      (i32.const 0))
                    (local.set $l16
                      (i32.const 0))
                    (br_if $B15
                      (i32.gt_u
                        (local.get $l13)
                        (i32.const 9))))
                  (loop $L18
                    (block $B19
                      (block $B20
                        (br_if $B20
                          (i32.eqz
                            (i32.and
                              (local.get $l14)
                              (i32.const 1))))
                        (block $B21
                          (br_if $B21
                            (local.get $l8))
                          (local.set $l19
                            (local.get $l20))
                          (local.set $l8
                            (i32.const 1))
                          (br $B19))
                        (local.set $l14
                          (i32.eqz
                            (local.get $l11)))
                        (br $B14))
                      (local.set $l20
                        (i64.add
                          (local.get $l20)
                          (i64.const 1)))
                      (block $B22
                        (br_if $B22
                          (i32.gt_s
                            (local.get $l15)
                            (i32.const 2044)))
                        (local.set $l11
                          (i32.eq
                            (local.get $p2)
                            (i32.const 48)))
                        (local.set $l17
                          (i32.wrap_i64
                            (local.get $l20)))
                        (local.set $l14
                          (i32.add
                            (i32.add
                              (local.get $l7)
                              (i32.const 784))
                            (i32.shl
                              (local.get $l15)
                              (i32.const 2))))
                        (block $B23
                          (br_if $B23
                            (i32.eqz
                              (local.get $l12)))
                          (local.set $l13
                            (i32.add
                              (i32.add
                                (local.get $p2)
                                (i32.mul
                                  (i32.load
                                    (local.get $l14))
                                  (i32.const 10)))
                              (i32.const -48))))
                        (local.set $l16
                          (select
                            (local.get $l16)
                            (local.get $l17)
                            (local.get $l11)))
                        (i32.store
                          (local.get $l14)
                          (local.get $l13))
                        (local.set $l11
                          (i32.const 1))
                        (local.set $l12
                          (select
                            (i32.const 0)
                            (local.tee $p2
                              (i32.add
                                (local.get $l12)
                                (i32.const 1)))
                            (local.tee $p2
                              (i32.eq
                                (local.get $p2)
                                (i32.const 9)))))
                        (local.set $l15
                          (i32.add
                            (local.get $l15)
                            (local.get $p2)))
                        (br $B19))
                      (br_if $B19
                        (i32.eq
                          (local.get $p2)
                          (i32.const 48)))
                      (i32.store offset=8960
                        (local.get $l7)
                        (i32.or
                          (i32.load offset=8960
                            (local.get $l7))
                          (i32.const 1)))
                      (local.set $l16
                        (i32.const 18396)))
                    (block $B24
                      (block $B25
                        (br_if $B25
                          (i32.eq
                            (local.tee $p2
                              (i32.load offset=4
                                (local.get $p1)))
                            (i32.load offset=104
                              (local.get $p1))))
                        (i32.store offset=4
                          (local.get $p1)
                          (i32.add
                            (local.get $p2)
                            (i32.const 1)))
                        (local.set $p2
                          (i32.load8_u
                            (local.get $p2)))
                        (br $B24))
                      (local.set $p2
                        (call $__shgetc
                          (local.get $p1))))
                    (local.set $l13
                      (i32.add
                        (local.get $p2)
                        (i32.const -48)))
                    (br_if $L18
                      (local.tee $l14
                        (i32.eq
                          (local.get $p2)
                          (i32.const 46))))
                    (br_if $L18
                      (i32.lt_u
                        (local.get $l13)
                        (i32.const 10)))))
                (local.set $l19
                  (select
                    (local.get $l19)
                    (local.get $l20)
                    (local.get $l8)))
                (block $B26
                  (br_if $B26
                    (i32.eqz
                      (local.get $l11)))
                  (br_if $B26
                    (i32.ne
                      (i32.and
                        (local.get $p2)
                        (i32.const -33))
                      (i32.const 69)))
                  (block $B27
                    (br_if $B27
                      (i64.ne
                        (local.tee $l21
                          (call $scanexp
                            (local.get $p1)
                            (local.get $p6)))
                        (i64.const -9223372036854775808)))
                    (br_if $B11
                      (i32.eqz
                        (local.get $p6)))
                    (local.set $l21
                      (i64.const 0))
                    (br_if $B27
                      (i64.lt_s
                        (i64.load offset=112
                          (local.get $p1))
                        (i64.const 0)))
                    (i32.store offset=4
                      (local.get $p1)
                      (i32.add
                        (i32.load offset=4
                          (local.get $p1))
                        (i32.const -1))))
                  (br_if $B12
                    (i32.eqz
                      (local.get $l11)))
                  (local.set $l19
                    (i64.add
                      (local.get $l21)
                      (local.get $l19)))
                  (br $B10))
                (local.set $l14
                  (i32.eqz
                    (local.get $l11)))
                (br_if $B13
                  (i32.lt_s
                    (local.get $p2)
                    (i32.const 0))))
              (br_if $B13
                (i64.lt_s
                  (i64.load offset=112
                    (local.get $p1))
                  (i64.const 0)))
              (i32.store offset=4
                (local.get $p1)
                (i32.add
                  (i32.load offset=4
                    (local.get $p1))
                  (i32.const -1))))
            (br_if $B10
              (i32.eqz
                (local.get $l14))))
          (i32.store
            (call $__errno_location)
            (i32.const 28)))
        (local.set $l20
          (i64.const 0))
        (call $__shlim
          (local.get $p1)
          (i64.const 0))
        (local.set $l19
          (i64.const 0))
        (br $B9))
      (block $B28
        (br_if $B28
          (local.tee $p1
            (i32.load offset=784
              (local.get $l7))))
        (call $__extenddftf2
          (local.get $l7)
          (f64.mul
            (f64.convert_i32_s
              (local.get $p5))
            (f64.const 0x0p+0 (;=0;))))
        (local.set $l19
          (i64.load
            (i32.add
              (local.get $l7)
              (i32.const 8))))
        (local.set $l20
          (i64.load
            (local.get $l7)))
        (br $B9))
      (block $B29
        (br_if $B29
          (i64.gt_s
            (local.get $l20)
            (i64.const 9)))
        (br_if $B29
          (i64.ne
            (local.get $l19)
            (local.get $l20)))
        (block $B30
          (br_if $B30
            (i32.gt_s
              (local.get $p3)
              (i32.const 30)))
          (br_if $B29
            (i32.shr_u
              (local.get $p1)
              (local.get $p3))))
        (call $__floatsitf
          (i32.add
            (local.get $l7)
            (i32.const 48))
          (local.get $p5))
        (call $__floatunsitf
          (i32.add
            (local.get $l7)
            (i32.const 32))
          (local.get $p1))
        (call $__multf3
          (i32.add
            (local.get $l7)
            (i32.const 16))
          (i64.load offset=48
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 48))
              (i32.const 8)))
          (i64.load offset=32
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 32))
              (i32.const 8))))
        (local.set $l19
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 16))
              (i32.const 8))))
        (local.set $l20
          (i64.load offset=16
            (local.get $l7)))
        (br $B9))
      (block $B31
        (br_if $B31
          (i64.le_s
            (local.get $l19)
            (i64.extend_i32_u
              (i32.div_s
                (local.get $p4)
                (i32.const -2)))))
        (i32.store
          (call $__errno_location)
          (i32.const 68))
        (call $__floatsitf
          (i32.add
            (local.get $l7)
            (i32.const 96))
          (local.get $p5))
        (call $__multf3
          (i32.add
            (local.get $l7)
            (i32.const 80))
          (i64.load offset=96
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 96))
              (i32.const 8)))
          (i64.const -1)
          (i64.const 9223090561878065151))
        (call $__multf3
          (i32.add
            (local.get $l7)
            (i32.const 64))
          (i64.load offset=80
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 80))
              (i32.const 8)))
          (i64.const -1)
          (i64.const 9223090561878065151))
        (local.set $l19
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 64))
              (i32.const 8))))
        (local.set $l20
          (i64.load offset=64
            (local.get $l7)))
        (br $B9))
      (block $B32
        (br_if $B32
          (i64.ge_s
            (local.get $l19)
            (i64.extend_i32_s
              (i32.add
                (local.get $p4)
                (i32.const -226)))))
        (i32.store
          (call $__errno_location)
          (i32.const 68))
        (call $__floatsitf
          (i32.add
            (local.get $l7)
            (i32.const 144))
          (local.get $p5))
        (call $__multf3
          (i32.add
            (local.get $l7)
            (i32.const 128))
          (i64.load offset=144
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 144))
              (i32.const 8)))
          (i64.const 0)
          (i64.const 281474976710656))
        (call $__multf3
          (i32.add
            (local.get $l7)
            (i32.const 112))
          (i64.load offset=128
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 128))
              (i32.const 8)))
          (i64.const 0)
          (i64.const 281474976710656))
        (local.set $l19
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 112))
              (i32.const 8))))
        (local.set $l20
          (i64.load offset=112
            (local.get $l7)))
        (br $B9))
      (block $B33
        (br_if $B33
          (i32.eqz
            (local.get $l12)))
        (block $B34
          (br_if $B34
            (i32.gt_s
              (local.get $l12)
              (i32.const 8)))
          (local.set $p1
            (i32.load
              (local.tee $p2
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 784))
                  (i32.shl
                    (local.get $l15)
                    (i32.const 2))))))
          (loop $L35
            (local.set $p1
              (i32.mul
                (local.get $p1)
                (i32.const 10)))
            (br_if $L35
              (i32.ne
                (local.tee $l12
                  (i32.add
                    (local.get $l12)
                    (i32.const 1)))
                (i32.const 9))))
          (i32.store
            (local.get $p2)
            (local.get $p1)))
        (local.set $l15
          (i32.add
            (local.get $l15)
            (i32.const 1))))
      (local.set $l8
        (i32.wrap_i64
          (local.get $l19)))
      (block $B36
        (br_if $B36
          (i32.ge_s
            (local.get $l16)
            (i32.const 9)))
        (br_if $B36
          (i32.gt_s
            (local.get $l16)
            (local.get $l8)))
        (br_if $B36
          (i32.gt_s
            (local.get $l8)
            (i32.const 17)))
        (block $B37
          (br_if $B37
            (i32.ne
              (local.get $l8)
              (i32.const 9)))
          (call $__floatsitf
            (i32.add
              (local.get $l7)
              (i32.const 192))
            (local.get $p5))
          (call $__floatunsitf
            (i32.add
              (local.get $l7)
              (i32.const 176))
            (i32.load offset=784
              (local.get $l7)))
          (call $__multf3
            (i32.add
              (local.get $l7)
              (i32.const 160))
            (i64.load offset=192
              (local.get $l7))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 192))
                (i32.const 8)))
            (i64.load offset=176
              (local.get $l7))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 176))
                (i32.const 8))))
          (local.set $l19
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 160))
                (i32.const 8))))
          (local.set $l20
            (i64.load offset=160
              (local.get $l7)))
          (br $B9))
        (block $B38
          (br_if $B38
            (i32.gt_s
              (local.get $l8)
              (i32.const 8)))
          (call $__floatsitf
            (i32.add
              (local.get $l7)
              (i32.const 272))
            (local.get $p5))
          (call $__floatunsitf
            (i32.add
              (local.get $l7)
              (i32.const 256))
            (i32.load offset=784
              (local.get $l7)))
          (call $__multf3
            (i32.add
              (local.get $l7)
              (i32.const 240))
            (i64.load offset=272
              (local.get $l7))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 272))
                (i32.const 8)))
            (i64.load offset=256
              (local.get $l7))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 256))
                (i32.const 8))))
          (call $__floatsitf
            (i32.add
              (local.get $l7)
              (i32.const 224))
            (i32.load
              (i32.add
                (i32.shl
                  (i32.sub
                    (i32.const 8)
                    (local.get $l8))
                  (i32.const 2))
                (i32.const 1120))))
          (call $__divtf3
            (i32.add
              (local.get $l7)
              (i32.const 208))
            (i64.load offset=240
              (local.get $l7))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 240))
                (i32.const 8)))
            (i64.load offset=224
              (local.get $l7))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 224))
                (i32.const 8))))
          (local.set $l19
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 208))
                (i32.const 8))))
          (local.set $l20
            (i64.load offset=208
              (local.get $l7)))
          (br $B9))
        (local.set $p1
          (i32.load offset=784
            (local.get $l7)))
        (block $B39
          (br_if $B39
            (i32.gt_s
              (local.tee $p2
                (i32.add
                  (i32.add
                    (local.get $p3)
                    (i32.mul
                      (local.get $l8)
                      (i32.const -3)))
                  (i32.const 27)))
              (i32.const 30)))
          (br_if $B36
            (i32.shr_u
              (local.get $p1)
              (local.get $p2))))
        (call $__floatsitf
          (i32.add
            (local.get $l7)
            (i32.const 352))
          (local.get $p5))
        (call $__floatunsitf
          (i32.add
            (local.get $l7)
            (i32.const 336))
          (local.get $p1))
        (call $__multf3
          (i32.add
            (local.get $l7)
            (i32.const 320))
          (i64.load offset=352
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 352))
              (i32.const 8)))
          (i64.load offset=336
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 336))
              (i32.const 8))))
        (call $__floatsitf
          (i32.add
            (local.get $l7)
            (i32.const 304))
          (i32.load
            (i32.add
              (i32.shl
                (local.get $l8)
                (i32.const 2))
              (i32.const 1080))))
        (call $__multf3
          (i32.add
            (local.get $l7)
            (i32.const 288))
          (i64.load offset=320
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 320))
              (i32.const 8)))
          (i64.load offset=304
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 304))
              (i32.const 8))))
        (local.set $l19
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 288))
              (i32.const 8))))
        (local.set $l20
          (i64.load offset=288
            (local.get $l7)))
        (br $B9))
      (loop $L40
        (br_if $L40
          (i32.eqz
            (i32.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 784))
                (i32.shl
                  (local.tee $l15
                    (i32.add
                      (local.tee $p2
                        (local.get $l15))
                      (i32.const -1)))
                  (i32.const 2)))))))
      (local.set $l12
        (i32.const 0))
      (block $B41
        (block $B42
          (br_if $B42
            (local.tee $p1
              (i32.rem_s
                (local.get $l8)
                (i32.const 9))))
          (local.set $l14
            (i32.const 0))
          (br $B41))
        (local.set $p6
          (select
            (local.get $p1)
            (i32.add
              (local.get $p1)
              (i32.const 9))
            (i32.gt_s
              (local.get $l8)
              (i32.const -1))))
        (block $B43
          (block $B44
            (br_if $B44
              (local.get $p2))
            (local.set $l14
              (i32.const 0))
            (local.set $p2
              (i32.const 0))
            (br $B43))
          (local.set $l17
            (i32.div_s
              (i32.const 1000000000)
              (local.tee $l11
                (i32.load
                  (i32.add
                    (i32.shl
                      (i32.sub
                        (i32.const 8)
                        (local.get $p6))
                      (i32.const 2))
                    (i32.const 1120))))))
          (local.set $l13
            (i32.const 0))
          (local.set $p1
            (i32.const 0))
          (local.set $l14
            (i32.const 0))
          (loop $L45
            (i32.store
              (local.tee $l15
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 784))
                  (i32.shl
                    (local.get $p1)
                    (i32.const 2))))
              (local.tee $l13
                (i32.add
                  (local.tee $l16
                    (i32.div_u
                      (local.tee $l15
                        (i32.load
                          (local.get $l15)))
                      (local.get $l11)))
                  (local.get $l13))))
            (local.set $l14
              (select
                (i32.and
                  (i32.add
                    (local.get $l14)
                    (i32.const 1))
                  (i32.const 2047))
                (local.get $l14)
                (local.tee $l13
                  (i32.and
                    (i32.eq
                      (local.get $p1)
                      (local.get $l14))
                    (i32.eqz
                      (local.get $l13))))))
            (local.set $l8
              (select
                (i32.add
                  (local.get $l8)
                  (i32.const -9))
                (local.get $l8)
                (local.get $l13)))
            (local.set $l13
              (i32.mul
                (local.get $l17)
                (i32.sub
                  (local.get $l15)
                  (i32.mul
                    (local.get $l16)
                    (local.get $l11)))))
            (br_if $L45
              (i32.ne
                (local.tee $p1
                  (i32.add
                    (local.get $p1)
                    (i32.const 1)))
                (local.get $p2))))
          (br_if $B43
            (i32.eqz
              (local.get $l13)))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 784))
              (i32.shl
                (local.get $p2)
                (i32.const 2)))
            (local.get $l13))
          (local.set $p2
            (i32.add
              (local.get $p2)
              (i32.const 1))))
        (local.set $l8
          (i32.add
            (i32.sub
              (local.get $l8)
              (local.get $p6))
            (i32.const 9))))
      (loop $L46
        (local.set $l16
          (i32.add
            (i32.add
              (local.get $l7)
              (i32.const 784))
            (i32.shl
              (local.get $l14)
              (i32.const 2))))
        (block $B47
          (loop $L48
            (block $B49
              (br_if $B49
                (i32.lt_s
                  (local.get $l8)
                  (i32.const 36)))
              (br_if $B47
                (i32.ne
                  (local.get $l8)
                  (i32.const 36)))
              (br_if $B47
                (i32.ge_u
                  (i32.load
                    (local.get $l16))
                  (i32.const 10384593))))
            (local.set $l11
              (i32.add
                (local.get $p2)
                (i32.const 2047)))
            (local.set $l13
              (i32.const 0))
            (loop $L50
              (block $B51
                (block $B52
                  (br_if $B52
                    (i64.ge_u
                      (local.tee $l19
                        (i64.add
                          (i64.shl
                            (i64.load32_u
                              (local.tee $l11
                                (i32.add
                                  (i32.add
                                    (local.get $l7)
                                    (i32.const 784))
                                  (i32.shl
                                    (local.tee $p1
                                      (i32.and
                                        (local.get $l11)
                                        (i32.const 2047)))
                                    (i32.const 2)))))
                            (i64.const 29))
                          (i64.extend_i32_u
                            (local.get $l13))))
                      (i64.const 1000000001)))
                  (local.set $l13
                    (i32.const 0))
                  (br $B51))
                (local.set $l19
                  (i64.sub
                    (local.get $l19)
                    (i64.mul
                      (local.tee $l20
                        (i64.div_u
                          (local.get $l19)
                          (i64.const 1000000000)))
                      (i64.const 1000000000))))
                (local.set $l13
                  (i32.wrap_i64
                    (local.get $l20))))
              (i32.store
                (local.get $l11)
                (local.tee $l15
                  (i32.wrap_i64
                    (local.get $l19))))
              (local.set $p2
                (select
                  (local.get $p2)
                  (select
                    (local.get $p2)
                    (select
                      (local.get $p2)
                      (local.get $p1)
                      (local.get $l15))
                    (i32.eq
                      (local.get $p1)
                      (local.get $l14)))
                  (i32.ne
                    (local.get $p1)
                    (i32.and
                      (i32.add
                        (local.get $p2)
                        (i32.const -1))
                      (i32.const 2047)))))
              (local.set $l11
                (i32.add
                  (local.get $p1)
                  (i32.const -1)))
              (br_if $L50
                (i32.ne
                  (local.get $p1)
                  (local.get $l14))))
            (local.set $l12
              (i32.add
                (local.get $l12)
                (i32.const -29)))
            (br_if $L48
              (i32.eqz
                (local.get $l13))))
          (block $B53
            (br_if $B53
              (i32.ne
                (local.tee $l14
                  (i32.and
                    (i32.add
                      (local.get $l14)
                      (i32.const -1))
                    (i32.const 2047)))
                (local.get $p2)))
            (i32.store
              (local.tee $p1
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 784))
                  (i32.shl
                    (i32.and
                      (i32.add
                        (local.get $p2)
                        (i32.const 2046))
                      (i32.const 2047))
                    (i32.const 2))))
              (i32.or
                (i32.load
                  (local.get $p1))
                (i32.load
                  (i32.add
                    (i32.add
                      (local.get $l7)
                      (i32.const 784))
                    (i32.shl
                      (local.tee $p1
                        (i32.and
                          (i32.add
                            (local.get $p2)
                            (i32.const -1))
                          (i32.const 2047)))
                      (i32.const 2))))))
            (local.set $p2
              (local.get $p1)))
          (local.set $l8
            (i32.add
              (local.get $l8)
              (i32.const 9)))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 784))
              (i32.shl
                (local.get $l14)
                (i32.const 2)))
            (local.get $l13))
          (br $L46)))
      (block $B54
        (loop $L55
          (local.set $p6
            (i32.and
              (i32.add
                (local.get $p2)
                (i32.const 1))
              (i32.const 2047)))
          (local.set $l18
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 784))
              (i32.shl
                (i32.and
                  (i32.add
                    (local.get $p2)
                    (i32.const -1))
                  (i32.const 2047))
                (i32.const 2))))
          (loop $L56
            (local.set $l15
              (select
                (i32.const 9)
                (i32.const 1)
                (i32.gt_s
                  (local.get $l8)
                  (i32.const 45))))
            (block $B57
              (loop $L58
                (local.set $l11
                  (local.get $l14))
                (local.set $p1
                  (i32.const 0))
                (block $B59
                  (block $B60
                    (loop $L61
                      (br_if $B60
                        (i32.eq
                          (local.tee $l14
                            (i32.and
                              (i32.add
                                (local.get $p1)
                                (local.get $l11))
                              (i32.const 2047)))
                          (local.get $p2)))
                      (br_if $B60
                        (i32.lt_u
                          (local.tee $l14
                            (i32.load
                              (i32.add
                                (i32.add
                                  (local.get $l7)
                                  (i32.const 784))
                                (i32.shl
                                  (local.get $l14)
                                  (i32.const 2)))))
                          (local.tee $l13
                            (i32.load
                              (i32.add
                                (i32.shl
                                  (local.get $p1)
                                  (i32.const 2))
                                (i32.const 1104))))))
                      (br_if $B59
                        (i32.gt_u
                          (local.get $l14)
                          (local.get $l13)))
                      (br_if $L61
                        (i32.ne
                          (local.tee $p1
                            (i32.add
                              (local.get $p1)
                              (i32.const 1)))
                          (i32.const 4)))))
                  (br_if $B59
                    (i32.ne
                      (local.get $l8)
                      (i32.const 36)))
                  (local.set $l19
                    (i64.const 0))
                  (local.set $p1
                    (i32.const 0))
                  (local.set $l20
                    (i64.const 0))
                  (loop $L62
                    (block $B63
                      (br_if $B63
                        (i32.ne
                          (local.tee $l14
                            (i32.and
                              (i32.add
                                (local.get $p1)
                                (local.get $l11))
                              (i32.const 2047)))
                          (local.get $p2)))
                      (i32.store
                        (i32.add
                          (i32.add
                            (i32.shl
                              (local.tee $p2
                                (i32.and
                                  (i32.add
                                    (local.get $p2)
                                    (i32.const 1))
                                  (i32.const 2047)))
                              (i32.const 2))
                            (i32.add
                              (local.get $l7)
                              (i32.const 784)))
                          (i32.const -4))
                        (i32.const 0)))
                    (call $__floatunsitf
                      (i32.add
                        (local.get $l7)
                        (i32.const 768))
                      (i32.load
                        (i32.add
                          (i32.add
                            (local.get $l7)
                            (i32.const 784))
                          (i32.shl
                            (local.get $l14)
                            (i32.const 2)))))
                    (call $__multf3
                      (i32.add
                        (local.get $l7)
                        (i32.const 752))
                      (local.get $l19)
                      (local.get $l20)
                      (i64.const 0)
                      (i64.const 4619810130798575616))
                    (call $__addtf3
                      (i32.add
                        (local.get $l7)
                        (i32.const 736))
                      (i64.load offset=752
                        (local.get $l7))
                      (i64.load
                        (i32.add
                          (i32.add
                            (local.get $l7)
                            (i32.const 752))
                          (i32.const 8)))
                      (i64.load offset=768
                        (local.get $l7))
                      (i64.load
                        (i32.add
                          (i32.add
                            (local.get $l7)
                            (i32.const 768))
                          (i32.const 8))))
                    (local.set $l20
                      (i64.load
                        (i32.add
                          (i32.add
                            (local.get $l7)
                            (i32.const 736))
                          (i32.const 8))))
                    (local.set $l19
                      (i64.load offset=736
                        (local.get $l7)))
                    (br_if $L62
                      (i32.ne
                        (local.tee $p1
                          (i32.add
                            (local.get $p1)
                            (i32.const 1)))
                        (i32.const 4))))
                  (call $__floatsitf
                    (i32.add
                      (local.get $l7)
                      (i32.const 720))
                    (local.get $p5))
                  (call $__multf3
                    (i32.add
                      (local.get $l7)
                      (i32.const 704))
                    (local.get $l19)
                    (local.get $l20)
                    (i64.load offset=720
                      (local.get $l7))
                    (i64.load
                      (i32.add
                        (i32.add
                          (local.get $l7)
                          (i32.const 720))
                        (i32.const 8))))
                  (local.set $l20
                    (i64.load
                      (i32.add
                        (i32.add
                          (local.get $l7)
                          (i32.const 704))
                        (i32.const 8))))
                  (local.set $l19
                    (i64.const 0))
                  (local.set $l21
                    (i64.load offset=704
                      (local.get $l7)))
                  (br_if $B57
                    (i32.le_s
                      (local.tee $l14
                        (select
                          (select
                            (local.tee $p1
                              (i32.sub
                                (local.tee $l13
                                  (i32.add
                                    (local.get $l12)
                                    (i32.const 113)))
                                (local.get $p4)))
                            (i32.const 0)
                            (i32.gt_s
                              (local.get $p1)
                              (i32.const 0)))
                          (local.get $p3)
                          (local.tee $l8
                            (i32.lt_s
                              (local.get $p1)
                              (local.get $p3)))))
                      (i32.const 112)))
                  (local.set $l22
                    (i64.const 0))
                  (local.set $l23
                    (i64.const 0))
                  (local.set $l24
                    (i64.const 0))
                  (br $B54))
                (local.set $l12
                  (i32.add
                    (local.get $l15)
                    (local.get $l12)))
                (local.set $l14
                  (local.get $p2))
                (br_if $L58
                  (i32.eq
                    (local.get $l11)
                    (local.get $p2))))
              (local.set $l16
                (i32.shr_u
                  (i32.const 1000000000)
                  (local.get $l15)))
              (local.set $l17
                (i32.xor
                  (i32.shl
                    (i32.const -1)
                    (local.get $l15))
                  (i32.const -1)))
              (local.set $p1
                (i32.const 0))
              (local.set $l14
                (local.get $l11))
              (loop $L64
                (i32.store
                  (local.tee $l13
                    (i32.add
                      (i32.add
                        (local.get $l7)
                        (i32.const 784))
                      (i32.shl
                        (local.get $l11)
                        (i32.const 2))))
                  (local.tee $p1
                    (i32.add
                      (i32.shr_u
                        (local.tee $l13
                          (i32.load
                            (local.get $l13)))
                        (local.get $l15))
                      (local.get $p1))))
                (local.set $l14
                  (select
                    (i32.and
                      (i32.add
                        (local.get $l14)
                        (i32.const 1))
                      (i32.const 2047))
                    (local.get $l14)
                    (local.tee $p1
                      (i32.and
                        (i32.eq
                          (local.get $l11)
                          (local.get $l14))
                        (i32.eqz
                          (local.get $p1))))))
                (local.set $l8
                  (select
                    (i32.add
                      (local.get $l8)
                      (i32.const -9))
                    (local.get $l8)
                    (local.get $p1)))
                (local.set $p1
                  (i32.mul
                    (i32.and
                      (local.get $l13)
                      (local.get $l17))
                    (local.get $l16)))
                (br_if $L64
                  (i32.ne
                    (local.tee $l11
                      (i32.and
                        (i32.add
                          (local.get $l11)
                          (i32.const 1))
                        (i32.const 2047)))
                    (local.get $p2))))
              (br_if $L56
                (i32.eqz
                  (local.get $p1)))
              (block $B65
                (br_if $B65
                  (i32.eq
                    (local.get $p6)
                    (local.get $l14)))
                (i32.store
                  (i32.add
                    (i32.add
                      (local.get $l7)
                      (i32.const 784))
                    (i32.shl
                      (local.get $p2)
                      (i32.const 2)))
                  (local.get $p1))
                (local.set $p2
                  (local.get $p6))
                (br $L55))
              (i32.store
                (local.get $l18)
                (i32.or
                  (i32.load
                    (local.get $l18))
                  (i32.const 1)))
              (local.set $l14
                (local.get $p6))
              (br $L56))))
        (call $__extenddftf2
          (i32.add
            (local.get $l7)
            (i32.const 656))
          (call $scalbn
            (f64.const 0x1p+0 (;=1;))
            (i32.sub
              (i32.const 225)
              (local.get $l14))))
        (call $copysignl
          (i32.add
            (local.get $l7)
            (i32.const 688))
          (i64.load offset=656
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 656))
              (i32.const 8)))
          (local.get $l21)
          (local.get $l20))
        (local.set $l24
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 688))
              (i32.const 8))))
        (local.set $l23
          (i64.load offset=688
            (local.get $l7)))
        (call $__extenddftf2
          (i32.add
            (local.get $l7)
            (i32.const 640))
          (call $scalbn
            (f64.const 0x1p+0 (;=1;))
            (i32.sub
              (i32.const 113)
              (local.get $l14))))
        (call $fmodl
          (i32.add
            (local.get $l7)
            (i32.const 672))
          (local.get $l21)
          (local.get $l20)
          (i64.load offset=640
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 640))
              (i32.const 8))))
        (call $__subtf3
          (i32.add
            (local.get $l7)
            (i32.const 624))
          (local.get $l21)
          (local.get $l20)
          (local.tee $l19
            (i64.load offset=672
              (local.get $l7)))
          (local.tee $l22
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 672))
                (i32.const 8)))))
        (call $__addtf3
          (i32.add
            (local.get $l7)
            (i32.const 608))
          (local.get $l23)
          (local.get $l24)
          (i64.load offset=624
            (local.get $l7))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 624))
              (i32.const 8))))
        (local.set $l20
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 608))
              (i32.const 8))))
        (local.set $l21
          (i64.load offset=608
            (local.get $l7))))
      (block $B66
        (br_if $B66
          (i32.eq
            (local.tee $l15
              (i32.and
                (i32.add
                  (local.get $l11)
                  (i32.const 4))
                (i32.const 2047)))
            (local.get $p2)))
        (block $B67
          (block $B68
            (br_if $B68
              (i32.gt_u
                (local.tee $l15
                  (i32.load
                    (i32.add
                      (i32.add
                        (local.get $l7)
                        (i32.const 784))
                      (i32.shl
                        (local.get $l15)
                        (i32.const 2)))))
                (i32.const 499999999)))
            (block $B69
              (br_if $B69
                (local.get $l15))
              (br_if $B67
                (i32.eq
                  (i32.and
                    (i32.add
                      (local.get $l11)
                      (i32.const 5))
                    (i32.const 2047))
                  (local.get $p2))))
            (call $__extenddftf2
              (i32.add
                (local.get $l7)
                (i32.const 496))
              (f64.mul
                (f64.convert_i32_s
                  (local.get $p5))
                (f64.const 0x1p-2 (;=0.25;))))
            (call $__addtf3
              (i32.add
                (local.get $l7)
                (i32.const 480))
              (local.get $l19)
              (local.get $l22)
              (i64.load offset=496
                (local.get $l7))
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 496))
                  (i32.const 8))))
            (local.set $l22
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 480))
                  (i32.const 8))))
            (local.set $l19
              (i64.load offset=480
                (local.get $l7)))
            (br $B67))
          (block $B70
            (br_if $B70
              (i32.eq
                (local.get $l15)
                (i32.const 500000000)))
            (call $__extenddftf2
              (i32.add
                (local.get $l7)
                (i32.const 592))
              (f64.mul
                (f64.convert_i32_s
                  (local.get $p5))
                (f64.const 0x1.8p-1 (;=0.75;))))
            (call $__addtf3
              (i32.add
                (local.get $l7)
                (i32.const 576))
              (local.get $l19)
              (local.get $l22)
              (i64.load offset=592
                (local.get $l7))
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 592))
                  (i32.const 8))))
            (local.set $l22
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 576))
                  (i32.const 8))))
            (local.set $l19
              (i64.load offset=576
                (local.get $l7)))
            (br $B67))
          (local.set $l25
            (f64.convert_i32_s
              (local.get $p5)))
          (block $B71
            (br_if $B71
              (i32.ne
                (i32.and
                  (i32.add
                    (local.get $l11)
                    (i32.const 5))
                  (i32.const 2047))
                (local.get $p2)))
            (call $__extenddftf2
              (i32.add
                (local.get $l7)
                (i32.const 528))
              (f64.mul
                (local.get $l25)
                (f64.const 0x1p-1 (;=0.5;))))
            (call $__addtf3
              (i32.add
                (local.get $l7)
                (i32.const 512))
              (local.get $l19)
              (local.get $l22)
              (i64.load offset=528
                (local.get $l7))
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 528))
                  (i32.const 8))))
            (local.set $l22
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 512))
                  (i32.const 8))))
            (local.set $l19
              (i64.load offset=512
                (local.get $l7)))
            (br $B67))
          (call $__extenddftf2
            (i32.add
              (local.get $l7)
              (i32.const 560))
            (f64.mul
              (local.get $l25)
              (f64.const 0x1.8p-1 (;=0.75;))))
          (call $__addtf3
            (i32.add
              (local.get $l7)
              (i32.const 544))
            (local.get $l19)
            (local.get $l22)
            (i64.load offset=560
              (local.get $l7))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 560))
                (i32.const 8))))
          (local.set $l22
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 544))
                (i32.const 8))))
          (local.set $l19
            (i64.load offset=544
              (local.get $l7))))
        (br_if $B66
          (i32.gt_s
            (local.get $l14)
            (i32.const 111)))
        (call $fmodl
          (i32.add
            (local.get $l7)
            (i32.const 464))
          (local.get $l19)
          (local.get $l22)
          (i64.const 0)
          (i64.const 4611404543450677248))
        (br_if $B66
          (call $__letf2
            (i64.load offset=464
              (local.get $l7))
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 464))
                (i32.const 8)))
            (i64.const 0)
            (i64.const 0)))
        (call $__addtf3
          (i32.add
            (local.get $l7)
            (i32.const 448))
          (local.get $l19)
          (local.get $l22)
          (i64.const 0)
          (i64.const 4611404543450677248))
        (local.set $l22
          (i64.load
            (i32.add
              (i32.add
                (local.get $l7)
                (i32.const 448))
              (i32.const 8))))
        (local.set $l19
          (i64.load offset=448
            (local.get $l7))))
      (call $__addtf3
        (i32.add
          (local.get $l7)
          (i32.const 432))
        (local.get $l21)
        (local.get $l20)
        (local.get $l19)
        (local.get $l22))
      (call $__subtf3
        (i32.add
          (local.get $l7)
          (i32.const 416))
        (i64.load offset=432
          (local.get $l7))
        (i64.load
          (i32.add
            (i32.add
              (local.get $l7)
              (i32.const 432))
            (i32.const 8)))
        (local.get $l23)
        (local.get $l24))
      (local.set $l20
        (i64.load
          (i32.add
            (i32.add
              (local.get $l7)
              (i32.const 416))
            (i32.const 8))))
      (local.set $l21
        (i64.load offset=416
          (local.get $l7)))
      (block $B72
        (br_if $B72
          (i32.le_s
            (i32.and
              (local.get $l13)
              (i32.const 2147483647))
            (i32.sub
              (i32.const -2)
              (local.get $l9))))
        (call $fabsl
          (i32.add
            (local.get $l7)
            (i32.const 400))
          (local.get $l21)
          (local.get $l20))
        (call $__multf3
          (i32.add
            (local.get $l7)
            (i32.const 384))
          (local.get $l21)
          (local.get $l20)
          (i64.const 0)
          (i64.const 4611123068473966592))
        (local.set $p2
          (call $__getf2
            (local.tee $l23
              (i64.load offset=400
                (local.get $l7)))
            (local.tee $l24
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l7)
                    (i32.const 400))
                  (i32.const 8))))
            (i64.const 0)
            (i64.const 4643211215818981376)))
        (local.set $l20
          (select
            (local.get $l20)
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l7)
                  (i32.const 384))
                (i32.const 8)))
            (local.tee $l13
              (i32.lt_s
                (local.get $p2)
                (i32.const 0)))))
        (local.set $l21
          (select
            (local.get $l21)
            (i64.load offset=384
              (local.get $l7))
            (local.get $l13)))
        (block $B73
          (br_if $B73
            (i32.gt_s
              (i32.add
                (local.tee $l12
                  (i32.add
                    (local.get $l12)
                    (i32.gt_s
                      (local.get $p2)
                      (i32.const -1))))
                (i32.const 110))
              (local.get $l10)))
          (br_if $B72
            (i32.ne
              (select
                (local.get $l8)
                (i32.and
                  (local.get $l8)
                  (i32.ne
                    (local.get $l14)
                    (local.get $p1)))
                (i32.lt_s
                  (call $__getf2
                    (local.get $l23)
                    (local.get $l24)
                    (i64.const 0)
                    (i64.const 4643211215818981376))
                  (i32.const 0)))
              (i32.const 1)))
          (br_if $B72
            (i32.eqz
              (call $__letf2
                (local.get $l19)
                (local.get $l22)
                (i64.const 0)
                (i64.const 0)))))
        (i32.store
          (call $__errno_location)
          (i32.const 68)))
      (call $scalbnl
        (i32.add
          (local.get $l7)
          (i32.const 368))
        (local.get $l21)
        (local.get $l20)
        (local.get $l12))
      (local.set $l19
        (i64.load
          (i32.add
            (i32.add
              (local.get $l7)
              (i32.const 368))
            (i32.const 8))))
      (local.set $l20
        (i64.load offset=368
          (local.get $l7))))
    (i64.store offset=8
      (local.get $p0)
      (local.get $l19))
    (i64.store
      (local.get $p0)
      (local.get $l20))
    (global.set $g0
      (i32.add
        (local.get $l7)
        (i32.const 8976))))
  (func $scanexp (type $t21) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eq
            (local.tee $l2
              (i32.load offset=4
                (local.get $p0)))
            (i32.load offset=104
              (local.get $p0))))
        (i32.store offset=4
          (local.get $p0)
          (i32.add
            (local.get $l2)
            (i32.const 1)))
        (local.set $l3
          (i32.load8_u
            (local.get $l2)))
        (br $B0))
      (local.set $l3
        (call $__shgetc
          (local.get $p0))))
    (block $B2
      (block $B3
        (block $B4
          (block $B5
            (block $B6
              (br_table $B6 $B5 $B6 $B5
                (i32.add
                  (local.get $l3)
                  (i32.const -43))))
            (block $B7
              (block $B8
                (br_if $B8
                  (i32.eq
                    (local.tee $l2
                      (i32.load offset=4
                        (local.get $p0)))
                    (i32.load offset=104
                      (local.get $p0))))
                (i32.store offset=4
                  (local.get $p0)
                  (i32.add
                    (local.get $l2)
                    (i32.const 1)))
                (local.set $l2
                  (i32.load8_u
                    (local.get $l2)))
                (br $B7))
              (local.set $l2
                (call $__shgetc
                  (local.get $p0))))
            (local.set $l4
              (i32.eq
                (local.get $l3)
                (i32.const 45)))
            (br_if $B4
              (i32.gt_u
                (local.tee $l5
                  (i32.add
                    (local.get $l2)
                    (i32.const -58)))
                (i32.const -11)))
            (br_if $B4
              (i32.eqz
                (local.get $p1)))
            (br_if $B3
              (i64.lt_s
                (i64.load offset=112
                  (local.get $p0))
                (i64.const 0)))
            (i32.store offset=4
              (local.get $p0)
              (i32.add
                (i32.load offset=4
                  (local.get $p0))
                (i32.const -1)))
            (br $B3))
          (local.set $l5
            (i32.add
              (local.get $l3)
              (i32.const -58)))
          (local.set $l4
            (i32.const 0))
          (local.set $l2
            (local.get $l3)))
        (br_if $B3
          (i32.lt_u
            (local.get $l5)
            (i32.const -10)))
        (local.set $l6
          (i64.const 0))
        (block $B9
          (br_if $B9
            (i32.ge_u
              (local.tee $p1
                (i32.add
                  (local.get $l2)
                  (i32.const -48)))
              (i32.const 10)))
          (local.set $l3
            (i32.const 0))
          (loop $L10
            (local.set $l3
              (i32.add
                (local.get $l2)
                (i32.mul
                  (local.get $l3)
                  (i32.const 10))))
            (block $B11
              (block $B12
                (br_if $B12
                  (i32.eq
                    (local.tee $l2
                      (i32.load offset=4
                        (local.get $p0)))
                    (i32.load offset=104
                      (local.get $p0))))
                (i32.store offset=4
                  (local.get $p0)
                  (i32.add
                    (local.get $l2)
                    (i32.const 1)))
                (local.set $l2
                  (i32.load8_u
                    (local.get $l2)))
                (br $B11))
              (local.set $l2
                (call $__shgetc
                  (local.get $p0))))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const -48)))
            (block $B13
              (br_if $B13
                (i32.gt_u
                  (local.tee $p1
                    (i32.add
                      (local.get $l2)
                      (i32.const -48)))
                  (i32.const 9)))
              (br_if $L10
                (i32.lt_s
                  (local.get $l3)
                  (i32.const 214748364)))))
          (local.set $l6
            (i64.extend_i32_s
              (local.get $l3))))
        (block $B14
          (br_if $B14
            (i32.ge_u
              (local.get $p1)
              (i32.const 10)))
          (loop $L15
            (local.set $l6
              (i64.add
                (i64.extend_i32_u
                  (local.get $l2))
                (i64.mul
                  (local.get $l6)
                  (i64.const 10))))
            (block $B16
              (block $B17
                (br_if $B17
                  (i32.eq
                    (local.tee $l2
                      (i32.load offset=4
                        (local.get $p0)))
                    (i32.load offset=104
                      (local.get $p0))))
                (i32.store offset=4
                  (local.get $p0)
                  (i32.add
                    (local.get $l2)
                    (i32.const 1)))
                (local.set $l2
                  (i32.load8_u
                    (local.get $l2)))
                (br $B16))
              (local.set $l2
                (call $__shgetc
                  (local.get $p0))))
            (local.set $l6
              (i64.add
                (local.get $l6)
                (i64.const -48)))
            (br_if $B14
              (i32.gt_u
                (local.tee $p1
                  (i32.add
                    (local.get $l2)
                    (i32.const -48)))
                (i32.const 9)))
            (br_if $L15
              (i64.lt_s
                (local.get $l6)
                (i64.const 92233720368547758)))))
        (block $B18
          (br_if $B18
            (i32.ge_u
              (local.get $p1)
              (i32.const 10)))
          (loop $L19
            (block $B20
              (block $B21
                (br_if $B21
                  (i32.eq
                    (local.tee $l2
                      (i32.load offset=4
                        (local.get $p0)))
                    (i32.load offset=104
                      (local.get $p0))))
                (i32.store offset=4
                  (local.get $p0)
                  (i32.add
                    (local.get $l2)
                    (i32.const 1)))
                (local.set $l2
                  (i32.load8_u
                    (local.get $l2)))
                (br $B20))
              (local.set $l2
                (call $__shgetc
                  (local.get $p0))))
            (br_if $L19
              (i32.lt_u
                (i32.add
                  (local.get $l2)
                  (i32.const -48))
                (i32.const 10)))))
        (block $B22
          (br_if $B22
            (i64.lt_s
              (i64.load offset=112
                (local.get $p0))
              (i64.const 0)))
          (i32.store offset=4
            (local.get $p0)
            (i32.add
              (i32.load offset=4
                (local.get $p0))
              (i32.const -1))))
        (local.set $l6
          (select
            (i64.sub
              (i64.const 0)
              (local.get $l6))
            (local.get $l6)
            (local.get $l4)))
        (br $B2))
      (local.set $l6
        (i64.const -9223372036854775808))
      (br_if $B2
        (i64.lt_s
          (i64.load offset=112
            (local.get $p0))
          (i64.const 0)))
      (i32.store offset=4
        (local.get $p0)
        (i32.add
          (i32.load offset=4
            (local.get $p0))
          (i32.const -1)))
      (return
        (i64.const -9223372036854775808)))
    (local.get $l6))
  (func $__intscan (type $t22) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i64) (result i64)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i64) (local $l10 i64) (local $l11 i64) (local $l12 i64)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.gt_u
              (local.get $p1)
              (i32.const 36)))
          (br_if $B1
            (i32.ne
              (local.get $p1)
              (i32.const 1))))
        (i32.store
          (call $__errno_location)
          (i32.const 28))
        (local.set $p3
          (i64.const 0))
        (br $B0))
      (loop $L3
        (block $B4
          (block $B5
            (br_if $B5
              (i32.eq
                (local.tee $l5
                  (i32.load offset=4
                    (local.get $p0)))
                (i32.load offset=104
                  (local.get $p0))))
            (i32.store offset=4
              (local.get $p0)
              (i32.add
                (local.get $l5)
                (i32.const 1)))
            (local.set $l5
              (i32.load8_u
                (local.get $l5)))
            (br $B4))
          (local.set $l5
            (call $__shgetc
              (local.get $p0))))
        (br_if $L3
          (call $isspace
            (local.get $l5))))
      (local.set $l6
        (i32.const 0))
      (block $B6
        (block $B7
          (br_table $B7 $B6 $B7 $B6
            (i32.add
              (local.get $l5)
              (i32.const -43))))
        (local.set $l6
          (select
            (i32.const -1)
            (i32.const 0)
            (i32.eq
              (local.get $l5)
              (i32.const 45))))
        (block $B8
          (br_if $B8
            (i32.eq
              (local.tee $l5
                (i32.load offset=4
                  (local.get $p0)))
              (i32.load offset=104
                (local.get $p0))))
          (i32.store offset=4
            (local.get $p0)
            (i32.add
              (local.get $l5)
              (i32.const 1)))
          (local.set $l5
            (i32.load8_u
              (local.get $l5)))
          (br $B6))
        (local.set $l5
          (call $__shgetc
            (local.get $p0))))
      (block $B9
        (block $B10
          (block $B11
            (block $B12
              (block $B13
                (br_if $B13
                  (i32.and
                    (local.get $p1)
                    (i32.const -17)))
                (br_if $B13
                  (i32.ne
                    (local.get $l5)
                    (i32.const 48)))
                (block $B14
                  (block $B15
                    (br_if $B15
                      (i32.eq
                        (local.tee $l5
                          (i32.load offset=4
                            (local.get $p0)))
                        (i32.load offset=104
                          (local.get $p0))))
                    (i32.store offset=4
                      (local.get $p0)
                      (i32.add
                        (local.get $l5)
                        (i32.const 1)))
                    (local.set $l5
                      (i32.load8_u
                        (local.get $l5)))
                    (br $B14))
                  (local.set $l5
                    (call $__shgetc
                      (local.get $p0))))
                (block $B16
                  (br_if $B16
                    (i32.ne
                      (i32.and
                        (local.get $l5)
                        (i32.const -33))
                      (i32.const 88)))
                  (block $B17
                    (block $B18
                      (br_if $B18
                        (i32.eq
                          (local.tee $l5
                            (i32.load offset=4
                              (local.get $p0)))
                          (i32.load offset=104
                            (local.get $p0))))
                      (i32.store offset=4
                        (local.get $p0)
                        (i32.add
                          (local.get $l5)
                          (i32.const 1)))
                      (local.set $l5
                        (i32.load8_u
                          (local.get $l5)))
                      (br $B17))
                    (local.set $l5
                      (call $__shgetc
                        (local.get $p0))))
                  (local.set $p1
                    (i32.const 16))
                  (br_if $B11
                    (i32.lt_u
                      (i32.load8_u
                        (i32.add
                          (local.get $l5)
                          (i32.const 1185)))
                      (i32.const 16)))
                  (local.set $p3
                    (i64.const 0))
                  (block $B19
                    (block $B20
                      (br_if $B20
                        (i64.lt_s
                          (i64.load offset=112
                            (local.get $p0))
                          (i64.const 0)))
                      (i32.store offset=4
                        (local.get $p0)
                        (i32.add
                          (local.tee $l5
                            (i32.load offset=4
                              (local.get $p0)))
                          (i32.const -1)))
                      (br_if $B19
                        (i32.eqz
                          (local.get $p2)))
                      (i32.store offset=4
                        (local.get $p0)
                        (i32.add
                          (local.get $l5)
                          (i32.const -2)))
                      (br $B0))
                    (br_if $B0
                      (local.get $p2)))
                  (local.set $p3
                    (i64.const 0))
                  (call $__shlim
                    (local.get $p0)
                    (i64.const 0))
                  (br $B0))
                (br_if $B12
                  (local.get $p1))
                (local.set $p1
                  (i32.const 8))
                (br $B11))
              (br_if $B12
                (i32.gt_u
                  (local.tee $p1
                    (select
                      (local.get $p1)
                      (i32.const 10)
                      (local.get $p1)))
                  (i32.load8_u
                    (i32.add
                      (local.get $l5)
                      (i32.const 1185)))))
              (local.set $p3
                (i64.const 0))
              (block $B21
                (br_if $B21
                  (i64.lt_s
                    (i64.load offset=112
                      (local.get $p0))
                    (i64.const 0)))
                (i32.store offset=4
                  (local.get $p0)
                  (i32.add
                    (i32.load offset=4
                      (local.get $p0))
                    (i32.const -1))))
              (call $__shlim
                (local.get $p0)
                (i64.const 0))
              (i32.store
                (call $__errno_location)
                (i32.const 28))
              (br $B0))
            (br_if $B11
              (i32.ne
                (local.get $p1)
                (i32.const 10)))
            (local.set $l9
              (i64.const 0))
            (block $B22
              (br_if $B22
                (i32.gt_u
                  (local.tee $p2
                    (i32.add
                      (local.get $l5)
                      (i32.const -48)))
                  (i32.const 9)))
              (local.set $p1
                (i32.const 0))
              (loop $L23
                (local.set $p1
                  (i32.mul
                    (local.get $p1)
                    (i32.const 10)))
                (block $B24
                  (block $B25
                    (br_if $B25
                      (i32.eq
                        (local.tee $l5
                          (i32.load offset=4
                            (local.get $p0)))
                        (i32.load offset=104
                          (local.get $p0))))
                    (i32.store offset=4
                      (local.get $p0)
                      (i32.add
                        (local.get $l5)
                        (i32.const 1)))
                    (local.set $l5
                      (i32.load8_u
                        (local.get $l5)))
                    (br $B24))
                  (local.set $l5
                    (call $__shgetc
                      (local.get $p0))))
                (local.set $p1
                  (i32.add
                    (local.get $p1)
                    (local.get $p2)))
                (block $B26
                  (br_if $B26
                    (i32.gt_u
                      (local.tee $p2
                        (i32.add
                          (local.get $l5)
                          (i32.const -48)))
                      (i32.const 9)))
                  (br_if $L23
                    (i32.lt_u
                      (local.get $p1)
                      (i32.const 429496729)))))
              (local.set $l9
                (i64.extend_i32_u
                  (local.get $p1))))
            (block $B27
              (br_if $B27
                (i32.gt_u
                  (local.get $p2)
                  (i32.const 9)))
              (local.set $l10
                (i64.mul
                  (local.get $l9)
                  (i64.const 10)))
              (local.set $l11
                (i64.extend_i32_u
                  (local.get $p2)))
              (loop $L28
                (block $B29
                  (block $B30
                    (br_if $B30
                      (i32.eq
                        (local.tee $l5
                          (i32.load offset=4
                            (local.get $p0)))
                        (i32.load offset=104
                          (local.get $p0))))
                    (i32.store offset=4
                      (local.get $p0)
                      (i32.add
                        (local.get $l5)
                        (i32.const 1)))
                    (local.set $l5
                      (i32.load8_u
                        (local.get $l5)))
                    (br $B29))
                  (local.set $l5
                    (call $__shgetc
                      (local.get $p0))))
                (local.set $l9
                  (i64.add
                    (local.get $l10)
                    (local.get $l11)))
                (br_if $B27
                  (i32.gt_u
                    (local.tee $p2
                      (i32.add
                        (local.get $l5)
                        (i32.const -48)))
                    (i32.const 9)))
                (br_if $B27
                  (i64.ge_u
                    (local.get $l9)
                    (i64.const 1844674407370955162)))
                (br_if $L28
                  (i64.le_u
                    (local.tee $l10
                      (i64.mul
                        (local.get $l9)
                        (i64.const 10)))
                    (i64.xor
                      (local.tee $l11
                        (i64.extend_i32_u
                          (local.get $p2)))
                      (i64.const -1)))))
              (local.set $p1
                (i32.const 10))
              (br $B10))
            (local.set $p1
              (i32.const 10))
            (br_if $B10
              (i32.le_u
                (local.get $p2)
                (i32.const 9)))
            (br $B9))
          (block $B31
            (br_if $B31
              (i32.eqz
                (i32.and
                  (local.get $p1)
                  (i32.add
                    (local.get $p1)
                    (i32.const -1)))))
            (local.set $l9
              (i64.const 0))
            (block $B32
              (br_if $B32
                (i32.le_u
                  (local.get $p1)
                  (local.tee $l7
                    (i32.load8_u
                      (i32.add
                        (local.get $l5)
                        (i32.const 1185))))))
              (local.set $p2
                (i32.const 0))
              (loop $L33
                (local.set $p2
                  (i32.mul
                    (local.get $p2)
                    (local.get $p1)))
                (block $B34
                  (block $B35
                    (br_if $B35
                      (i32.eq
                        (local.tee $l5
                          (i32.load offset=4
                            (local.get $p0)))
                        (i32.load offset=104
                          (local.get $p0))))
                    (i32.store offset=4
                      (local.get $p0)
                      (i32.add
                        (local.get $l5)
                        (i32.const 1)))
                    (local.set $l5
                      (i32.load8_u
                        (local.get $l5)))
                    (br $B34))
                  (local.set $l5
                    (call $__shgetc
                      (local.get $p0))))
                (local.set $p2
                  (i32.add
                    (local.get $l7)
                    (local.get $p2)))
                (block $B36
                  (br_if $B36
                    (i32.le_u
                      (local.get $p1)
                      (local.tee $l7
                        (i32.load8_u
                          (i32.add
                            (local.get $l5)
                            (i32.const 1185))))))
                  (br_if $L33
                    (i32.lt_u
                      (local.get $p2)
                      (i32.const 119304647)))))
              (local.set $l9
                (i64.extend_i32_u
                  (local.get $p2))))
            (br_if $B10
              (i32.le_u
                (local.get $p1)
                (local.get $l7)))
            (local.set $l10
              (i64.extend_i32_u
                (local.get $p1)))
            (loop $L37
              (br_if $B10
                (i64.gt_u
                  (local.tee $l11
                    (i64.mul
                      (local.get $l9)
                      (local.get $l10)))
                  (i64.xor
                    (local.tee $l12
                      (i64.and
                        (i64.extend_i32_u
                          (local.get $l7))
                        (i64.const 255)))
                    (i64.const -1))))
              (block $B38
                (block $B39
                  (br_if $B39
                    (i32.eq
                      (local.tee $l5
                        (i32.load offset=4
                          (local.get $p0)))
                      (i32.load offset=104
                        (local.get $p0))))
                  (i32.store offset=4
                    (local.get $p0)
                    (i32.add
                      (local.get $l5)
                      (i32.const 1)))
                  (local.set $l5
                    (i32.load8_u
                      (local.get $l5)))
                  (br $B38))
                (local.set $l5
                  (call $__shgetc
                    (local.get $p0))))
              (local.set $l9
                (i64.add
                  (local.get $l11)
                  (local.get $l12)))
              (br_if $B10
                (i32.le_u
                  (local.get $p1)
                  (local.tee $l7
                    (i32.load8_u
                      (i32.add
                        (local.get $l5)
                        (i32.const 1185))))))
              (call $__multi3
                (local.get $l4)
                (local.get $l10)
                (i64.const 0)
                (local.get $l9)
                (i64.const 0))
              (br_if $B10
                (i64.ne
                  (i64.load offset=8
                    (local.get $l4))
                  (i64.const 0)))
              (br $L37))
            (unreachable))
          (local.set $l8
            (i32.load8_s
              (i32.add
                (i32.and
                  (i32.shr_u
                    (i32.mul
                      (local.get $p1)
                      (i32.const 23))
                    (i32.const 5))
                  (i32.const 7))
                (i32.const 1441))))
          (local.set $l9
            (i64.const 0))
          (block $B40
            (br_if $B40
              (i32.le_u
                (local.get $p1)
                (local.tee $p2
                  (i32.load8_u
                    (i32.add
                      (local.get $l5)
                      (i32.const 1185))))))
            (local.set $l7
              (i32.const 0))
            (loop $L41
              (local.set $l7
                (i32.shl
                  (local.get $l7)
                  (local.get $l8)))
              (block $B42
                (block $B43
                  (br_if $B43
                    (i32.eq
                      (local.tee $l5
                        (i32.load offset=4
                          (local.get $p0)))
                      (i32.load offset=104
                        (local.get $p0))))
                  (i32.store offset=4
                    (local.get $p0)
                    (i32.add
                      (local.get $l5)
                      (i32.const 1)))
                  (local.set $l5
                    (i32.load8_u
                      (local.get $l5)))
                  (br $B42))
                (local.set $l5
                  (call $__shgetc
                    (local.get $p0))))
              (local.set $l7
                (i32.or
                  (local.get $p2)
                  (local.get $l7)))
              (block $B44
                (br_if $B44
                  (i32.le_u
                    (local.get $p1)
                    (local.tee $p2
                      (i32.load8_u
                        (i32.add
                          (local.get $l5)
                          (i32.const 1185))))))
                (br_if $L41
                  (i32.lt_u
                    (local.get $l7)
                    (i32.const 134217728)))))
            (local.set $l9
              (i64.extend_i32_u
                (local.get $l7))))
          (br_if $B10
            (i32.le_u
              (local.get $p1)
              (local.get $p2)))
          (br_if $B10
            (i64.lt_u
              (local.tee $l12
                (i64.shr_u
                  (i64.const -1)
                  (local.tee $l11
                    (i64.extend_i32_u
                      (local.get $l8)))))
              (local.get $l9)))
          (loop $L45
            (local.set $l9
              (i64.shl
                (local.get $l9)
                (local.get $l11)))
            (local.set $l10
              (i64.and
                (i64.extend_i32_u
                  (local.get $p2))
                (i64.const 255)))
            (block $B46
              (block $B47
                (br_if $B47
                  (i32.eq
                    (local.tee $l5
                      (i32.load offset=4
                        (local.get $p0)))
                    (i32.load offset=104
                      (local.get $p0))))
                (i32.store offset=4
                  (local.get $p0)
                  (i32.add
                    (local.get $l5)
                    (i32.const 1)))
                (local.set $l5
                  (i32.load8_u
                    (local.get $l5)))
                (br $B46))
              (local.set $l5
                (call $__shgetc
                  (local.get $p0))))
            (local.set $l9
              (i64.or
                (local.get $l9)
                (local.get $l10)))
            (br_if $B10
              (i32.le_u
                (local.get $p1)
                (local.tee $p2
                  (i32.load8_u
                    (i32.add
                      (local.get $l5)
                      (i32.const 1185))))))
            (br_if $L45
              (i64.le_u
                (local.get $l9)
                (local.get $l12)))))
        (br_if $B9
          (i32.le_u
            (local.get $p1)
            (i32.load8_u
              (i32.add
                (local.get $l5)
                (i32.const 1185)))))
        (loop $L48
          (block $B49
            (block $B50
              (br_if $B50
                (i32.eq
                  (local.tee $l5
                    (i32.load offset=4
                      (local.get $p0)))
                  (i32.load offset=104
                    (local.get $p0))))
              (i32.store offset=4
                (local.get $p0)
                (i32.add
                  (local.get $l5)
                  (i32.const 1)))
              (local.set $l5
                (i32.load8_u
                  (local.get $l5)))
              (br $B49))
            (local.set $l5
              (call $__shgetc
                (local.get $p0))))
          (br_if $L48
            (i32.gt_u
              (local.get $p1)
              (i32.load8_u
                (i32.add
                  (local.get $l5)
                  (i32.const 1185))))))
        (i32.store
          (call $__errno_location)
          (i32.const 68))
        (local.set $l6
          (select
            (local.get $l6)
            (i32.const 0)
            (i64.eqz
              (i64.and
                (local.get $p3)
                (i64.const 1)))))
        (local.set $l9
          (local.get $p3)))
      (block $B51
        (br_if $B51
          (i64.lt_s
            (i64.load offset=112
              (local.get $p0))
            (i64.const 0)))
        (i32.store offset=4
          (local.get $p0)
          (i32.add
            (i32.load offset=4
              (local.get $p0))
            (i32.const -1))))
      (block $B52
        (br_if $B52
          (i64.lt_u
            (local.get $l9)
            (local.get $p3)))
        (block $B53
          (br_if $B53
            (i32.and
              (i32.wrap_i64
                (local.get $p3))
              (i32.const 1)))
          (br_if $B53
            (local.get $l6))
          (i32.store
            (call $__errno_location)
            (i32.const 68))
          (local.set $p3
            (i64.add
              (local.get $p3)
              (i64.const -1)))
          (br $B0))
        (br_if $B52
          (i64.le_u
            (local.get $l9)
            (local.get $p3)))
        (i32.store
          (call $__errno_location)
          (i32.const 68))
        (br $B0))
      (local.set $p3
        (i64.sub
          (i64.xor
            (local.get $l9)
            (local.tee $p3
              (i64.extend_i32_s
                (local.get $l6))))
          (local.get $p3))))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 16)))
    (local.get $p3))
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
  (func $__syscall_getpid (type $t2) (result i32)
    (i32.const 42))
  (func $getpid (type $t2) (result i32)
    (call $__syscall_getpid))
  (func $__get_tp (type $t2) (result i32)
    (i32.const 3716))
  (func $init_pthread_self (type $t4)
    (i32.store offset=3804
      (i32.const 0)
      (i32.const 3684))
    (i32.store offset=3732
      (i32.const 0)
      (call $getpid)))
  (func $mbrtowc (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $p3
      (i32.load
        (local.tee $l5
          (select
            (local.get $p3)
            (i32.const 3828)
            (local.get $p3)))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (local.get $p1))
            (br_if $B2
              (local.get $p3))
            (local.set $l6
              (i32.const 0))
            (br $B0))
          (local.set $l6
            (i32.const -2))
          (br_if $B0
            (i32.eqz
              (local.get $p2)))
          (local.set $l7
            (select
              (local.get $p0)
              (i32.add
                (local.get $l4)
                (i32.const 12))
              (local.get $p0)))
          (block $B4
            (block $B5
              (br_if $B5
                (i32.eqz
                  (local.get $p3)))
              (local.set $p0
                (local.get $p2))
              (br $B4))
            (block $B6
              (br_if $B6
                (i32.lt_s
                  (local.tee $p0
                    (i32.shr_s
                      (i32.shl
                        (local.tee $p3
                          (i32.load8_u
                            (local.get $p1)))
                        (i32.const 24))
                      (i32.const 24)))
                  (i32.const 0)))
              (i32.store
                (local.get $l7)
                (local.get $p3))
              (local.set $l6
                (i32.ne
                  (local.get $p0)
                  (i32.const 0)))
              (br $B0))
            (local.set $p3
              (call $__get_tp))
            (local.set $p0
              (i32.load8_s
                (local.get $p1)))
            (block $B7
              (br_if $B7
                (i32.load
                  (i32.load offset=88
                    (local.get $p3))))
              (i32.store
                (local.get $l7)
                (i32.and
                  (local.get $p0)
                  (i32.const 57343)))
              (local.set $l6
                (i32.const 1))
              (br $B0))
            (br_if $B2
              (i32.gt_u
                (local.tee $p3
                  (i32.add
                    (i32.and
                      (local.get $p0)
                      (i32.const 255))
                    (i32.const -194)))
                (i32.const 50)))
            (local.set $p3
              (i32.load
                (i32.add
                  (i32.shl
                    (local.get $p3)
                    (i32.const 2))
                  (i32.const 1456))))
            (br_if $B1
              (i32.eqz
                (local.tee $p0
                  (i32.add
                    (local.get $p2)
                    (i32.const -1)))))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.const 1))))
          (br_if $B2
            (i32.gt_u
              (i32.or
                (i32.add
                  (local.tee $l9
                    (i32.shr_u
                      (local.tee $l8
                        (i32.load8_u
                          (local.get $p1)))
                      (i32.const 3)))
                  (i32.const -16))
                (i32.add
                  (i32.shr_s
                    (local.get $p3)
                    (i32.const 26))
                  (local.get $l9)))
              (i32.const 7)))
          (loop $L8
            (local.set $p0
              (i32.add
                (local.get $p0)
                (i32.const -1)))
            (block $B9
              (br_if $B9
                (i32.lt_s
                  (local.tee $p3
                    (i32.or
                      (i32.add
                        (i32.and
                          (local.get $l8)
                          (i32.const 255))
                        (i32.const -128))
                      (i32.shl
                        (local.get $p3)
                        (i32.const 6))))
                  (i32.const 0)))
              (i32.store
                (local.get $l5)
                (i32.const 0))
              (i32.store
                (local.get $l7)
                (local.get $p3))
              (local.set $l6
                (i32.sub
                  (local.get $p2)
                  (local.get $p0)))
              (br $B0))
            (br_if $B1
              (i32.eqz
                (local.get $p0)))
            (br_if $L8
              (i32.eq
                (i32.and
                  (local.tee $l8
                    (i32.load8_u
                      (local.tee $p1
                        (i32.add
                          (local.get $p1)
                          (i32.const 1)))))
                  (i32.const 192))
                (i32.const 128)))))
        (i32.store
          (local.get $l5)
          (i32.const 0))
        (i32.store
          (call $__errno_location)
          (i32.const 25))
        (local.set $l6
          (i32.const -1))
        (br $B0))
      (i32.store
        (local.get $l5)
        (local.get $p3)))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 16)))
    (local.get $l6))
  (func $mbsinit (type $t0) (param $p0 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (i32.const 1)))
    (i32.eqz
      (i32.load
        (local.get $p0))))
  (func $vfscanf (type $t1) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i64) (local $l19 i64) (local $l20 i64)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 304))))
    (local.set $l4
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.lt_s
          (i32.load offset=76
            (local.get $p0))
          (i32.const 0)))
      (local.set $l4
        (call $__lockfile
          (local.get $p0))))
    (block $B1
      (block $B2
        (block $B3
          (block $B4
            (block $B5
              (br_if $B5
                (i32.load offset=4
                  (local.get $p0)))
              (drop
                (call $__toread
                  (local.get $p0)))
              (br_if $B5
                (i32.load offset=4
                  (local.get $p0)))
              (local.set $l5
                (i32.const 0))
              (br $B4))
            (local.set $l6
              (i32.const 0))
            (br_if $B1
              (i32.eqz
                (local.tee $l7
                  (i32.load8_u
                    (local.get $p1)))))
            (local.set $l18
              (i64.const 0))
            (local.set $l8
              (i32.add
                (local.get $l3)
                (i32.const 16)))
            (block $B6
              (block $B7
                (block $B8
                  (block $B9
                    (loop $L10
                      (block $B11
                        (block $B12
                          (br_if $B12
                            (i32.eqz
                              (call $isspace
                                (i32.and
                                  (local.get $l7)
                                  (i32.const 255)))))
                          (loop $L13
                            (local.set $p1
                              (i32.add
                                (local.tee $l7
                                  (local.get $p1))
                                (i32.const 1)))
                            (br_if $L13
                              (call $isspace
                                (i32.load8_u offset=1
                                  (local.get $l7)))))
                          (call $__shlim
                            (local.get $p0)
                            (i64.const 0))
                          (loop $L14
                            (block $B15
                              (block $B16
                                (br_if $B16
                                  (i32.eq
                                    (local.tee $p1
                                      (i32.load offset=4
                                        (local.get $p0)))
                                    (i32.load offset=104
                                      (local.get $p0))))
                                (i32.store offset=4
                                  (local.get $p0)
                                  (i32.add
                                    (local.get $p1)
                                    (i32.const 1)))
                                (local.set $p1
                                  (i32.load8_u
                                    (local.get $p1)))
                                (br $B15))
                              (local.set $p1
                                (call $__shgetc
                                  (local.get $p0))))
                            (br_if $L14
                              (call $isspace
                                (local.get $p1))))
                          (local.set $p1
                            (i32.load offset=4
                              (local.get $p0)))
                          (block $B17
                            (br_if $B17
                              (i64.lt_s
                                (i64.load offset=112
                                  (local.get $p0))
                                (i64.const 0)))
                            (i32.store offset=4
                              (local.get $p0)
                              (local.tee $p1
                                (i32.add
                                  (local.get $p1)
                                  (i32.const -1)))))
                          (local.set $l18
                            (i64.add
                              (i64.add
                                (i64.load offset=120
                                  (local.get $p0))
                                (local.get $l18))
                              (i64.extend_i32_s
                                (i32.sub
                                  (local.get $p1)
                                  (i32.load offset=44
                                    (local.get $p0))))))
                          (br $B11))
                        (block $B18
                          (block $B19
                            (block $B20
                              (block $B21
                                (br_if $B21
                                  (i32.ne
                                    (i32.load8_u
                                      (local.get $p1))
                                    (i32.const 37)))
                                (br_if $B20
                                  (i32.eq
                                    (local.tee $l7
                                      (i32.load8_u offset=1
                                        (local.get $p1)))
                                    (i32.const 42)))
                                (br_if $B19
                                  (i32.ne
                                    (local.get $l7)
                                    (i32.const 37))))
                              (call $__shlim
                                (local.get $p0)
                                (i64.const 0))
                              (block $B22
                                (block $B23
                                  (br_if $B23
                                    (i32.ne
                                      (i32.load8_u
                                        (local.get $p1))
                                      (i32.const 37)))
                                  (loop $L24
                                    (block $B25
                                      (block $B26
                                        (br_if $B26
                                          (i32.eq
                                            (local.tee $l7
                                              (i32.load offset=4
                                                (local.get $p0)))
                                            (i32.load offset=104
                                              (local.get $p0))))
                                        (i32.store offset=4
                                          (local.get $p0)
                                          (i32.add
                                            (local.get $l7)
                                            (i32.const 1)))
                                        (local.set $l7
                                          (i32.load8_u
                                            (local.get $l7)))
                                        (br $B25))
                                      (local.set $l7
                                        (call $__shgetc
                                          (local.get $p0))))
                                    (br_if $L24
                                      (call $isspace
                                        (local.get $l7))))
                                  (local.set $p1
                                    (i32.add
                                      (local.get $p1)
                                      (i32.const 1)))
                                  (br $B22))
                                (block $B27
                                  (br_if $B27
                                    (i32.eq
                                      (local.tee $l7
                                        (i32.load offset=4
                                          (local.get $p0)))
                                      (i32.load offset=104
                                        (local.get $p0))))
                                  (i32.store offset=4
                                    (local.get $p0)
                                    (i32.add
                                      (local.get $l7)
                                      (i32.const 1)))
                                  (local.set $l7
                                    (i32.load8_u
                                      (local.get $l7)))
                                  (br $B22))
                                (local.set $l7
                                  (call $__shgetc
                                    (local.get $p0))))
                              (block $B28
                                (br_if $B28
                                  (i32.eq
                                    (local.get $l7)
                                    (i32.load8_u
                                      (local.get $p1))))
                                (block $B29
                                  (br_if $B29
                                    (i64.lt_s
                                      (i64.load offset=112
                                        (local.get $p0))
                                      (i64.const 0)))
                                  (i32.store offset=4
                                    (local.get $p0)
                                    (i32.add
                                      (i32.load offset=4
                                        (local.get $p0))
                                      (i32.const -1))))
                                (br_if $B1
                                  (i32.gt_s
                                    (local.get $l7)
                                    (i32.const -1)))
                                (local.set $l5
                                  (i32.const 0))
                                (br_if $B4
                                  (i32.eqz
                                    (local.get $l6)))
                                (br $B1))
                              (local.set $l18
                                (i64.add
                                  (i64.add
                                    (i64.load offset=120
                                      (local.get $p0))
                                    (local.get $l18))
                                  (i64.extend_i32_s
                                    (i32.sub
                                      (i32.load offset=4
                                        (local.get $p0))
                                      (i32.load offset=44
                                        (local.get $p0))))))
                              (local.set $l7
                                (local.get $p1))
                              (br $B11))
                            (local.set $l7
                              (i32.add
                                (local.get $p1)
                                (i32.const 2)))
                            (local.set $l9
                              (i32.const 0))
                            (br $B18))
                          (block $B30
                            (br_if $B30
                              (i32.eqz
                                (call $isdigit
                                  (local.get $l7))))
                            (br_if $B30
                              (i32.ne
                                (i32.load8_u offset=2
                                  (local.get $p1))
                                (i32.const 36)))
                            (local.set $l7
                              (i32.add
                                (local.get $p1)
                                (i32.const 3)))
                            (local.set $l9
                              (call $arg_n
                                (local.get $p2)
                                (i32.add
                                  (i32.load8_u offset=1
                                    (local.get $p1))
                                  (i32.const -48))))
                            (br $B18))
                          (local.set $l7
                            (i32.add
                              (local.get $p1)
                              (i32.const 1)))
                          (local.set $l9
                            (i32.load
                              (local.get $p2)))
                          (local.set $p2
                            (i32.add
                              (local.get $p2)
                              (i32.const 4))))
                        (local.set $l10
                          (i32.const 0))
                        (local.set $p1
                          (i32.const 0))
                        (block $B31
                          (br_if $B31
                            (i32.eqz
                              (call $isdigit
                                (i32.load8_u
                                  (local.get $l7)))))
                          (loop $L32
                            (local.set $p1
                              (i32.add
                                (i32.add
                                  (i32.mul
                                    (local.get $p1)
                                    (i32.const 10))
                                  (i32.load8_u
                                    (local.get $l7)))
                                (i32.const -48)))
                            (local.set $l11
                              (i32.load8_u offset=1
                                (local.get $l7)))
                            (local.set $l7
                              (i32.add
                                (local.get $l7)
                                (i32.const 1)))
                            (br_if $L32
                              (call $isdigit
                                (local.get $l11)))))
                        (block $B33
                          (block $B34
                            (br_if $B34
                              (i32.eq
                                (local.tee $l12
                                  (i32.load8_u
                                    (local.get $l7)))
                                (i32.const 109)))
                            (local.set $l11
                              (local.get $l7))
                            (br $B33))
                          (local.set $l11
                            (i32.add
                              (local.get $l7)
                              (i32.const 1)))
                          (local.set $l13
                            (i32.const 0))
                          (local.set $l10
                            (i32.ne
                              (local.get $l9)
                              (i32.const 0)))
                          (local.set $l12
                            (i32.load8_u offset=1
                              (local.get $l7)))
                          (local.set $l14
                            (i32.const 0)))
                        (local.set $l7
                          (i32.add
                            (local.get $l11)
                            (i32.const 1)))
                        (local.set $l15
                          (i32.const 3))
                        (local.set $l5
                          (local.get $l10))
                        (block $B35
                          (block $B36
                            (block $B37
                              (block $B38
                                (block $B39
                                  (block $B40
                                    (br_table $B36 $B6 $B36 $B6 $B36 $B36 $B36 $B6 $B6 $B6 $B6 $B37 $B6 $B6 $B6 $B6 $B6 $B6 $B36 $B6 $B6 $B6 $B6 $B36 $B6 $B6 $B36 $B6 $B6 $B6 $B6 $B6 $B36 $B6 $B36 $B36 $B36 $B36 $B36 $B40 $B36 $B35 $B6 $B39 $B6 $B36 $B36 $B36 $B6 $B6 $B36 $B38 $B36 $B6 $B6 $B36 $B6 $B38 $B6
                                      (i32.add
                                        (i32.and
                                          (local.get $l12)
                                          (i32.const 255))
                                        (i32.const -65))))
                                  (local.set $l7
                                    (select
                                      (i32.add
                                        (local.get $l11)
                                        (i32.const 2))
                                      (local.get $l7)
                                      (local.tee $l11
                                        (i32.eq
                                          (i32.load8_u offset=1
                                            (local.get $l11))
                                          (i32.const 104)))))
                                  (local.set $l15
                                    (select
                                      (i32.const -2)
                                      (i32.const -1)
                                      (local.get $l11)))
                                  (br $B35))
                                (local.set $l7
                                  (select
                                    (i32.add
                                      (local.get $l11)
                                      (i32.const 2))
                                    (local.get $l7)
                                    (local.tee $l11
                                      (i32.eq
                                        (i32.load8_u offset=1
                                          (local.get $l11))
                                        (i32.const 108)))))
                                (local.set $l15
                                  (select
                                    (i32.const 3)
                                    (i32.const 1)
                                    (local.get $l11)))
                                (br $B35))
                              (local.set $l15
                                (i32.const 1))
                              (br $B35))
                            (local.set $l15
                              (i32.const 2))
                            (br $B35))
                          (local.set $l15
                            (i32.const 0))
                          (local.set $l7
                            (local.get $l11)))
                        (local.set $l16
                          (select
                            (i32.const 1)
                            (local.get $l15)
                            (local.tee $l12
                              (i32.eq
                                (i32.and
                                  (local.tee $l11
                                    (i32.load8_u
                                      (local.get $l7)))
                                  (i32.const 47))
                                (i32.const 3)))))
                        (block $B41
                          (br_if $B41
                            (i32.eq
                              (local.tee $l17
                                (select
                                  (i32.or
                                    (local.get $l11)
                                    (i32.const 32))
                                  (local.get $l11)
                                  (local.get $l12)))
                              (i32.const 91)))
                          (block $B42
                            (block $B43
                              (br_if $B43
                                (i32.eq
                                  (local.get $l17)
                                  (i32.const 110)))
                              (br_if $B42
                                (i32.ne
                                  (local.get $l17)
                                  (i32.const 99)))
                              (local.set $p1
                                (select
                                  (local.get $p1)
                                  (i32.const 1)
                                  (i32.gt_s
                                    (local.get $p1)
                                    (i32.const 1))))
                              (br $B41))
                            (call $store_int
                              (local.get $l9)
                              (local.get $l16)
                              (local.get $l18))
                            (br $B11))
                          (call $__shlim
                            (local.get $p0)
                            (i64.const 0))
                          (loop $L44
                            (block $B45
                              (block $B46
                                (br_if $B46
                                  (i32.eq
                                    (local.tee $l11
                                      (i32.load offset=4
                                        (local.get $p0)))
                                    (i32.load offset=104
                                      (local.get $p0))))
                                (i32.store offset=4
                                  (local.get $p0)
                                  (i32.add
                                    (local.get $l11)
                                    (i32.const 1)))
                                (local.set $l11
                                  (i32.load8_u
                                    (local.get $l11)))
                                (br $B45))
                              (local.set $l11
                                (call $__shgetc
                                  (local.get $p0))))
                            (br_if $L44
                              (call $isspace
                                (local.get $l11))))
                          (local.set $l11
                            (i32.load offset=4
                              (local.get $p0)))
                          (block $B47
                            (br_if $B47
                              (i64.lt_s
                                (i64.load offset=112
                                  (local.get $p0))
                                (i64.const 0)))
                            (i32.store offset=4
                              (local.get $p0)
                              (local.tee $l11
                                (i32.add
                                  (local.get $l11)
                                  (i32.const -1)))))
                          (local.set $l18
                            (i64.add
                              (i64.add
                                (i64.load offset=120
                                  (local.get $p0))
                                (local.get $l18))
                              (i64.extend_i32_s
                                (i32.sub
                                  (local.get $l11)
                                  (i32.load offset=44
                                    (local.get $p0)))))))
                        (call $__shlim
                          (local.get $p0)
                          (local.tee $l19
                            (i64.extend_i32_s
                              (local.get $p1))))
                        (block $B48
                          (block $B49
                            (br_if $B49
                              (i32.eq
                                (local.tee $l11
                                  (i32.load offset=4
                                    (local.get $p0)))
                                (i32.load offset=104
                                  (local.get $p0))))
                            (i32.store offset=4
                              (local.get $p0)
                              (i32.add
                                (local.get $l11)
                                (i32.const 1)))
                            (br $B48))
                          (br_if $B8
                            (i32.lt_s
                              (call $__shgetc
                                (local.get $p0))
                              (i32.const 0))))
                        (block $B50
                          (br_if $B50
                            (i64.lt_s
                              (i64.load offset=112
                                (local.get $p0))
                              (i64.const 0)))
                          (i32.store offset=4
                            (local.get $p0)
                            (i32.add
                              (i32.load offset=4
                                (local.get $p0))
                              (i32.const -1))))
                        (local.set $l11
                          (i32.const 16))
                        (block $B51
                          (block $B52
                            (block $B53
                              (block $B54
                                (block $B55
                                  (block $B56
                                    (block $B57
                                      (block $B58
                                        (block $B59
                                          (block $B60
                                            (br_table $B54 $B51 $B51 $B58 $B51 $B51 $B51 $B51 $B51 $B59 $B51 $B58 $B56 $B59 $B59 $B59 $B51 $B55 $B51 $B51 $B51 $B51 $B51 $B57 $B54 $B51 $B51 $B58 $B51 $B56 $B51 $B51 $B54 $B60
                                              (i32.add
                                                (local.get $l17)
                                                (i32.const -88))))
                                          (br_if $B51
                                            (i32.gt_u
                                              (local.tee $p1
                                                (i32.add
                                                  (local.get $l17)
                                                  (i32.const -65)))
                                              (i32.const 6)))
                                          (br_if $B51
                                            (i32.eqz
                                              (i32.and
                                                (i32.shl
                                                  (i32.const 1)
                                                  (local.get $p1))
                                                (i32.const 113)))))
                                        (call $__floatscan
                                          (i32.add
                                            (local.get $l3)
                                            (i32.const 8))
                                          (local.get $p0)
                                          (local.get $l16)
                                          (i32.const 0))
                                        (br_if $B53
                                          (i64.ne
                                            (i64.load offset=120
                                              (local.get $p0))
                                            (i64.sub
                                              (i64.const 0)
                                              (i64.extend_i32_s
                                                (i32.sub
                                                  (i32.load offset=4
                                                    (local.get $p0))
                                                  (i32.load offset=44
                                                    (local.get $p0)))))))
                                        (br $B3))
                                      (block $B61
                                        (br_if $B61
                                          (i32.ne
                                            (i32.and
                                              (local.get $l17)
                                              (i32.const 239))
                                            (i32.const 99)))
                                        (drop
                                          (call $memset
                                            (i32.add
                                              (local.get $l3)
                                              (i32.const 32))
                                            (i32.const -1)
                                            (i32.const 257)))
                                        (i32.store8 offset=32
                                          (local.get $l3)
                                          (i32.const 0))
                                        (br_if $B52
                                          (i32.ne
                                            (local.get $l17)
                                            (i32.const 115)))
                                        (i32.store8 offset=65
                                          (local.get $l3)
                                          (i32.const 0))
                                        (i32.store8 offset=46
                                          (local.get $l3)
                                          (i32.const 0))
                                        (i32.store offset=42 align=2
                                          (local.get $l3)
                                          (i32.const 0))
                                        (br $B52))
                                      (drop
                                        (call $memset
                                          (i32.add
                                            (local.get $l3)
                                            (i32.const 32))
                                          (local.tee $l11
                                            (i32.eq
                                              (local.tee $l15
                                                (i32.load8_u offset=1
                                                  (local.get $l7)))
                                              (i32.const 94)))
                                          (i32.const 257)))
                                      (i32.store8 offset=32
                                        (local.get $l3)
                                        (i32.const 0))
                                      (local.set $l12
                                        (select
                                          (i32.add
                                            (local.get $l7)
                                            (i32.const 2))
                                          (i32.add
                                            (local.get $l7)
                                            (i32.const 1))
                                          (local.get $l11)))
                                      (block $B62
                                        (block $B63
                                          (block $B64
                                            (block $B65
                                              (br_if $B65
                                                (i32.eq
                                                  (local.tee $l7
                                                    (i32.load8_u
                                                      (i32.add
                                                        (local.get $l7)
                                                        (select
                                                          (i32.const 2)
                                                          (i32.const 1)
                                                          (local.get $l11)))))
                                                  (i32.const 45)))
                                              (br_if $B64
                                                (i32.eq
                                                  (local.get $l7)
                                                  (i32.const 93)))
                                              (local.set $l15
                                                (i32.ne
                                                  (local.get $l15)
                                                  (i32.const 94)))
                                              (local.set $l7
                                                (local.get $l12))
                                              (br $B62))
                                            (i32.store8 offset=78
                                              (local.get $l3)
                                              (local.tee $l15
                                                (i32.ne
                                                  (local.get $l15)
                                                  (i32.const 94))))
                                            (br $B63))
                                          (i32.store8 offset=126
                                            (local.get $l3)
                                            (local.tee $l15
                                              (i32.ne
                                                (local.get $l15)
                                                (i32.const 94)))))
                                        (local.set $l7
                                          (i32.add
                                            (local.get $l12)
                                            (i32.const 1))))
                                      (loop $L66
                                        (block $B67
                                          (block $B68
                                            (br_if $B68
                                              (i32.eq
                                                (local.tee $l11
                                                  (i32.load8_u
                                                    (local.get $l7)))
                                                (i32.const 45)))
                                            (br_if $B8
                                              (i32.eqz
                                                (local.get $l11)))
                                            (br_if $B67
                                              (i32.ne
                                                (local.get $l11)
                                                (i32.const 93)))
                                            (br $B52))
                                          (local.set $l11
                                            (i32.const 45))
                                          (br_if $B67
                                            (i32.eqz
                                              (local.tee $l5
                                                (i32.load8_u offset=1
                                                  (local.get $l7)))))
                                          (br_if $B67
                                            (i32.eq
                                              (local.get $l5)
                                              (i32.const 93)))
                                          (local.set $l12
                                            (i32.add
                                              (local.get $l7)
                                              (i32.const 1)))
                                          (block $B69
                                            (block $B70
                                              (br_if $B70
                                                (i32.lt_u
                                                  (local.tee $l7
                                                    (i32.load8_u
                                                      (i32.add
                                                        (local.get $l7)
                                                        (i32.const -1))))
                                                  (local.get $l5)))
                                              (local.set $l11
                                                (local.get $l5))
                                              (br $B69))
                                            (loop $L71
                                              (i32.store8
                                                (i32.add
                                                  (i32.add
                                                    (local.get $l3)
                                                    (i32.const 32))
                                                  (local.tee $l7
                                                    (i32.add
                                                      (local.get $l7)
                                                      (i32.const 1))))
                                                (local.get $l15))
                                              (br_if $L71
                                                (i32.lt_u
                                                  (local.get $l7)
                                                  (local.tee $l11
                                                    (i32.load8_u
                                                      (local.get $l12)))))))
                                          (local.set $l7
                                            (local.get $l12)))
                                        (i32.store8
                                          (i32.add
                                            (i32.add
                                              (local.get $l11)
                                              (i32.add
                                                (local.get $l3)
                                                (i32.const 32)))
                                            (i32.const 1))
                                          (local.get $l15))
                                        (local.set $l7
                                          (i32.add
                                            (local.get $l7)
                                            (i32.const 1)))
                                        (br $L66))
                                      (unreachable))
                                    (local.set $l11
                                      (i32.const 8))
                                    (br $B54))
                                  (local.set $l11
                                    (i32.const 10))
                                  (br $B54))
                                (local.set $l11
                                  (i32.const 0)))
                              (local.set $l19
                                (call $__intscan
                                  (local.get $p0)
                                  (local.get $l11)
                                  (i32.const 0)
                                  (i64.const -1)))
                              (br_if $B3
                                (i64.eq
                                  (i64.load offset=120
                                    (local.get $p0))
                                  (i64.sub
                                    (i64.const 0)
                                    (i64.extend_i32_s
                                      (i32.sub
                                        (i32.load offset=4
                                          (local.get $p0))
                                        (i32.load offset=44
                                          (local.get $p0)))))))
                              (block $B72
                                (br_if $B72
                                  (i32.ne
                                    (local.get $l17)
                                    (i32.const 112)))
                                (br_if $B72
                                  (i32.eqz
                                    (local.get $l9)))
                                (i64.store32
                                  (local.get $l9)
                                  (local.get $l19))
                                (br $B51))
                              (call $store_int
                                (local.get $l9)
                                (local.get $l16)
                                (local.get $l19))
                              (br $B51))
                            (br_if $B51
                              (i32.eqz
                                (local.get $l9)))
                            (local.set $l19
                              (i64.load
                                (local.get $l8)))
                            (local.set $l20
                              (i64.load offset=8
                                (local.get $l3)))
                            (block $B73
                              (block $B74
                                (block $B75
                                  (br_table $B75 $B74 $B73 $B51
                                    (local.get $l16)))
                                (f32.store
                                  (local.get $l9)
                                  (call $__trunctfsf2
                                    (local.get $l20)
                                    (local.get $l19)))
                                (br $B51))
                              (f64.store
                                (local.get $l9)
                                (call $__trunctfdf2
                                  (local.get $l20)
                                  (local.get $l19)))
                              (br $B51))
                            (i64.store
                              (local.get $l9)
                              (local.get $l20))
                            (i64.store offset=8
                              (local.get $l9)
                              (local.get $l19))
                            (br $B51))
                          (local.set $l15
                            (select
                              (i32.add
                                (local.get $p1)
                                (i32.const 1))
                              (i32.const 31)
                              (local.tee $l12
                                (i32.eq
                                  (local.get $l17)
                                  (i32.const 99)))))
                          (block $B76
                            (block $B77
                              (br_if $B77
                                (local.tee $l16
                                  (i32.ne
                                    (local.get $l16)
                                    (i32.const 1))))
                              (local.set $l11
                                (local.get $l9))
                              (block $B78
                                (br_if $B78
                                  (i32.eqz
                                    (local.get $l10)))
                                (br_if $B7
                                  (i32.eqz
                                    (local.tee $l11
                                      (call $dlmalloc
                                        (i32.shl
                                          (local.get $l15)
                                          (i32.const 2)))))))
                              (i64.store offset=296
                                (local.get $l3)
                                (i64.const 0))
                              (local.set $p1
                                (i32.const 0))
                              (local.set $l13
                                (i32.ne
                                  (local.get $l10)
                                  (i32.const 0)))
                              (block $B79
                                (loop $L80
                                  (local.set $l14
                                    (local.get $l11))
                                  (loop $L81
                                    (block $B82
                                      (block $B83
                                        (br_if $B83
                                          (i32.eq
                                            (local.tee $l11
                                              (i32.load offset=4
                                                (local.get $p0)))
                                            (i32.load offset=104
                                              (local.get $p0))))
                                        (i32.store offset=4
                                          (local.get $p0)
                                          (i32.add
                                            (local.get $l11)
                                            (i32.const 1)))
                                        (local.set $l11
                                          (i32.load8_u
                                            (local.get $l11)))
                                        (br $B82))
                                      (local.set $l11
                                        (call $__shgetc
                                          (local.get $p0))))
                                    (br_if $B79
                                      (i32.eqz
                                        (i32.load8_u
                                          (i32.add
                                            (i32.add
                                              (local.get $l11)
                                              (i32.add
                                                (local.get $l3)
                                                (i32.const 32)))
                                            (i32.const 1)))))
                                    (i32.store8 offset=27
                                      (local.get $l3)
                                      (local.get $l11))
                                    (br_if $L81
                                      (i32.eq
                                        (local.tee $l11
                                          (call $mbrtowc
                                            (i32.add
                                              (local.get $l3)
                                              (i32.const 28))
                                            (i32.add
                                              (local.get $l3)
                                              (i32.const 27))
                                            (i32.const 1)
                                            (i32.add
                                              (local.get $l3)
                                              (i32.const 296))))
                                        (i32.const -2)))
                                    (br_if $B9
                                      (i32.eq
                                        (local.get $l11)
                                        (i32.const -1)))
                                    (block $B84
                                      (br_if $B84
                                        (i32.eqz
                                          (local.get $l14)))
                                      (i32.store
                                        (i32.add
                                          (local.get $l14)
                                          (i32.shl
                                            (local.get $p1)
                                            (i32.const 2)))
                                        (i32.load offset=28
                                          (local.get $l3)))
                                      (local.set $p1
                                        (i32.add
                                          (local.get $p1)
                                          (i32.const 1))))
                                    (br_if $L81
                                      (i32.ne
                                        (i32.and
                                          (local.get $l13)
                                          (i32.eq
                                            (local.get $p1)
                                            (local.get $l15)))
                                        (i32.const 1))))
                                  (br_if $L80
                                    (local.tee $l11
                                      (call $dlrealloc
                                        (local.get $l14)
                                        (i32.shl
                                          (local.tee $l15
                                            (i32.or
                                              (i32.shl
                                                (local.get $l15)
                                                (i32.const 1))
                                              (i32.const 1)))
                                          (i32.const 2))))))
                                (local.set $l5
                                  (i32.const 1))
                                (local.set $l13
                                  (i32.const 0))
                                (br $B6))
                              (br_if $B9
                                (i32.eqz
                                  (call $mbsinit
                                    (i32.add
                                      (local.get $l3)
                                      (i32.const 296)))))
                              (local.set $l13
                                (i32.const 0))
                              (br $B76))
                            (block $B85
                              (br_if $B85
                                (i32.eqz
                                  (local.get $l10)))
                              (local.set $p1
                                (i32.const 0))
                              (br_if $B7
                                (i32.eqz
                                  (local.tee $l11
                                    (call $dlmalloc
                                      (local.get $l15)))))
                              (loop $L86
                                (local.set $l13
                                  (local.get $l11))
                                (loop $L87
                                  (block $B88
                                    (block $B89
                                      (br_if $B89
                                        (i32.eq
                                          (local.tee $l11
                                            (i32.load offset=4
                                              (local.get $p0)))
                                          (i32.load offset=104
                                            (local.get $p0))))
                                      (i32.store offset=4
                                        (local.get $p0)
                                        (i32.add
                                          (local.get $l11)
                                          (i32.const 1)))
                                      (local.set $l11
                                        (i32.load8_u
                                          (local.get $l11)))
                                      (br $B88))
                                    (local.set $l11
                                      (call $__shgetc
                                        (local.get $p0))))
                                  (block $B90
                                    (br_if $B90
                                      (i32.load8_u
                                        (i32.add
                                          (i32.add
                                            (local.get $l11)
                                            (i32.add
                                              (local.get $l3)
                                              (i32.const 32)))
                                          (i32.const 1))))
                                    (local.set $l14
                                      (i32.const 0))
                                    (br $B76))
                                  (i32.store8
                                    (i32.add
                                      (local.get $l13)
                                      (local.get $p1))
                                    (local.get $l11))
                                  (br_if $L87
                                    (i32.ne
                                      (local.tee $p1
                                        (i32.add
                                          (local.get $p1)
                                          (i32.const 1)))
                                      (local.get $l15))))
                                (local.set $l5
                                  (i32.const 1))
                                (local.set $l14
                                  (i32.const 0))
                                (br_if $L86
                                  (local.tee $l11
                                    (call $dlrealloc
                                      (local.get $l13)
                                      (local.tee $l15
                                        (i32.or
                                          (i32.shl
                                            (local.get $l15)
                                            (i32.const 1))
                                          (i32.const 1))))))
                                (br $B6))
                              (unreachable))
                            (local.set $p1
                              (i32.const 0))
                            (block $B91
                              (br_if $B91
                                (i32.eqz
                                  (local.get $l9)))
                              (loop $L92
                                (block $B93
                                  (block $B94
                                    (br_if $B94
                                      (i32.eq
                                        (local.tee $l11
                                          (i32.load offset=4
                                            (local.get $p0)))
                                        (i32.load offset=104
                                          (local.get $p0))))
                                    (i32.store offset=4
                                      (local.get $p0)
                                      (i32.add
                                        (local.get $l11)
                                        (i32.const 1)))
                                    (local.set $l11
                                      (i32.load8_u
                                        (local.get $l11)))
                                    (br $B93))
                                  (local.set $l11
                                    (call $__shgetc
                                      (local.get $p0))))
                                (block $B95
                                  (br_if $B95
                                    (i32.load8_u
                                      (i32.add
                                        (i32.add
                                          (local.get $l11)
                                          (i32.add
                                            (local.get $l3)
                                            (i32.const 32)))
                                        (i32.const 1))))
                                  (local.set $l14
                                    (i32.const 0))
                                  (local.set $l13
                                    (local.get $l9))
                                  (br $B76))
                                (i32.store8
                                  (i32.add
                                    (local.get $l9)
                                    (local.get $p1))
                                  (local.get $l11))
                                (local.set $p1
                                  (i32.add
                                    (local.get $p1)
                                    (i32.const 1)))
                                (br $L92))
                              (unreachable))
                            (loop $L96
                              (block $B97
                                (block $B98
                                  (br_if $B98
                                    (i32.eq
                                      (local.tee $p1
                                        (i32.load offset=4
                                          (local.get $p0)))
                                      (i32.load offset=104
                                        (local.get $p0))))
                                  (i32.store offset=4
                                    (local.get $p0)
                                    (i32.add
                                      (local.get $p1)
                                      (i32.const 1)))
                                  (local.set $p1
                                    (i32.load8_u
                                      (local.get $p1)))
                                  (br $B97))
                                (local.set $p1
                                  (call $__shgetc
                                    (local.get $p0))))
                              (br_if $L96
                                (i32.load8_u
                                  (i32.add
                                    (i32.add
                                      (local.get $p1)
                                      (i32.add
                                        (local.get $l3)
                                        (i32.const 32)))
                                    (i32.const 1)))))
                            (local.set $l13
                              (i32.const 0))
                            (local.set $l14
                              (i32.const 0))
                            (local.set $p1
                              (i32.const 0)))
                          (local.set $l11
                            (i32.load offset=4
                              (local.get $p0)))
                          (block $B99
                            (br_if $B99
                              (i64.lt_s
                                (i64.load offset=112
                                  (local.get $p0))
                                (i64.const 0)))
                            (i32.store offset=4
                              (local.get $p0)
                              (local.tee $l11
                                (i32.add
                                  (local.get $l11)
                                  (i32.const -1)))))
                          (br_if $B3
                            (i64.eqz
                              (local.tee $l20
                                (i64.add
                                  (i64.load offset=120
                                    (local.get $p0))
                                  (i64.extend_i32_s
                                    (i32.sub
                                      (local.get $l11)
                                      (i32.load offset=44
                                        (local.get $p0))))))))
                          (block $B100
                            (br_if $B100
                              (i32.ne
                                (local.get $l17)
                                (i32.const 99)))
                            (br_if $B3
                              (i64.ne
                                (local.get $l20)
                                (local.get $l19))))
                          (block $B101
                            (br_if $B101
                              (i32.eqz
                                (local.get $l10)))
                            (block $B102
                              (br_if $B102
                                (local.get $l16))
                              (i32.store
                                (local.get $l9)
                                (local.get $l14))
                              (br $B101))
                            (i32.store
                              (local.get $l9)
                              (local.get $l13)))
                          (br_if $B51
                            (local.get $l12))
                          (block $B103
                            (br_if $B103
                              (i32.eqz
                                (local.get $l14)))
                            (i32.store
                              (i32.add
                                (local.get $l14)
                                (i32.shl
                                  (local.get $p1)
                                  (i32.const 2)))
                              (i32.const 0)))
                          (block $B104
                            (br_if $B104
                              (local.get $l13))
                            (local.set $l13
                              (i32.const 0))
                            (br $B51))
                          (i32.store8
                            (i32.add
                              (local.get $l13)
                              (local.get $p1))
                            (i32.const 0)))
                        (local.set $l18
                          (i64.add
                            (i64.add
                              (i64.load offset=120
                                (local.get $p0))
                              (local.get $l18))
                            (i64.extend_i32_s
                              (i32.sub
                                (i32.load offset=4
                                  (local.get $p0))
                                (i32.load offset=44
                                  (local.get $p0))))))
                        (local.set $l6
                          (i32.add
                            (local.get $l6)
                            (i32.ne
                              (local.get $l9)
                              (i32.const 0)))))
                      (local.set $p1
                        (i32.add
                          (local.get $l7)
                          (i32.const 1)))
                      (br_if $L10
                        (local.tee $l7
                          (i32.load8_u offset=1
                            (local.get $l7))))
                      (br $B1))
                    (unreachable))
                  (local.set $l13
                    (i32.const 0)))
                (local.set $l5
                  (local.get $l10))
                (br $B6))
              (local.set $l5
                (i32.const 1))
              (local.set $l13
                (i32.const 0))
              (local.set $l14
                (i32.const 0)))
            (br_if $B2
              (local.get $l6)))
          (local.set $l6
            (i32.const -1))
          (br $B2))
        (local.set $l5
          (local.get $l10)))
      (br_if $B1
        (i32.eqz
          (local.get $l5)))
      (call $dlfree
        (local.get $l13))
      (call $dlfree
        (local.get $l14)))
    (block $B105
      (br_if $B105
        (i32.eqz
          (local.get $l4)))
      (call $__unlockfile
        (local.get $p0)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 304)))
    (local.get $l6))
  (func $arg_n (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (i32.store offset=12
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16)))
      (local.get $p0))
    (i32.store offset=8
      (local.get $l2)
      (i32.add
        (local.tee $p0
          (i32.add
            (local.get $p0)
            (select
              (i32.add
                (i32.shl
                  (local.get $p1)
                  (i32.const 2))
                (i32.const -4))
              (i32.const 0)
              (i32.gt_u
                (local.get $p1)
                (i32.const 1)))))
        (i32.const 4)))
    (i32.load
      (local.get $p0)))
  (func $store_int (type $t23) (param $p0 i32) (param $p1 i32) (param $p2 i64)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_table $B4 $B3 $B2 $B2 $B0 $B1 $B0
                (i32.add
                  (local.get $p1)
                  (i32.const 2))))
            (i64.store8
              (local.get $p0)
              (local.get $p2))
            (return))
          (i64.store16
            (local.get $p0)
            (local.get $p2))
          (return))
        (i64.store32
          (local.get $p0)
          (local.get $p2))
        (return))
      (i64.store
        (local.get $p0)
        (local.get $p2))))
  (func $vscanf (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (call $vfscanf
      (i32.const 2144)
      (local.get $p0)
      (local.get $p1)))
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
  (func $__addtf3 (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i64) (param $p4 i64)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i64) (local $l10 i64) (local $l11 i64)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 112))))
    (local.set $l9
      (i64.and
        (local.get $p4)
        (i64.const 9223372036854775807)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (select
              (local.tee $l6
                (i64.eqz
                  (local.get $p1)))
              (i64.lt_u
                (i64.add
                  (local.tee $l10
                    (i64.and
                      (local.get $p2)
                      (i64.const 9223372036854775807)))
                  (i64.const -9223090561878065152))
                (i64.const -9223090561878065152))
              (i64.eqz
                (local.get $l10))))
          (br_if $B1
            (select
              (i64.ne
                (local.get $p3)
                (i64.const 0))
              (i64.gt_u
                (local.tee $l11
                  (i64.add
                    (local.get $l9)
                    (i64.const -9223090561878065152)))
                (i64.const -9223090561878065152))
              (i64.eq
                (local.get $l11)
                (i64.const -9223090561878065152)))))
        (block $B3
          (br_if $B3
            (select
              (local.get $l6)
              (i64.lt_u
                (local.get $l10)
                (i64.const 9223090561878065152))
              (i64.eq
                (local.get $l10)
                (i64.const 9223090561878065152))))
          (local.set $p4
            (i64.or
              (local.get $p2)
              (i64.const 140737488355328)))
          (local.set $p3
            (local.get $p1))
          (br $B0))
        (block $B4
          (br_if $B4
            (select
              (i64.eqz
                (local.get $p3))
              (i64.lt_u
                (local.get $l9)
                (i64.const 9223090561878065152))
              (i64.eq
                (local.get $l9)
                (i64.const 9223090561878065152))))
          (local.set $p4
            (i64.or
              (local.get $p4)
              (i64.const 140737488355328)))
          (br $B0))
        (block $B5
          (br_if $B5
            (i64.ne
              (i64.or
                (local.get $p1)
                (i64.xor
                  (local.get $l10)
                  (i64.const 9223090561878065152)))
              (i64.const 0)))
          (local.set $p4
            (select
              (i64.const 9223231299366420480)
              (local.get $p2)
              (local.tee $l6
                (i64.eqz
                  (i64.or
                    (i64.xor
                      (local.get $p3)
                      (local.get $p1))
                    (i64.xor
                      (i64.xor
                        (local.get $p4)
                        (local.get $p2))
                      (i64.const -9223372036854775808)))))))
          (local.set $p3
            (select
              (i64.const 0)
              (local.get $p1)
              (local.get $l6)))
          (br $B0))
        (br_if $B0
          (i64.eqz
            (i64.or
              (local.get $p3)
              (i64.xor
                (local.get $l9)
                (i64.const 9223090561878065152)))))
        (block $B6
          (br_if $B6
            (i64.ne
              (i64.or
                (local.get $p1)
                (local.get $l10))
              (i64.const 0)))
          (br_if $B0
            (i64.ne
              (i64.or
                (local.get $p3)
                (local.get $l9))
              (i64.const 0)))
          (local.set $p3
            (i64.and
              (local.get $p3)
              (local.get $p1)))
          (local.set $p4
            (i64.and
              (local.get $p4)
              (local.get $p2)))
          (br $B0))
        (br_if $B1
          (i32.eqz
            (i64.eqz
              (i64.or
                (local.get $p3)
                (local.get $l9)))))
        (local.set $p3
          (local.get $p1))
        (local.set $p4
          (local.get $p2))
        (br $B0))
      (local.set $l10
        (select
          (local.get $p3)
          (local.get $p1)
          (local.tee $l7
            (select
              (i64.gt_u
                (local.get $p3)
                (local.get $p1))
              (i64.gt_u
                (local.get $l9)
                (local.get $l10))
              (i64.eq
                (local.get $l9)
                (local.get $l10))))))
      (local.set $l11
        (i64.and
          (local.tee $l9
            (select
              (local.get $p4)
              (local.get $p2)
              (local.get $l7)))
          (i64.const 281474976710655)))
      (local.set $l8
        (i32.and
          (i32.wrap_i64
            (i64.shr_u
              (local.tee $p2
                (select
                  (local.get $p2)
                  (local.get $p4)
                  (local.get $l7)))
              (i64.const 48)))
          (i32.const 32767)))
      (block $B7
        (br_if $B7
          (local.tee $l6
            (i32.and
              (i32.wrap_i64
                (i64.shr_u
                  (local.get $l9)
                  (i64.const 48)))
              (i32.const 32767))))
        (call $__ashlti3
          (i32.add
            (local.get $l5)
            (i32.const 96))
          (local.get $l10)
          (local.get $l11)
          (i32.add
            (local.tee $l6
              (i32.wrap_i64
                (i64.add
                  (i64.clz
                    (select
                      (local.get $l10)
                      (local.get $l11)
                      (local.tee $l6
                        (i64.eqz
                          (local.get $l11)))))
                  (i64.extend_i32_u
                    (i32.shl
                      (local.get $l6)
                      (i32.const 6))))))
            (i32.const -15)))
        (local.set $l6
          (i32.sub
            (i32.const 16)
            (local.get $l6)))
        (local.set $l11
          (i64.load
            (i32.add
              (local.get $l5)
              (i32.const 104))))
        (local.set $l10
          (i64.load offset=96
            (local.get $l5))))
      (local.set $p3
        (select
          (local.get $p1)
          (local.get $p3)
          (local.get $l7)))
      (local.set $p4
        (i64.and
          (local.get $p2)
          (i64.const 281474976710655)))
      (block $B8
        (br_if $B8
          (local.get $l8))
        (call $__ashlti3
          (i32.add
            (local.get $l5)
            (i32.const 80))
          (local.get $p3)
          (local.get $p4)
          (i32.add
            (local.tee $l7
              (i32.wrap_i64
                (i64.add
                  (i64.clz
                    (select
                      (local.get $p3)
                      (local.get $p4)
                      (local.tee $l7
                        (i64.eqz
                          (local.get $p4)))))
                  (i64.extend_i32_u
                    (i32.shl
                      (local.get $l7)
                      (i32.const 6))))))
            (i32.const -15)))
        (local.set $l8
          (i32.sub
            (i32.const 16)
            (local.get $l7)))
        (local.set $p4
          (i64.load
            (i32.add
              (local.get $l5)
              (i32.const 88))))
        (local.set $p3
          (i64.load offset=80
            (local.get $l5))))
      (local.set $p4
        (i64.or
          (i64.or
            (i64.shl
              (local.get $p4)
              (i64.const 3))
            (i64.shr_u
              (local.get $p3)
              (i64.const 61)))
          (i64.const 2251799813685248)))
      (local.set $p1
        (i64.or
          (i64.shl
            (local.get $l11)
            (i64.const 3))
          (i64.shr_u
            (local.get $l10)
            (i64.const 61))))
      (local.set $p3
        (i64.shl
          (local.get $p3)
          (i64.const 3)))
      (local.set $p2
        (i64.xor
          (local.get $l9)
          (local.get $p2)))
      (block $B9
        (br_if $B9
          (i32.eqz
            (local.tee $l7
              (i32.sub
                (local.get $l6)
                (local.get $l8)))))
        (block $B10
          (br_if $B10
            (i32.le_u
              (local.get $l7)
              (i32.const 127)))
          (local.set $p4
            (i64.const 0))
          (local.set $p3
            (i64.const 1))
          (br $B9))
        (call $__ashlti3
          (i32.add
            (local.get $l5)
            (i32.const 64))
          (local.get $p3)
          (local.get $p4)
          (i32.sub
            (i32.const 128)
            (local.get $l7)))
        (call $__lshrti3
          (i32.add
            (local.get $l5)
            (i32.const 48))
          (local.get $p3)
          (local.get $p4)
          (local.get $l7))
        (local.set $p3
          (i64.or
            (i64.load offset=48
              (local.get $l5))
            (i64.extend_i32_u
              (i64.ne
                (i64.or
                  (i64.load offset=64
                    (local.get $l5))
                  (i64.load
                    (i32.add
                      (i32.add
                        (local.get $l5)
                        (i32.const 64))
                      (i32.const 8))))
                (i64.const 0)))))
        (local.set $p4
          (i64.load
            (i32.add
              (i32.add
                (local.get $l5)
                (i32.const 48))
              (i32.const 8)))))
      (local.set $l11
        (i64.or
          (local.get $p1)
          (i64.const 2251799813685248)))
      (local.set $p1
        (i64.shl
          (local.get $l10)
          (i64.const 3)))
      (block $B11
        (block $B12
          (br_if $B12
            (i64.gt_s
              (local.get $p2)
              (i64.const -1)))
          (block $B13
            (br_if $B13
              (i32.eqz
                (i64.eqz
                  (i64.or
                    (local.tee $l10
                      (i64.sub
                        (local.get $p1)
                        (local.get $p3)))
                    (local.tee $p4
                      (i64.sub
                        (i64.sub
                          (local.get $l11)
                          (local.get $p4))
                        (i64.extend_i32_u
                          (i64.lt_u
                            (local.get $p1)
                            (local.get $p3)))))))))
            (local.set $p3
              (i64.const 0))
            (local.set $p4
              (i64.const 0))
            (br $B0))
          (br_if $B11
            (i64.gt_u
              (local.get $p4)
              (i64.const 2251799813685247)))
          (call $__ashlti3
            (i32.add
              (local.get $l5)
              (i32.const 32))
            (local.get $l10)
            (local.get $p4)
            (local.tee $l7
              (i32.add
                (i32.wrap_i64
                  (i64.add
                    (i64.clz
                      (select
                        (local.get $l10)
                        (local.get $p4)
                        (local.tee $l7
                          (i64.eqz
                            (local.get $p4)))))
                    (i64.extend_i32_u
                      (i32.shl
                        (local.get $l7)
                        (i32.const 6)))))
                (i32.const -12))))
          (local.set $l6
            (i32.sub
              (local.get $l6)
              (local.get $l7)))
          (local.set $p4
            (i64.load
              (i32.add
                (local.get $l5)
                (i32.const 40))))
          (local.set $l10
            (i64.load offset=32
              (local.get $l5)))
          (br $B11))
        (br_if $B11
          (i64.eqz
            (i64.and
              (local.tee $p4
                (i64.add
                  (i64.add
                    (local.get $p4)
                    (local.get $l11))
                  (i64.extend_i32_u
                    (i64.lt_u
                      (local.tee $l10
                        (i64.add
                          (local.get $p3)
                          (local.get $p1)))
                      (local.get $p3)))))
              (i64.const 4503599627370496))))
        (local.set $l10
          (i64.or
            (i64.or
              (i64.shr_u
                (local.get $l10)
                (i64.const 1))
              (i64.shl
                (local.get $p4)
                (i64.const 63)))
            (i64.and
              (local.get $l10)
              (i64.const 1))))
        (local.set $l6
          (i32.add
            (local.get $l6)
            (i32.const 1)))
        (local.set $p4
          (i64.shr_u
            (local.get $p4)
            (i64.const 1))))
      (local.set $p1
        (i64.and
          (local.get $l9)
          (i64.const -9223372036854775808)))
      (block $B14
        (br_if $B14
          (i32.lt_s
            (local.get $l6)
            (i32.const 32767)))
        (local.set $p4
          (i64.or
            (local.get $p1)
            (i64.const 9223090561878065152)))
        (local.set $p3
          (i64.const 0))
        (br $B0))
      (local.set $l7
        (i32.const 0))
      (block $B15
        (block $B16
          (br_if $B16
            (i32.le_s
              (local.get $l6)
              (i32.const 0)))
          (local.set $l7
            (local.get $l6))
          (br $B15))
        (call $__ashlti3
          (i32.add
            (local.get $l5)
            (i32.const 16))
          (local.get $l10)
          (local.get $p4)
          (i32.add
            (local.get $l6)
            (i32.const 127)))
        (call $__lshrti3
          (local.get $l5)
          (local.get $l10)
          (local.get $p4)
          (i32.sub
            (i32.const 1)
            (local.get $l6)))
        (local.set $l10
          (i64.or
            (i64.load
              (local.get $l5))
            (i64.extend_i32_u
              (i64.ne
                (i64.or
                  (i64.load offset=16
                    (local.get $l5))
                  (i64.load
                    (i32.add
                      (i32.add
                        (local.get $l5)
                        (i32.const 16))
                      (i32.const 8))))
                (i64.const 0)))))
        (local.set $p4
          (i64.load
            (i32.add
              (local.get $l5)
              (i32.const 8)))))
      (local.set $p3
        (i64.or
          (i64.shr_u
            (local.get $l10)
            (i64.const 3))
          (i64.shl
            (local.get $p4)
            (i64.const 61))))
      (local.set $p4
        (i64.or
          (i64.or
            (i64.shl
              (i64.extend_i32_u
                (local.get $l7))
              (i64.const 48))
            (i64.and
              (i64.shr_u
                (local.get $p4)
                (i64.const 3))
              (i64.const 281474976710655)))
          (local.get $p1)))
      (local.set $l6
        (i32.and
          (i32.wrap_i64
            (local.get $l10))
          (i32.const 7)))
      (block $B17
        (block $B18
          (block $B19
            (block $B20
              (block $B21
                (br_table $B21 $B20 $B19 $B18
                  (call $__fe_getround)))
              (local.set $p4
                (i64.add
                  (local.get $p4)
                  (i64.extend_i32_u
                    (i64.lt_u
                      (local.tee $l10
                        (i64.add
                          (local.get $p3)
                          (i64.extend_i32_u
                            (i32.gt_u
                              (local.get $l6)
                              (i32.const 4)))))
                      (local.get $p3)))))
              (block $B22
                (br_if $B22
                  (i32.eq
                    (local.get $l6)
                    (i32.const 4)))
                (local.set $p3
                  (local.get $l10))
                (br $B18))
              (local.set $p4
                (i64.add
                  (local.get $p4)
                  (i64.extend_i32_u
                    (i64.lt_u
                      (local.tee $p3
                        (i64.add
                          (local.tee $p1
                            (i64.and
                              (local.get $l10)
                              (i64.const 1)))
                          (local.get $l10)))
                      (local.get $p1)))))
              (br $B17))
            (local.set $p4
              (i64.add
                (local.get $p4)
                (i64.extend_i32_u
                  (i64.lt_u
                    (local.tee $l10
                      (i64.add
                        (local.get $p3)
                        (i64.extend_i32_u
                          (i32.and
                            (i64.ne
                              (local.get $p1)
                              (i64.const 0))
                            (i32.ne
                              (local.get $l6)
                              (i32.const 0))))))
                    (local.get $p3)))))
            (local.set $p3
              (local.get $l10))
            (br $B18))
          (local.set $p4
            (i64.add
              (local.get $p4)
              (i64.extend_i32_u
                (i64.lt_u
                  (local.tee $l10
                    (i64.add
                      (local.get $p3)
                      (i64.extend_i32_u
                        (i32.and
                          (i64.eqz
                            (local.get $p1))
                          (i32.ne
                            (local.get $l6)
                            (i32.const 0))))))
                  (local.get $p3)))))
          (local.set $p3
            (local.get $l10)))
        (br_if $B0
          (i32.eqz
            (local.get $l6))))
      (drop
        (call $__fe_raise_inexact)))
    (i64.store
      (local.get $p0)
      (local.get $p3))
    (i64.store offset=8
      (local.get $p0)
      (local.get $p4))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 112))))
  (func $__ashlti3 (type $t10) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i32)
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
  (func $__letf2 (type $t12) (param $p0 i64) (param $p1 i64) (param $p2 i64) (param $p3 i64) (result i32)
    (local $l4 i32) (local $l5 i64) (local $l6 i64)
    (local.set $l4
      (i32.const 1))
    (block $B0
      (br_if $B0
        (select
          (i64.ne
            (local.get $p0)
            (i64.const 0))
          (i64.gt_u
            (local.tee $l5
              (i64.and
                (local.get $p1)
                (i64.const 9223372036854775807)))
            (i64.const 9223090561878065152))
          (i64.eq
            (local.get $l5)
            (i64.const 9223090561878065152))))
      (br_if $B0
        (select
          (i64.ne
            (local.get $p2)
            (i64.const 0))
          (i64.gt_u
            (local.tee $l6
              (i64.and
                (local.get $p3)
                (i64.const 9223372036854775807)))
            (i64.const 9223090561878065152))
          (i64.eq
            (local.get $l6)
            (i64.const 9223090561878065152))))
      (block $B1
        (br_if $B1
          (i32.eqz
            (i64.eqz
              (i64.or
                (i64.or
                  (local.get $p2)
                  (local.get $p0))
                (i64.or
                  (local.get $l6)
                  (local.get $l5))))))
        (return
          (i32.const 0)))
      (block $B2
        (br_if $B2
          (i64.lt_s
            (i64.and
              (local.get $p3)
              (local.get $p1))
            (i64.const 0)))
        (local.set $l4
          (i32.const -1))
        (br_if $B0
          (select
            (i64.lt_u
              (local.get $p0)
              (local.get $p2))
            (i64.lt_s
              (local.get $p1)
              (local.get $p3))
            (i64.eq
              (local.get $p1)
              (local.get $p3))))
        (return
          (i64.ne
            (i64.or
              (i64.xor
                (local.get $p0)
                (local.get $p2))
              (i64.xor
                (local.get $p1)
                (local.get $p3)))
            (i64.const 0))))
      (local.set $l4
        (i32.const -1))
      (br_if $B0
        (select
          (i64.gt_u
            (local.get $p0)
            (local.get $p2))
          (i64.gt_s
            (local.get $p1)
            (local.get $p3))
          (i64.eq
            (local.get $p1)
            (local.get $p3))))
      (local.set $l4
        (i64.ne
          (i64.or
            (i64.xor
              (local.get $p0)
              (local.get $p2))
            (i64.xor
              (local.get $p1)
              (local.get $p3)))
          (i64.const 0))))
    (local.get $l4))
  (func $__getf2 (type $t12) (param $p0 i64) (param $p1 i64) (param $p2 i64) (param $p3 i64) (result i32)
    (local $l4 i32) (local $l5 i64) (local $l6 i64)
    (local.set $l4
      (i32.const -1))
    (block $B0
      (br_if $B0
        (select
          (i64.ne
            (local.get $p0)
            (i64.const 0))
          (i64.gt_u
            (local.tee $l5
              (i64.and
                (local.get $p1)
                (i64.const 9223372036854775807)))
            (i64.const 9223090561878065152))
          (i64.eq
            (local.get $l5)
            (i64.const 9223090561878065152))))
      (br_if $B0
        (select
          (i64.ne
            (local.get $p2)
            (i64.const 0))
          (i64.gt_u
            (local.tee $l6
              (i64.and
                (local.get $p3)
                (i64.const 9223372036854775807)))
            (i64.const 9223090561878065152))
          (i64.eq
            (local.get $l6)
            (i64.const 9223090561878065152))))
      (block $B1
        (br_if $B1
          (i32.eqz
            (i64.eqz
              (i64.or
                (i64.or
                  (local.get $p2)
                  (local.get $p0))
                (i64.or
                  (local.get $l6)
                  (local.get $l5))))))
        (return
          (i32.const 0)))
      (block $B2
        (br_if $B2
          (i64.lt_s
            (i64.and
              (local.get $p3)
              (local.get $p1))
            (i64.const 0)))
        (br_if $B0
          (select
            (i64.lt_u
              (local.get $p0)
              (local.get $p2))
            (i64.lt_s
              (local.get $p1)
              (local.get $p3))
            (i64.eq
              (local.get $p1)
              (local.get $p3))))
        (return
          (i64.ne
            (i64.or
              (i64.xor
                (local.get $p0)
                (local.get $p2))
              (i64.xor
                (local.get $p1)
                (local.get $p3)))
            (i64.const 0))))
      (br_if $B0
        (select
          (i64.gt_u
            (local.get $p0)
            (local.get $p2))
          (i64.gt_s
            (local.get $p1)
            (local.get $p3))
          (i64.eq
            (local.get $p1)
            (local.get $p3))))
      (local.set $l4
        (i64.ne
          (i64.or
            (i64.xor
              (local.get $p0)
              (local.get $p2))
            (i64.xor
              (local.get $p1)
              (local.get $p3)))
          (i64.const 0))))
    (local.get $l4))
  (func $__divtf3 (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i64) (param $p4 i64)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i64) (local $l11 i64) (local $l12 i64) (local $l13 i64) (local $l14 i64) (local $l15 i64) (local $l16 i64) (local $l17 i64) (local $l18 i64) (local $l19 i64) (local $l20 i64) (local $l21 i64) (local $l22 i64) (local $l23 i64)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 336))))
    (local.set $l10
      (i64.and
        (local.get $p4)
        (i64.const 281474976710655)))
    (local.set $l11
      (i64.and
        (local.get $p2)
        (i64.const 281474976710655)))
    (local.set $l12
      (i64.and
        (i64.xor
          (local.get $p4)
          (local.get $p2))
        (i64.const -9223372036854775808)))
    (local.set $l6
      (i32.and
        (i32.wrap_i64
          (i64.shr_u
            (local.get $p4)
            (i64.const 48)))
        (i32.const 32767)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.lt_u
              (i32.add
                (local.tee $l7
                  (i32.and
                    (i32.wrap_i64
                      (i64.shr_u
                        (local.get $p2)
                        (i64.const 48)))
                    (i32.const 32767)))
                (i32.const -32767))
              (i32.const -32766)))
          (local.set $l8
            (i32.const 0))
          (br_if $B1
            (i32.gt_u
              (i32.add
                (local.get $l6)
                (i32.const -32767))
              (i32.const -32767))))
        (block $B3
          (br_if $B3
            (select
              (i64.eqz
                (local.get $p1))
              (i64.lt_u
                (local.tee $l13
                  (i64.and
                    (local.get $p2)
                    (i64.const 9223372036854775807)))
                (i64.const 9223090561878065152))
              (i64.eq
                (local.get $l13)
                (i64.const 9223090561878065152))))
          (local.set $l12
            (i64.or
              (local.get $p2)
              (i64.const 140737488355328)))
          (br $B0))
        (block $B4
          (br_if $B4
            (select
              (i64.eqz
                (local.get $p3))
              (i64.lt_u
                (local.tee $p2
                  (i64.and
                    (local.get $p4)
                    (i64.const 9223372036854775807)))
                (i64.const 9223090561878065152))
              (i64.eq
                (local.get $p2)
                (i64.const 9223090561878065152))))
          (local.set $l12
            (i64.or
              (local.get $p4)
              (i64.const 140737488355328)))
          (local.set $p1
            (local.get $p3))
          (br $B0))
        (block $B5
          (br_if $B5
            (i64.ne
              (i64.or
                (local.get $p1)
                (i64.xor
                  (local.get $l13)
                  (i64.const 9223090561878065152)))
              (i64.const 0)))
          (block $B6
            (br_if $B6
              (i32.eqz
                (i64.eqz
                  (i64.or
                    (local.get $p3)
                    (i64.xor
                      (local.get $p2)
                      (i64.const 9223090561878065152))))))
            (local.set $p1
              (i64.const 0))
            (local.set $l12
              (i64.const 9223231299366420480))
            (br $B0))
          (local.set $l12
            (i64.or
              (local.get $l12)
              (i64.const 9223090561878065152)))
          (local.set $p1
            (i64.const 0))
          (br $B0))
        (block $B7
          (br_if $B7
            (i64.ne
              (i64.or
                (local.get $p3)
                (i64.xor
                  (local.get $p2)
                  (i64.const 9223090561878065152)))
              (i64.const 0)))
          (local.set $p1
            (i64.const 0))
          (br $B0))
        (block $B8
          (br_if $B8
            (i64.ne
              (i64.or
                (local.get $p1)
                (local.get $l13))
              (i64.const 0)))
          (local.set $l12
            (select
              (i64.const 9223231299366420480)
              (local.get $l12)
              (i64.eqz
                (i64.or
                  (local.get $p3)
                  (local.get $p2)))))
          (local.set $p1
            (i64.const 0))
          (br $B0))
        (block $B9
          (br_if $B9
            (i64.ne
              (i64.or
                (local.get $p3)
                (local.get $p2))
              (i64.const 0)))
          (local.set $l12
            (i64.or
              (local.get $l12)
              (i64.const 9223090561878065152)))
          (local.set $p1
            (i64.const 0))
          (br $B0))
        (local.set $l8
          (i32.const 0))
        (block $B10
          (br_if $B10
            (i64.gt_u
              (local.get $l13)
              (i64.const 281474976710655)))
          (call $__ashlti3
            (i32.add
              (local.get $l5)
              (i32.const 320))
            (local.get $p1)
            (local.get $l11)
            (i32.add
              (local.tee $l8
                (i32.wrap_i64
                  (i64.add
                    (i64.clz
                      (select
                        (local.get $p1)
                        (local.get $l11)
                        (local.tee $l8
                          (i64.eqz
                            (local.get $l11)))))
                    (i64.extend_i32_u
                      (i32.shl
                        (local.get $l8)
                        (i32.const 6))))))
              (i32.const -15)))
          (local.set $l8
            (i32.sub
              (i32.const 16)
              (local.get $l8)))
          (local.set $l11
            (i64.load
              (i32.add
                (local.get $l5)
                (i32.const 328))))
          (local.set $p1
            (i64.load offset=320
              (local.get $l5))))
        (br_if $B1
          (i64.gt_u
            (local.get $p2)
            (i64.const 281474976710655)))
        (call $__ashlti3
          (i32.add
            (local.get $l5)
            (i32.const 304))
          (local.get $p3)
          (local.get $l10)
          (i32.add
            (local.tee $l9
              (i32.wrap_i64
                (i64.add
                  (i64.clz
                    (select
                      (local.get $p3)
                      (local.get $l10)
                      (local.tee $l9
                        (i64.eqz
                          (local.get $l10)))))
                  (i64.extend_i32_u
                    (i32.shl
                      (local.get $l9)
                      (i32.const 6))))))
            (i32.const -15)))
        (local.set $l8
          (i32.add
            (i32.add
              (local.get $l9)
              (local.get $l8))
            (i32.const -16)))
        (local.set $l10
          (i64.load
            (i32.add
              (local.get $l5)
              (i32.const 312))))
        (local.set $p3
          (i64.load offset=304
            (local.get $l5))))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 288))
        (local.tee $p2
          (i64.or
            (i64.shr_u
              (local.get $p3)
              (i64.const 49))
            (i64.shl
              (local.tee $l14
                (i64.or
                  (local.get $l10)
                  (i64.const 281474976710656)))
              (i64.const 15))))
        (i64.const 0)
        (local.tee $p4
          (i64.sub
            (i64.const 8432131802713292800)
            (local.get $p2)))
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 272))
        (i64.sub
          (i64.const 0)
          (i64.load
            (i32.add
              (i32.add
                (local.get $l5)
                (i32.const 288))
              (i32.const 8))))
        (i64.const 0)
        (local.get $p4)
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 256))
        (local.tee $p4
          (i64.or
            (i64.shr_u
              (i64.load offset=272
                (local.get $l5))
              (i64.const 63))
            (i64.shl
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (i32.const 272))
                  (i32.const 8)))
              (i64.const 1))))
        (i64.const 0)
        (local.get $p2)
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 240))
        (local.get $p4)
        (i64.const 0)
        (i64.sub
          (i64.const 0)
          (i64.load
            (i32.add
              (i32.add
                (local.get $l5)
                (i32.const 256))
              (i32.const 8))))
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 224))
        (local.tee $p4
          (i64.or
            (i64.shr_u
              (i64.load offset=240
                (local.get $l5))
              (i64.const 63))
            (i64.shl
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (i32.const 240))
                  (i32.const 8)))
              (i64.const 1))))
        (i64.const 0)
        (local.get $p2)
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 208))
        (local.get $p4)
        (i64.const 0)
        (i64.sub
          (i64.const 0)
          (i64.load
            (i32.add
              (i32.add
                (local.get $l5)
                (i32.const 224))
              (i32.const 8))))
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 192))
        (local.tee $p4
          (i64.or
            (i64.shr_u
              (i64.load offset=208
                (local.get $l5))
              (i64.const 63))
            (i64.shl
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (i32.const 208))
                  (i32.const 8)))
              (i64.const 1))))
        (i64.const 0)
        (local.get $p2)
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 176))
        (local.get $p4)
        (i64.const 0)
        (i64.sub
          (i64.const 0)
          (i64.load
            (i32.add
              (i32.add
                (local.get $l5)
                (i32.const 192))
              (i32.const 8))))
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 160))
        (local.get $p2)
        (i64.const 0)
        (local.tee $p4
          (i64.add
            (i64.or
              (i64.shr_u
                (i64.load offset=176
                  (local.get $l5))
                (i64.const 63))
              (i64.shl
                (i64.load
                  (i32.add
                    (i32.add
                      (local.get $l5)
                      (i32.const 176))
                    (i32.const 8)))
                (i64.const 1)))
            (i64.const -1)))
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 144))
        (i64.shl
          (local.get $p3)
          (i64.const 15))
        (i64.const 0)
        (local.get $p4)
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 112))
        (local.get $p4)
        (i64.const 0)
        (i64.sub
          (i64.const 0)
          (i64.add
            (i64.add
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (i32.const 160))
                  (i32.const 8)))
              (i64.extend_i32_u
                (i64.lt_u
                  (local.tee $p2
                    (i64.add
                      (local.tee $l10
                        (i64.load offset=160
                          (local.get $l5)))
                      (i64.load
                        (i32.add
                          (i32.add
                            (local.get $l5)
                            (i32.const 144))
                          (i32.const 8)))))
                  (local.get $l10))))
            (i64.extend_i32_u
              (i64.gt_u
                (local.get $p2)
                (i64.const 1)))))
        (i64.const 0))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 128))
        (i64.sub
          (i64.const 1)
          (local.get $p2))
        (i64.const 0)
        (local.get $p4)
        (i64.const 0))
      (local.set $l6
        (i32.add
          (local.get $l8)
          (i32.sub
            (local.get $l7)
            (local.get $l6))))
      (block $B11
        (block $B12
          (br_if $B12
            (i64.gt_u
              (local.tee $p4
                (i64.add
                  (i64.add
                    (i64.add
                      (i64.add
                        (i64.add
                          (i64.add
                            (i64.add
                              (i64.extend_i32_u
                                (i64.lt_u
                                  (local.tee $l16
                                    (i64.add
                                      (local.tee $l20
                                        (i64.mul
                                          (local.tee $p2
                                            (i64.shr_u
                                              (local.tee $l18
                                                (i64.add
                                                  (local.tee $l13
                                                    (i64.add
                                                      (local.tee $l16
                                                        (i64.shl
                                                          (local.tee $l15
                                                            (i64.load offset=112
                                                              (local.get $l5)))
                                                          (i64.const 1)))
                                                      (i64.or
                                                        (i64.shr_u
                                                          (i64.load offset=128
                                                            (local.get $l5))
                                                          (i64.const 63))
                                                        (i64.shl
                                                          (local.tee $l17
                                                            (i64.load
                                                              (i32.add
                                                                (i32.add
                                                                  (local.get $l5)
                                                                  (i32.const 128))
                                                                (i32.const 8))))
                                                          (i64.const 1)))))
                                                  (i64.const -13927)))
                                              (i64.const 32)))
                                          (local.tee $p4
                                            (i64.and
                                              (i64.shr_u
                                                (local.tee $l19
                                                  (i64.or
                                                    (local.get $l11)
                                                    (i64.const 281474976710656)))
                                                (i64.const 31))
                                              (i64.const 4294967295)))))
                                      (i64.mul
                                        (local.tee $l10
                                          (i64.shr_u
                                            (local.tee $l21
                                              (i64.shl
                                                (local.get $p1)
                                                (i64.const 1)))
                                            (i64.const 32)))
                                        (local.tee $l13
                                          (i64.shr_u
                                            (local.tee $l15
                                              (i64.add
                                                (i64.add
                                                  (i64.add
                                                    (i64.add
                                                      (i64.or
                                                        (i64.shl
                                                          (i64.load
                                                            (i32.add
                                                              (i32.add
                                                                (local.get $l5)
                                                                (i32.const 112))
                                                              (i32.const 8)))
                                                          (i64.const 1))
                                                        (i64.shr_u
                                                          (local.get $l15)
                                                          (i64.const 63)))
                                                      (i64.shr_u
                                                        (local.get $l17)
                                                        (i64.const 63)))
                                                    (i64.extend_i32_u
                                                      (i64.lt_u
                                                        (local.get $l13)
                                                        (local.get $l16))))
                                                  (i64.extend_i32_u
                                                    (i64.lt_u
                                                      (local.get $l18)
                                                      (local.get $l13))))
                                                (i64.const -1)))
                                            (i64.const 32))))))
                                  (local.get $l20)))
                              (i64.extend_i32_u
                                (i64.lt_u
                                  (local.tee $l17
                                    (i64.add
                                      (local.get $l16)
                                      (i64.mul
                                        (local.tee $l15
                                          (i64.and
                                            (local.get $l15)
                                            (i64.const 4294967295)))
                                        (local.tee $l11
                                          (i64.and
                                            (i64.or
                                              (local.tee $l22
                                                (i64.shr_u
                                                  (local.get $p1)
                                                  (i64.const 63)))
                                              (i64.shl
                                                (local.get $l11)
                                                (i64.const 1)))
                                            (i64.const 4294967295))))))
                                  (local.get $l16))))
                            (i64.mul
                              (local.get $p4)
                              (local.get $l13)))
                          (i64.or
                            (i64.shl
                              (i64.extend_i32_u
                                (i64.lt_u
                                  (local.tee $l16
                                    (i64.add
                                      (local.tee $l20
                                        (i64.mul
                                          (local.get $l15)
                                          (local.get $p4)))
                                      (i64.mul
                                        (local.get $l11)
                                        (local.get $l13))))
                                  (local.get $l20)))
                              (i64.const 32))
                            (i64.shr_u
                              (local.get $l16)
                              (i64.const 32))))
                        (i64.extend_i32_u
                          (i64.lt_u
                            (local.tee $l16
                              (i64.add
                                (local.get $l17)
                                (i64.shl
                                  (local.get $l16)
                                  (i64.const 32))))
                            (local.get $l17))))
                      (i64.extend_i32_u
                        (i64.lt_u
                          (local.tee $l17
                            (i64.add
                              (local.get $l16)
                              (i64.add
                                (i64.extend_i32_u
                                  (i64.lt_u
                                    (local.tee $l17
                                      (i64.add
                                        (local.tee $l20
                                          (i64.mul
                                            (local.tee $l18
                                              (i64.and
                                                (local.get $l18)
                                                (i64.const 4294967295)))
                                            (local.get $l11)))
                                        (i64.mul
                                          (local.get $p2)
                                          (local.get $l10))))
                                    (local.get $l20)))
                                (i64.extend_i32_u
                                  (i64.lt_u
                                    (local.tee $l23
                                      (i64.add
                                        (local.get $l17)
                                        (i64.mul
                                          (local.get $l15)
                                          (local.tee $l20
                                            (i64.and
                                              (local.get $l21)
                                              (i64.const 4294967294))))))
                                    (local.get $l17))))))
                          (local.get $l16))))
                    (i64.extend_i32_u
                      (i64.lt_u
                        (local.tee $p4
                          (i64.add
                            (local.get $l17)
                            (i64.or
                              (i64.shr_u
                                (local.tee $l15
                                  (i64.add
                                    (local.tee $l13
                                      (i64.add
                                        (local.tee $p4
                                          (i64.add
                                            (local.tee $l16
                                              (i64.mul
                                                (local.get $l18)
                                                (local.get $p4)))
                                            (i64.mul
                                              (local.get $l20)
                                              (local.get $l13))))
                                        (i64.mul
                                          (local.get $p2)
                                          (local.get $l11))))
                                    (i64.mul
                                      (local.get $l15)
                                      (local.get $l10))))
                                (i64.const 32))
                              (i64.shl
                                (i64.add
                                  (i64.add
                                    (i64.extend_i32_u
                                      (i64.lt_u
                                        (local.get $p4)
                                        (local.get $l16)))
                                    (i64.extend_i32_u
                                      (i64.lt_u
                                        (local.get $l13)
                                        (local.get $p4))))
                                  (i64.extend_i32_u
                                    (i64.lt_u
                                      (local.get $l15)
                                      (local.get $l13))))
                                (i64.const 32)))))
                        (local.get $l17))))
                  (i64.extend_i32_u
                    (i64.lt_u
                      (local.tee $p2
                        (i64.add
                          (local.get $p4)
                          (i64.add
                            (i64.extend_i32_u
                              (i64.lt_u
                                (local.tee $p2
                                  (i64.add
                                    (local.get $l23)
                                    (i64.or
                                      (i64.shr_u
                                        (local.tee $l10
                                          (i64.add
                                            (local.tee $p2
                                              (i64.mul
                                                (local.get $p2)
                                                (local.get $l20)))
                                            (i64.mul
                                              (local.get $l18)
                                              (local.get $l10))))
                                        (i64.const 32))
                                      (i64.shl
                                        (i64.extend_i32_u
                                          (i64.lt_u
                                            (local.get $l10)
                                            (local.get $p2)))
                                        (i64.const 32)))))
                                (local.get $l23)))
                            (i64.extend_i32_u
                              (i64.lt_u
                                (i64.add
                                  (local.get $p2)
                                  (i64.shl
                                    (local.get $l15)
                                    (i64.const 32)))
                                (local.get $p2))))))
                      (local.get $p4)))))
              (i64.const 562949953421311)))
          (local.set $l19
            (i64.or
              (i64.shl
                (local.get $l19)
                (i64.const 1))
              (local.get $l22)))
          (call $__multi3
            (i32.add
              (local.get $l5)
              (i32.const 80))
            (local.get $p2)
            (local.get $p4)
            (local.get $p3)
            (local.get $l14))
          (local.set $l13
            (i64.sub
              (i64.sub
                (i64.shl
                  (local.get $p1)
                  (i64.const 49))
                (i64.load
                  (i32.add
                    (i32.add
                      (local.get $l5)
                      (i32.const 80))
                    (i32.const 8))))
              (i64.extend_i32_u
                (i64.ne
                  (local.tee $p1
                    (i64.load offset=80
                      (local.get $l5)))
                  (i64.const 0)))))
          (local.set $l6
            (i32.add
              (local.get $l6)
              (i32.const 16382)))
          (local.set $l10
            (i64.sub
              (i64.const 0)
              (local.get $p1)))
          (br $B11))
        (call $__multi3
          (i32.add
            (local.get $l5)
            (i32.const 96))
          (local.tee $p2
            (i64.or
              (i64.shr_u
                (local.get $p2)
                (i64.const 1))
              (i64.shl
                (local.get $p4)
                (i64.const 63))))
          (local.tee $p4
            (i64.shr_u
              (local.get $p4)
              (i64.const 1)))
          (local.get $p3)
          (local.get $l14))
        (local.set $l13
          (i64.sub
            (i64.sub
              (i64.shl
                (local.get $p1)
                (i64.const 48))
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (i32.const 96))
                  (i32.const 8))))
            (i64.extend_i32_u
              (i64.ne
                (local.tee $l10
                  (i64.load offset=96
                    (local.get $l5)))
                (i64.const 0)))))
        (local.set $l6
          (i32.add
            (local.get $l6)
            (i32.const 16383)))
        (local.set $l10
          (i64.sub
            (i64.const 0)
            (local.get $l10)))
        (local.set $l21
          (local.get $p1)))
      (block $B13
        (br_if $B13
          (i32.lt_s
            (local.get $l6)
            (i32.const 32767)))
        (local.set $l12
          (i64.or
            (local.get $l12)
            (i64.const 9223090561878065152)))
        (local.set $p1
          (i64.const 0))
        (br $B0))
      (block $B14
        (block $B15
          (br_if $B15
            (i32.lt_s
              (local.get $l6)
              (i32.const 1)))
          (local.set $l13
            (i64.or
              (i64.shl
                (local.get $l13)
                (i64.const 1))
              (i64.shr_u
                (local.get $l10)
                (i64.const 63))))
          (local.set $l15
            (i64.or
              (i64.shl
                (i64.extend_i32_u
                  (local.get $l6))
                (i64.const 48))
              (i64.and
                (local.get $p4)
                (i64.const 281474976710655))))
          (local.set $p4
            (i64.shl
              (local.get $l10)
              (i64.const 1)))
          (br $B14))
        (block $B16
          (br_if $B16
            (i32.gt_s
              (local.get $l6)
              (i32.const -113)))
          (local.set $p1
            (i64.const 0))
          (br $B0))
        (call $__lshrti3
          (i32.add
            (local.get $l5)
            (i32.const 64))
          (local.get $p2)
          (local.get $p4)
          (i32.sub
            (i32.const 1)
            (local.get $l6)))
        (call $__ashlti3
          (i32.add
            (local.get $l5)
            (i32.const 48))
          (local.get $l21)
          (local.get $l19)
          (i32.add
            (local.get $l6)
            (i32.const 112)))
        (call $__multi3
          (i32.add
            (local.get $l5)
            (i32.const 32))
          (local.get $p3)
          (local.get $l14)
          (local.tee $p2
            (i64.load offset=64
              (local.get $l5)))
          (local.tee $l15
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l5)
                  (i32.const 64))
                (i32.const 8)))))
        (local.set $l13
          (i64.sub
            (i64.sub
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (i32.const 48))
                  (i32.const 8)))
              (i64.or
                (i64.shl
                  (i64.load
                    (i32.add
                      (i32.add
                        (local.get $l5)
                        (i32.const 32))
                      (i32.const 8)))
                  (i64.const 1))
                (i64.shr_u
                  (local.tee $p1
                    (i64.load offset=32
                      (local.get $l5)))
                  (i64.const 63))))
            (i64.extend_i32_u
              (i64.lt_u
                (local.tee $p4
                  (i64.load offset=48
                    (local.get $l5)))
                (local.tee $p1
                  (i64.shl
                    (local.get $p1)
                    (i64.const 1)))))))
        (local.set $p4
          (i64.sub
            (local.get $p4)
            (local.get $p1))))
      (call $__multi3
        (i32.add
          (local.get $l5)
          (i32.const 16))
        (local.get $p3)
        (local.get $l14)
        (i64.const 3)
        (i64.const 0))
      (call $__multi3
        (local.get $l5)
        (local.get $p3)
        (local.get $l14)
        (i64.const 5)
        (i64.const 0))
      (local.set $l12
        (i64.or
          (i64.add
            (local.tee $p3
              (i64.add
                (local.tee $p2
                  (i64.add
                    (local.get $l15)
                    (i64.extend_i32_u
                      (i64.lt_u
                        (local.tee $p3
                          (i64.add
                            (local.get $p2)
                            (i64.extend_i32_u
                              (select
                                (i64.gt_u
                                  (local.tee $p4
                                    (i64.add
                                      (local.tee $p1
                                        (i64.and
                                          (local.get $p2)
                                          (i64.const 1)))
                                      (local.get $p4)))
                                  (local.get $p3))
                                (i64.gt_u
                                  (local.tee $p1
                                    (i64.add
                                      (local.get $l13)
                                      (i64.extend_i32_u
                                        (i64.lt_u
                                          (local.get $p4)
                                          (local.get $p1)))))
                                  (local.get $l14))
                                (i64.eq
                                  (local.get $p1)
                                  (local.get $l14))))))
                        (local.get $p2)))))
                (i64.extend_i32_u
                  (i64.lt_u
                    (local.tee $p2
                      (i64.add
                        (local.get $p3)
                        (i64.extend_i32_u
                          (i32.and
                            (i64.lt_u
                              (local.get $p2)
                              (i64.const 9223090561878065152))
                            (select
                              (i64.gt_u
                                (local.get $p4)
                                (i64.load offset=16
                                  (local.get $l5)))
                              (i64.gt_u
                                (local.get $p1)
                                (local.tee $p2
                                  (i64.load
                                    (i32.add
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 16))
                                      (i32.const 8)))))
                              (i64.eq
                                (local.get $p1)
                                (local.get $p2)))))))
                    (local.get $p3)))))
            (i64.extend_i32_u
              (i64.lt_u
                (local.tee $p1
                  (i64.add
                    (local.get $p2)
                    (i64.extend_i32_u
                      (i32.and
                        (i64.lt_u
                          (local.get $p3)
                          (i64.const 9223090561878065152))
                        (select
                          (i64.gt_u
                            (local.get $p4)
                            (i64.load
                              (local.get $l5)))
                          (i64.gt_u
                            (local.get $p1)
                            (local.tee $p4
                              (i64.load
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 8)))))
                          (i64.eq
                            (local.get $p1)
                            (local.get $p4)))))))
                (local.get $p2))))
          (local.get $l12))))
    (i64.store
      (local.get $p0)
      (local.get $p1))
    (i64.store offset=8
      (local.get $p0)
      (local.get $l12))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 336))))
  (func $__extenddftf2 (type $t24) (param $p0 i32) (param $p1 f64)
    (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i64) (local $l6 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i64.gt_u
            (i64.add
              (local.tee $l5
                (i64.and
                  (local.tee $l4
                    (i64.reinterpret_f64
                      (local.get $p1)))
                  (i64.const 9223372036854775807)))
              (i64.const -4503599627370496))
            (i64.const 9214364837600034815)))
        (local.set $l6
          (i64.shl
            (local.get $l5)
            (i64.const 60)))
        (local.set $l5
          (i64.add
            (i64.shr_u
              (local.get $l5)
              (i64.const 4))
            (i64.const 4323455642275676160)))
        (br $B0))
      (block $B2
        (br_if $B2
          (i64.lt_u
            (local.get $l5)
            (i64.const 9218868437227405312)))
        (local.set $l6
          (i64.shl
            (local.get $l4)
            (i64.const 60)))
        (local.set $l5
          (i64.or
            (i64.shr_u
              (local.get $l4)
              (i64.const 4))
            (i64.const 9223090561878065152)))
        (br $B0))
      (block $B3
        (br_if $B3
          (i32.eqz
            (i64.eqz
              (local.get $l5))))
        (local.set $l6
          (i64.const 0))
        (local.set $l5
          (i64.const 0))
        (br $B0))
      (call $__ashlti3
        (local.get $l2)
        (local.get $l5)
        (i64.const 0)
        (i32.add
          (local.tee $l3
            (select
              (i32.add
                (i32.clz
                  (i32.wrap_i64
                    (local.get $l4)))
                (i32.const 32))
              (i32.clz
                (i32.wrap_i64
                  (i64.shr_u
                    (local.get $l5)
                    (i64.const 32))))
              (i64.lt_u
                (local.get $l5)
                (i64.const 4294967296))))
          (i32.const 49)))
      (local.set $l5
        (i64.or
          (i64.xor
            (i64.load
              (i32.add
                (local.get $l2)
                (i32.const 8)))
            (i64.const 281474976710656))
          (i64.shl
            (i64.extend_i32_u
              (i32.sub
                (i32.const 15372)
                (local.get $l3)))
            (i64.const 48))))
      (local.set $l6
        (i64.load
          (local.get $l2))))
    (i64.store
      (local.get $p0)
      (local.get $l6))
    (i64.store offset=8
      (local.get $p0)
      (i64.or
        (local.get $l5)
        (i64.and
          (local.get $l4)
          (i64.const -9223372036854775808))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $__extendsftf2 (type $t25) (param $p0 i32) (param $p1 f32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_u
            (i32.add
              (local.tee $l4
                (i32.and
                  (local.tee $l3
                    (i32.reinterpret_f32
                      (local.get $p1)))
                  (i32.const 2147483647)))
              (i32.const -8388608))
            (i32.const 2130706431)))
        (local.set $l5
          (i64.add
            (i64.shl
              (i64.extend_i32_u
                (local.get $l4))
              (i64.const 25))
            (i64.const 4575657221408423936)))
        (local.set $l6
          (i64.const 0))
        (br $B0))
      (block $B2
        (br_if $B2
          (i32.lt_u
            (local.get $l4)
            (i32.const 2139095040)))
        (local.set $l5
          (i64.or
            (i64.shl
              (i64.extend_i32_u
                (local.get $l3))
              (i64.const 25))
            (i64.const 9223090561878065152)))
        (local.set $l6
          (i64.const 0))
        (br $B0))
      (block $B3
        (br_if $B3
          (local.get $l4))
        (local.set $l6
          (i64.const 0))
        (local.set $l5
          (i64.const 0))
        (br $B0))
      (call $__ashlti3
        (local.get $l2)
        (i64.extend_i32_u
          (local.get $l4))
        (i64.const 0)
        (i32.add
          (local.tee $l4
            (i32.clz
              (local.get $l4)))
          (i32.const 81)))
      (local.set $l5
        (i64.or
          (i64.xor
            (i64.load
              (i32.add
                (local.get $l2)
                (i32.const 8)))
            (i64.const 281474976710656))
          (i64.shl
            (i64.extend_i32_u
              (i32.sub
                (i32.const 16265)
                (local.get $l4)))
            (i64.const 48))))
      (local.set $l6
        (i64.load
          (local.get $l2))))
    (i64.store
      (local.get $p0)
      (local.get $l6))
    (i64.store offset=8
      (local.get $p0)
      (i64.or
        (local.get $l5)
        (i64.shl
          (i64.extend_i32_u
            (i32.and
              (local.get $l3)
              (i32.const -2147483648)))
          (i64.const 32))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $__floatsitf (type $t7) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p1))
        (local.set $l4
          (i64.const 0))
        (local.set $l5
          (i64.const 0))
        (br $B0))
      (call $__ashlti3
        (local.get $l2)
        (i64.extend_i32_u
          (local.tee $l3
            (i32.xor
              (i32.add
                (local.get $p1)
                (local.tee $l3
                  (i32.shr_s
                    (local.get $p1)
                    (i32.const 31))))
              (local.get $l3))))
        (i64.const 0)
        (i32.add
          (local.tee $l3
            (i32.clz
              (local.get $l3)))
          (i32.const 81)))
      (local.set $l5
        (i64.or
          (i64.add
            (i64.xor
              (i64.load
                (i32.add
                  (local.get $l2)
                  (i32.const 8)))
              (i64.const 281474976710656))
            (i64.shl
              (i64.extend_i32_u
                (i32.sub
                  (i32.const 16414)
                  (local.get $l3)))
              (i64.const 48)))
          (i64.shl
            (i64.extend_i32_u
              (i32.and
                (local.get $p1)
                (i32.const -2147483648)))
            (i64.const 32))))
      (local.set $l4
        (i64.load
          (local.get $l2))))
    (i64.store
      (local.get $p0)
      (local.get $l4))
    (i64.store offset=8
      (local.get $p0)
      (local.get $l5))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $__floatunsitf (type $t7) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p1))
        (local.set $l3
          (i64.const 0))
        (local.set $l4
          (i64.const 0))
        (br $B0))
      (call $__ashlti3
        (local.get $l2)
        (i64.extend_i32_u
          (local.get $p1))
        (i64.const 0)
        (i32.add
          (local.tee $p1
            (i32.clz
              (local.get $p1)))
          (i32.const 81)))
      (local.set $l4
        (i64.add
          (i64.xor
            (i64.load
              (i32.add
                (local.get $l2)
                (i32.const 8)))
            (i64.const 281474976710656))
          (i64.shl
            (i64.extend_i32_u
              (i32.sub
                (i32.const 16414)
                (local.get $p1)))
            (i64.const 48))))
      (local.set $l3
        (i64.load
          (local.get $l2))))
    (i64.store
      (local.get $p0)
      (local.get $l3))
    (i64.store offset=8
      (local.get $p0)
      (local.get $l4))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $__fe_getround (type $t2) (result i32)
    (i32.const 0))
  (func $__fe_raise_inexact (type $t2) (result i32)
    (i32.const 0))
  (func $__lshrti3 (type $t10) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i32)
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
  (func $__multf3 (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i64) (param $p4 i64)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i64) (local $l11 i64) (local $l12 i64) (local $l13 i64) (local $l14 i64) (local $l15 i64) (local $l16 i64) (local $l17 i64) (local $l18 i64) (local $l19 i64) (local $l20 i64) (local $l21 i64) (local $l22 i64) (local $l23 i64) (local $l24 i64)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 96))))
    (local.set $l11
      (i64.or
        (i64.shr_u
          (local.get $p3)
          (i64.const 49))
        (i64.shl
          (local.tee $l10
            (i64.and
              (local.get $p4)
              (i64.const 281474976710655)))
          (i64.const 15))))
    (local.set $l12
      (i64.and
        (i64.xor
          (local.get $p4)
          (local.get $p2))
        (i64.const -9223372036854775808)))
    (local.set $l14
      (i64.shr_u
        (local.tee $l13
          (i64.and
            (local.get $p2)
            (i64.const 281474976710655)))
        (i64.const 32)))
    (local.set $l15
      (i64.shr_u
        (local.get $l10)
        (i64.const 17)))
    (local.set $l6
      (i32.and
        (i32.wrap_i64
          (i64.shr_u
            (local.get $p4)
            (i64.const 48)))
        (i32.const 32767)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.lt_u
              (i32.add
                (local.tee $l7
                  (i32.and
                    (i32.wrap_i64
                      (i64.shr_u
                        (local.get $p2)
                        (i64.const 48)))
                    (i32.const 32767)))
                (i32.const -32767))
              (i32.const -32766)))
          (local.set $l8
            (i32.const 0))
          (br_if $B1
            (i32.gt_u
              (i32.add
                (local.get $l6)
                (i32.const -32767))
              (i32.const -32767))))
        (block $B3
          (br_if $B3
            (select
              (i64.eqz
                (local.get $p1))
              (i64.lt_u
                (local.tee $l16
                  (i64.and
                    (local.get $p2)
                    (i64.const 9223372036854775807)))
                (i64.const 9223090561878065152))
              (i64.eq
                (local.get $l16)
                (i64.const 9223090561878065152))))
          (local.set $l12
            (i64.or
              (local.get $p2)
              (i64.const 140737488355328)))
          (br $B0))
        (block $B4
          (br_if $B4
            (select
              (i64.eqz
                (local.get $p3))
              (i64.lt_u
                (local.tee $p2
                  (i64.and
                    (local.get $p4)
                    (i64.const 9223372036854775807)))
                (i64.const 9223090561878065152))
              (i64.eq
                (local.get $p2)
                (i64.const 9223090561878065152))))
          (local.set $l12
            (i64.or
              (local.get $p4)
              (i64.const 140737488355328)))
          (local.set $p1
            (local.get $p3))
          (br $B0))
        (block $B5
          (br_if $B5
            (i64.ne
              (i64.or
                (local.get $p1)
                (i64.xor
                  (local.get $l16)
                  (i64.const 9223090561878065152)))
              (i64.const 0)))
          (block $B6
            (br_if $B6
              (i32.eqz
                (i64.eqz
                  (i64.or
                    (local.get $p3)
                    (local.get $p2)))))
            (local.set $l12
              (i64.const 9223231299366420480))
            (local.set $p1
              (i64.const 0))
            (br $B0))
          (local.set $l12
            (i64.or
              (local.get $l12)
              (i64.const 9223090561878065152)))
          (local.set $p1
            (i64.const 0))
          (br $B0))
        (block $B7
          (br_if $B7
            (i64.ne
              (i64.or
                (local.get $p3)
                (i64.xor
                  (local.get $p2)
                  (i64.const 9223090561878065152)))
              (i64.const 0)))
          (local.set $p2
            (i64.or
              (local.get $p1)
              (local.get $l16)))
          (local.set $p1
            (i64.const 0))
          (block $B8
            (br_if $B8
              (i32.eqz
                (i64.eqz
                  (local.get $p2))))
            (local.set $l12
              (i64.const 9223231299366420480))
            (br $B0))
          (local.set $l12
            (i64.or
              (local.get $l12)
              (i64.const 9223090561878065152)))
          (br $B0))
        (block $B9
          (br_if $B9
            (i64.ne
              (i64.or
                (local.get $p1)
                (local.get $l16))
              (i64.const 0)))
          (local.set $p1
            (i64.const 0))
          (br $B0))
        (block $B10
          (br_if $B10
            (i64.ne
              (i64.or
                (local.get $p3)
                (local.get $p2))
              (i64.const 0)))
          (local.set $p1
            (i64.const 0))
          (br $B0))
        (local.set $l8
          (i32.const 0))
        (block $B11
          (br_if $B11
            (i64.gt_u
              (local.get $l16)
              (i64.const 281474976710655)))
          (call $__ashlti3
            (i32.add
              (local.get $l5)
              (i32.const 80))
            (local.get $p1)
            (local.get $l13)
            (i32.add
              (local.tee $l8
                (i32.wrap_i64
                  (i64.add
                    (i64.clz
                      (select
                        (local.get $p1)
                        (local.get $l13)
                        (local.tee $l8
                          (i64.eqz
                            (local.get $l13)))))
                    (i64.extend_i32_u
                      (i32.shl
                        (local.get $l8)
                        (i32.const 6))))))
              (i32.const -15)))
          (local.set $l8
            (i32.sub
              (i32.const 16)
              (local.get $l8)))
          (local.set $l14
            (i64.shr_u
              (local.tee $l13
                (i64.load
                  (i32.add
                    (local.get $l5)
                    (i32.const 88))))
              (i64.const 32)))
          (local.set $p1
            (i64.load offset=80
              (local.get $l5))))
        (br_if $B1
          (i64.gt_u
            (local.get $p2)
            (i64.const 281474976710655)))
        (call $__ashlti3
          (i32.add
            (local.get $l5)
            (i32.const 64))
          (local.get $p3)
          (local.get $l10)
          (i32.add
            (local.tee $l9
              (i32.wrap_i64
                (i64.add
                  (i64.clz
                    (select
                      (local.get $p3)
                      (local.get $l10)
                      (local.tee $l9
                        (i64.eqz
                          (local.get $l10)))))
                  (i64.extend_i32_u
                    (i32.shl
                      (local.get $l9)
                      (i32.const 6))))))
            (i32.const -15)))
        (local.set $l8
          (i32.add
            (i32.sub
              (local.get $l8)
              (local.get $l9))
            (i32.const 16)))
        (local.set $l11
          (i64.or
            (i64.shr_u
              (local.tee $p3
                (i64.load offset=64
                  (local.get $l5)))
              (i64.const 49))
            (i64.shl
              (local.tee $p2
                (i64.load
                  (i32.add
                    (local.get $l5)
                    (i32.const 72))))
              (i64.const 15))))
        (local.set $l15
          (i64.shr_u
            (local.get $p2)
            (i64.const 17))))
      (local.set $p1
        (i64.add
          (i64.extend_i32_u
            (i64.lt_u
              (local.tee $l18
                (i64.add
                  (local.tee $l10
                    (i64.shl
                      (local.tee $l16
                        (i64.add
                          (local.tee $l17
                            (i64.mul
                              (local.tee $p2
                                (i64.and
                                  (i64.shl
                                    (local.get $p3)
                                    (i64.const 15))
                                  (i64.const 4294934528)))
                              (local.tee $p4
                                (i64.shr_u
                                  (local.get $p1)
                                  (i64.const 32)))))
                          (i64.mul
                            (local.tee $p3
                              (i64.and
                                (i64.shr_u
                                  (local.get $p3)
                                  (i64.const 17))
                                (i64.const 4294967295)))
                            (local.tee $p1
                              (i64.and
                                (local.get $p1)
                                (i64.const 4294967295))))))
                      (i64.const 32)))
                  (i64.mul
                    (local.get $p2)
                    (local.get $p1))))
              (local.get $l10)))
          (local.tee $l23
            (i64.add
              (local.tee $l17
                (i64.add
                  (local.tee $l11
                    (i64.add
                      (local.tee $l20
                        (i64.add
                          (local.tee $l19
                            (i64.mul
                              (local.get $p2)
                              (local.tee $l10
                                (i64.and
                                  (local.get $l13)
                                  (i64.const 4294967295)))))
                          (i64.mul
                            (local.get $p3)
                            (local.get $p4))))
                      (i64.mul
                        (local.tee $l13
                          (i64.and
                            (local.get $l11)
                            (i64.const 4294967295)))
                        (local.get $p1))))
                  (i64.or
                    (i64.shr_u
                      (local.get $l16)
                      (i64.const 32))
                    (i64.shl
                      (i64.extend_i32_u
                        (i64.lt_u
                          (local.get $l16)
                          (local.get $l17)))
                      (i64.const 32)))))
              (i64.shl
                (local.tee $l15
                  (i64.add
                    (local.tee $l22
                      (i64.add
                        (local.tee $l14
                          (i64.add
                            (local.tee $l21
                              (i64.mul
                                (local.get $p2)
                                (local.tee $l16
                                  (i64.or
                                    (local.get $l14)
                                    (i64.const 65536)))))
                            (i64.mul
                              (local.get $p3)
                              (local.get $l10))))
                        (i64.mul
                          (local.get $l13)
                          (local.get $p4))))
                    (i64.mul
                      (local.tee $p2
                        (i64.or
                          (i64.and
                            (local.get $l15)
                            (i64.const 2147483647))
                          (i64.const 2147483648)))
                      (local.get $p1))))
                (i64.const 32))))))
      (local.set $l6
        (i32.add
          (i32.add
            (i32.add
              (local.get $l7)
              (local.get $l6))
            (local.get $l8))
          (i32.const -16383)))
      (block $B12
        (block $B13
          (br_if $B13
            (i64.eqz
              (i64.and
                (local.tee $p4
                  (i64.add
                    (i64.add
                      (i64.add
                        (i64.add
                          (i64.add
                            (i64.add
                              (i64.add
                                (i64.extend_i32_u
                                  (i64.lt_u
                                    (local.tee $p3
                                      (i64.add
                                        (local.tee $l24
                                          (i64.mul
                                            (local.get $l13)
                                            (local.get $l10)))
                                        (i64.mul
                                          (local.get $p3)
                                          (local.get $l16))))
                                    (local.get $l24)))
                                (i64.extend_i32_u
                                  (i64.lt_u
                                    (local.tee $p4
                                      (i64.add
                                        (local.get $p3)
                                        (i64.mul
                                          (local.get $p2)
                                          (local.get $p4))))
                                    (local.get $p3))))
                              (i64.mul
                                (local.get $p2)
                                (local.get $l16)))
                            (i64.extend_i32_u
                              (i64.lt_u
                                (local.tee $p3
                                  (i64.add
                                    (local.get $p4)
                                    (i64.add
                                      (i64.extend_i32_u
                                        (i64.lt_u
                                          (local.get $l20)
                                          (local.get $l19)))
                                      (i64.extend_i32_u
                                        (i64.lt_u
                                          (local.get $l11)
                                          (local.get $l20))))))
                                (local.get $p4))))
                          (i64.or
                            (i64.shl
                              (i64.extend_i32_u
                                (i64.lt_u
                                  (local.tee $p2
                                    (i64.add
                                      (local.tee $p4
                                        (i64.mul
                                          (local.get $p2)
                                          (local.get $l10)))
                                      (i64.mul
                                        (local.get $l13)
                                        (local.get $l16))))
                                  (local.get $p4)))
                              (i64.const 32))
                            (i64.shr_u
                              (local.get $p2)
                              (i64.const 32))))
                        (i64.extend_i32_u
                          (i64.lt_u
                            (local.tee $p2
                              (i64.add
                                (local.get $p3)
                                (i64.shl
                                  (local.get $p2)
                                  (i64.const 32))))
                            (local.get $p3))))
                      (i64.extend_i32_u
                        (i64.lt_u
                          (local.tee $p4
                            (i64.add
                              (local.get $p2)
                              (i64.or
                                (i64.shr_u
                                  (local.get $l15)
                                  (i64.const 32))
                                (i64.shl
                                  (i64.add
                                    (i64.add
                                      (i64.extend_i32_u
                                        (i64.lt_u
                                          (local.get $l14)
                                          (local.get $l21)))
                                      (i64.extend_i32_u
                                        (i64.lt_u
                                          (local.get $l22)
                                          (local.get $l14))))
                                    (i64.extend_i32_u
                                      (i64.lt_u
                                        (local.get $l15)
                                        (local.get $l22))))
                                  (i64.const 32)))))
                          (local.get $p2))))
                    (i64.extend_i32_u
                      (i64.lt_u
                        (local.tee $p2
                          (i64.add
                            (local.get $p4)
                            (i64.add
                              (i64.extend_i32_u
                                (i64.lt_u
                                  (local.get $l17)
                                  (local.get $l11)))
                              (i64.extend_i32_u
                                (i64.lt_u
                                  (local.get $l23)
                                  (local.get $l17))))))
                        (local.get $p4)))))
                (i64.const 281474976710656))))
          (local.set $l6
            (i32.add
              (local.get $l6)
              (i32.const 1)))
          (br $B12))
        (local.set $p3
          (i64.shr_u
            (local.get $l18)
            (i64.const 63)))
        (local.set $p4
          (i64.or
            (i64.shl
              (local.get $p4)
              (i64.const 1))
            (i64.shr_u
              (local.get $p2)
              (i64.const 63))))
        (local.set $p2
          (i64.or
            (i64.shl
              (local.get $p2)
              (i64.const 1))
            (i64.shr_u
              (local.get $p1)
              (i64.const 63))))
        (local.set $l18
          (i64.shl
            (local.get $l18)
            (i64.const 1)))
        (local.set $p1
          (i64.or
            (local.get $p3)
            (i64.shl
              (local.get $p1)
              (i64.const 1)))))
      (block $B14
        (br_if $B14
          (i32.lt_s
            (local.get $l6)
            (i32.const 32767)))
        (local.set $l12
          (i64.or
            (local.get $l12)
            (i64.const 9223090561878065152)))
        (local.set $p1
          (i64.const 0))
        (br $B0))
      (block $B15
        (block $B16
          (br_if $B16
            (i32.gt_s
              (local.get $l6)
              (i32.const 0)))
          (block $B17
            (br_if $B17
              (i32.lt_u
                (local.tee $l7
                  (i32.sub
                    (i32.const 1)
                    (local.get $l6)))
                (i32.const 128)))
            (local.set $p1
              (i64.const 0))
            (br $B0))
          (call $__ashlti3
            (i32.add
              (local.get $l5)
              (i32.const 48))
            (local.get $l18)
            (local.get $p1)
            (local.tee $l6
              (i32.add
                (local.get $l6)
                (i32.const 127))))
          (call $__ashlti3
            (i32.add
              (local.get $l5)
              (i32.const 32))
            (local.get $p2)
            (local.get $p4)
            (local.get $l6))
          (call $__lshrti3
            (i32.add
              (local.get $l5)
              (i32.const 16))
            (local.get $l18)
            (local.get $p1)
            (local.get $l7))
          (call $__lshrti3
            (local.get $l5)
            (local.get $p2)
            (local.get $p4)
            (local.get $l7))
          (local.set $l18
            (i64.or
              (i64.or
                (i64.load offset=32
                  (local.get $l5))
                (i64.load offset=16
                  (local.get $l5)))
              (i64.extend_i32_u
                (i64.ne
                  (i64.or
                    (i64.load offset=48
                      (local.get $l5))
                    (i64.load
                      (i32.add
                        (i32.add
                          (local.get $l5)
                          (i32.const 48))
                        (i32.const 8))))
                  (i64.const 0)))))
          (local.set $p1
            (i64.or
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (i32.const 32))
                  (i32.const 8)))
              (i64.load
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (i32.const 16))
                  (i32.const 8)))))
          (local.set $p4
            (i64.load
              (i32.add
                (local.get $l5)
                (i32.const 8))))
          (local.set $p2
            (i64.load
              (local.get $l5)))
          (br $B15))
        (local.set $p4
          (i64.or
            (i64.shl
              (i64.extend_i32_u
                (local.get $l6))
              (i64.const 48))
            (i64.and
              (local.get $p4)
              (i64.const 281474976710655)))))
      (local.set $l12
        (i64.or
          (local.get $p4)
          (local.get $l12)))
      (block $B18
        (br_if $B18
          (select
            (i64.eqz
              (local.get $l18))
            (i64.gt_s
              (local.get $p1)
              (i64.const -1))
            (i64.eq
              (local.get $p1)
              (i64.const -9223372036854775808))))
        (local.set $l12
          (i64.add
            (local.get $l12)
            (i64.extend_i32_u
              (i64.lt_u
                (local.tee $p1
                  (i64.add
                    (local.get $p2)
                    (i64.const 1)))
                (local.get $p2)))))
        (br $B0))
      (block $B19
        (br_if $B19
          (i64.eq
            (i64.or
              (local.get $l18)
              (i64.xor
                (local.get $p1)
                (i64.const -9223372036854775808)))
            (i64.const 0)))
        (local.set $p1
          (local.get $p2))
        (br $B0))
      (local.set $l12
        (i64.add
          (local.get $l12)
          (i64.extend_i32_u
            (i64.lt_u
              (local.tee $p1
                (i64.add
                  (local.get $p2)
                  (i64.and
                    (local.get $p2)
                    (i64.const 1))))
              (local.get $p2))))))
    (i64.store
      (local.get $p0)
      (local.get $p1))
    (i64.store offset=8
      (local.get $p0)
      (local.get $l12))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 96))))
  (func $__multi3 (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i64) (param $p4 i64)
    (local $l5 i64)
    (i64.store offset=8
      (local.get $p0)
      (i64.add
        (i64.add
          (i64.add
            (i64.add
              (i64.mul
                (local.get $p4)
                (local.get $p1))
              (i64.mul
                (local.get $p2)
                (local.get $p3)))
            (i64.mul
              (local.tee $p4
                (i64.shr_u
                  (local.get $p3)
                  (i64.const 32)))
              (local.tee $p2
                (i64.shr_u
                  (local.get $p1)
                  (i64.const 32)))))
          (i64.shr_u
            (local.tee $p3
              (i64.add
                (i64.shr_u
                  (local.tee $l5
                    (i64.mul
                      (local.tee $p3
                        (i64.and
                          (local.get $p3)
                          (i64.const 4294967295)))
                      (local.tee $p1
                        (i64.and
                          (local.get $p1)
                          (i64.const 4294967295)))))
                  (i64.const 32))
                (i64.mul
                  (local.get $p3)
                  (local.get $p2))))
            (i64.const 32)))
        (i64.shr_u
          (local.tee $p3
            (i64.add
              (i64.and
                (local.get $p3)
                (i64.const 4294967295))
              (i64.mul
                (local.get $p4)
                (local.get $p1))))
          (i64.const 32))))
    (i64.store
      (local.get $p0)
      (i64.or
        (i64.shl
          (local.get $p3)
          (i64.const 32))
        (i64.and
          (local.get $l5)
          (i64.const 4294967295)))))
  (func $__subtf3 (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i64) (param $p4 i64)
    (local $l5 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $__addtf3
      (local.get $l5)
      (local.get $p1)
      (local.get $p2)
      (local.get $p3)
      (i64.xor
        (local.get $p4)
        (i64.const -9223372036854775808)))
    (local.set $p1
      (i64.load
        (local.get $l5)))
    (i64.store offset=8
      (local.get $p0)
      (i64.load
        (i32.add
          (local.get $l5)
          (i32.const 8))))
    (i64.store
      (local.get $p0)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 16))))
  (func $__trunctfdf2 (type $t26) (param $p0 i64) (param $p1 i64) (result f64)
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
  (func $__trunctfsf2 (type $t27) (param $p0 i64) (param $p1 i64) (result f32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
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
              (local.tee $l5
                (i64.and
                  (local.get $p1)
                  (i64.const 9223372036854775807)))
              (i64.const -4575938696385134592))
            (i64.add
              (local.get $l5)
              (i64.const -4647433340469641216))))
        (local.set $l3
          (i32.wrap_i64
            (i64.shr_u
              (local.get $p1)
              (i64.const 25))))
        (block $B2
          (br_if $B2
            (select
              (i64.eqz
                (local.get $p0))
              (i64.lt_u
                (local.tee $l5
                  (i64.and
                    (local.get $p1)
                    (i64.const 33554431)))
                (i64.const 16777216))
              (i64.eq
                (local.get $l5)
                (i64.const 16777216))))
          (local.set $l4
            (i32.add
              (local.get $l3)
              (i32.const 1073741825)))
          (br $B0))
        (local.set $l4
          (i32.add
            (local.get $l3)
            (i32.const 1073741824)))
        (br_if $B0
          (i64.ne
            (i64.or
              (local.get $p0)
              (i64.xor
                (local.get $l5)
                (i64.const 16777216)))
            (i64.const 0)))
        (local.set $l4
          (i32.add
            (local.get $l4)
            (i32.and
              (local.get $l3)
              (i32.const 1))))
        (br $B0))
      (block $B3
        (br_if $B3
          (select
            (i64.eqz
              (local.get $p0))
            (i64.lt_u
              (local.get $l5)
              (i64.const 9223090561878065152))
            (i64.eq
              (local.get $l5)
              (i64.const 9223090561878065152))))
        (local.set $l4
          (i32.or
            (i32.and
              (i32.wrap_i64
                (i64.shr_u
                  (local.get $p1)
                  (i64.const 25)))
              (i32.const 4194303))
            (i32.const 2143289344)))
        (br $B0))
      (local.set $l4
        (i32.const 2139095040))
      (br_if $B0
        (i64.gt_u
          (local.get $l5)
          (i64.const 4647433340469641215)))
      (local.set $l4
        (i32.const 0))
      (br_if $B0
        (i32.lt_u
          (local.tee $l3
            (i32.wrap_i64
              (i64.shr_u
                (local.get $l5)
                (i64.const 48))))
          (i32.const 16145)))
      (call $__ashlti3
        (i32.add
          (local.get $l2)
          (i32.const 16))
        (local.get $p0)
        (local.tee $l5
          (i64.or
            (i64.and
              (local.get $p1)
              (i64.const 281474976710655))
            (i64.const 281474976710656)))
        (i32.add
          (local.get $l3)
          (i32.const -16129)))
      (call $__lshrti3
        (local.get $l2)
        (local.get $p0)
        (local.get $l5)
        (i32.sub
          (i32.const 16257)
          (local.get $l3)))
      (local.set $l4
        (i32.wrap_i64
          (i64.shr_u
            (local.tee $l5
              (i64.load
                (i32.add
                  (local.get $l2)
                  (i32.const 8))))
            (i64.const 25))))
      (block $B4
        (br_if $B4
          (select
            (i64.eqz
              (local.tee $p0
                (i64.or
                  (i64.load
                    (local.get $l2))
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
                      (i64.const 0))))))
            (i64.lt_u
              (local.tee $l5
                (i64.and
                  (local.get $l5)
                  (i64.const 33554431)))
              (i64.const 16777216))
            (i64.eq
              (local.get $l5)
              (i64.const 16777216))))
        (local.set $l4
          (i32.add
            (local.get $l4)
            (i32.const 1)))
        (br $B0))
      (br_if $B0
        (i64.ne
          (i64.or
            (local.get $p0)
            (i64.xor
              (local.get $l5)
              (i64.const 16777216)))
          (i64.const 0)))
      (local.set $l4
        (i32.add
          (i32.and
            (local.get $l4)
            (i32.const 1))
          (local.get $l4))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (f32.reinterpret_i32
      (i32.or
        (local.get $l4)
        (i32.and
          (i32.wrap_i64
            (i64.shr_u
              (local.get $p1)
              (i64.const 32)))
          (i32.const -2147483648)))))
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
                                          (i32.load offset=3832
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
                                        (i32.const 3880))))
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
                                          (i32.const 3872)))))
                                  (i32.store offset=3832
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
                                  (i32.load offset=3840
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
                                                (i32.const 3880))))))
                                      (local.tee $l6
                                        (i32.add
                                          (local.get $l6)
                                          (i32.const 3872)))))
                                  (i32.store offset=3832
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
                                    (i32.const 3872)))
                                (local.set $l4
                                  (i32.load offset=3852
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
                                    (i32.store offset=3832
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
                              (i32.store offset=3852
                                (i32.const 0)
                                (local.get $l6))
                              (i32.store offset=3840
                                (i32.const 0)
                                (local.get $l5))
                              (br $B0))
                            (br_if $B10
                              (i32.eqz
                                (local.tee $l9
                                  (i32.load offset=3836
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
                                          (i32.const 4136)))))
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
                                  (i32.load offset=3848
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
                                (i32.load offset=3836
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
                                          (i32.const 4136)))))
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
                                      (i32.const 4136)))))
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
                                (i32.load offset=3840
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
                                (i32.load offset=3848
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
                                (i32.load offset=3840
                                  (i32.const 0)))
                              (local.get $l3)))
                          (local.set $l4
                            (i32.load offset=3852
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
                              (i32.store offset=3840
                                (i32.const 0)
                                (local.get $l5))
                              (i32.store offset=3852
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
                            (i32.store offset=3852
                              (i32.const 0)
                              (i32.const 0))
                            (i32.store offset=3840
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
                                (i32.load offset=3844
                                  (i32.const 0)))
                              (local.get $l3)))
                          (i32.store offset=3844
                            (i32.const 0)
                            (local.tee $l4
                              (i32.sub
                                (local.get $l6)
                                (local.get $l3))))
                          (i32.store offset=3856
                            (i32.const 0)
                            (local.tee $l5
                              (i32.add
                                (local.tee $p0
                                  (i32.load offset=3856
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
                                (i32.load offset=4304
                                  (i32.const 0))))
                            (local.set $l4
                              (i32.load offset=4312
                                (i32.const 0)))
                            (br $B44))
                          (i64.store offset=4316 align=4
                            (i32.const 0)
                            (i64.const -1))
                          (i64.store offset=4308 align=4
                            (i32.const 0)
                            (i64.const 17592186048512))
                          (i32.store offset=4304
                            (i32.const 0)
                            (i32.xor
                              (i32.and
                                (i32.add
                                  (local.get $l1)
                                  (i32.const 12))
                                (i32.const -16))
                              (i32.const 1431655768)))
                          (i32.store offset=4324
                            (i32.const 0)
                            (i32.const 0))
                          (i32.store offset=4276
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
                                (i32.load offset=4272
                                  (i32.const 0)))))
                          (br_if $B0
                            (i32.le_u
                              (local.tee $l9
                                (i32.add
                                  (local.tee $l5
                                    (i32.load offset=4264
                                      (i32.const 0)))
                                  (local.get $l8)))
                              (local.get $l5)))
                          (br_if $B0
                            (i32.gt_u
                              (local.get $l9)
                              (local.get $l4))))
                        (br_if $B5
                          (i32.and
                            (i32.load8_u offset=4276
                              (i32.const 0))
                            (i32.const 4)))
                        (block $B47
                          (block $B48
                            (block $B49
                              (br_if $B49
                                (i32.eqz
                                  (local.tee $l4
                                    (i32.load offset=3856
                                      (i32.const 0)))))
                              (local.set $p0
                                (i32.const 4280))
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
                                          (i32.load offset=4308
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
                                    (i32.load offset=4272
                                      (i32.const 0)))))
                              (br_if $B6
                                (i32.le_u
                                  (local.tee $l5
                                    (i32.add
                                      (local.tee $l4
                                        (i32.load offset=4264
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
                                        (i32.load offset=4312
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
                (i32.store offset=4276
                  (i32.const 0)
                  (i32.or
                    (i32.load offset=4276
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
            (i32.store offset=4264
              (i32.const 0)
              (local.tee $p0
                (i32.add
                  (i32.load offset=4264
                    (i32.const 0))
                  (local.get $l2))))
            (block $B57
              (br_if $B57
                (i32.le_u
                  (local.get $p0)
                  (i32.load offset=4268
                    (i32.const 0))))
              (i32.store offset=4268
                (i32.const 0)
                (local.get $p0)))
            (block $B58
              (block $B59
                (block $B60
                  (block $B61
                    (br_if $B61
                      (i32.eqz
                        (local.tee $l4
                          (i32.load offset=3856
                            (i32.const 0)))))
                    (local.set $p0
                      (i32.const 4280))
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
                            (i32.load offset=3848
                              (i32.const 0)))))
                      (br_if $B63
                        (i32.ge_u
                          (local.get $l6)
                          (local.get $p0))))
                    (i32.store offset=3848
                      (i32.const 0)
                      (local.get $l6)))
                  (local.set $p0
                    (i32.const 0))
                  (i32.store offset=4284
                    (i32.const 0)
                    (local.get $l2))
                  (i32.store offset=4280
                    (i32.const 0)
                    (local.get $l6))
                  (i32.store offset=3864
                    (i32.const 0)
                    (i32.const -1))
                  (i32.store offset=3868
                    (i32.const 0)
                    (i32.load offset=4304
                      (i32.const 0)))
                  (i32.store offset=4292
                    (i32.const 0)
                    (i32.const 0))
                  (loop $L65
                    (i32.store
                      (i32.add
                        (local.tee $l4
                          (i32.shl
                            (local.get $p0)
                            (i32.const 3)))
                        (i32.const 3880))
                      (local.tee $l5
                        (i32.add
                          (local.get $l4)
                          (i32.const 3872))))
                    (i32.store
                      (i32.add
                        (local.get $l4)
                        (i32.const 3884))
                      (local.get $l5))
                    (br_if $L65
                      (i32.ne
                        (local.tee $p0
                          (i32.add
                            (local.get $p0)
                            (i32.const 1)))
                        (i32.const 32))))
                  (i32.store offset=3844
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
                  (i32.store offset=3856
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
                  (i32.store offset=3860
                    (i32.const 0)
                    (i32.load offset=4320
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
                (i32.store offset=3856
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
                (i32.store offset=3844
                  (i32.const 0)
                  (local.tee $p0
                    (i32.sub
                      (local.tee $l6
                        (i32.add
                          (i32.load offset=3844
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
                (i32.store offset=3860
                  (i32.const 0)
                  (i32.load offset=4320
                    (i32.const 0)))
                (br $B58))
              (block $B66
                (br_if $B66
                  (i32.ge_u
                    (local.get $l6)
                    (local.tee $l8
                      (i32.load offset=3848
                        (i32.const 0)))))
                (i32.store offset=3848
                  (i32.const 0)
                  (local.get $l6))
                (local.set $l8
                  (local.get $l6)))
              (local.set $l5
                (i32.add
                  (local.get $l6)
                  (local.get $l2)))
              (local.set $p0
                (i32.const 4280))
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
                          (i32.const 4280))
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
                        (i32.store offset=3856
                          (i32.const 0)
                          (local.get $l3))
                        (i32.store offset=3844
                          (i32.const 0)
                          (local.tee $p0
                            (i32.add
                              (i32.load offset=3844
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
                            (i32.load offset=3852
                              (i32.const 0))
                            (local.get $l2)))
                        (i32.store offset=3852
                          (i32.const 0)
                          (local.get $l3))
                        (i32.store offset=3840
                          (i32.const 0)
                          (local.tee $p0
                            (i32.add
                              (i32.load offset=3840
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
                                    (i32.const 3872)))))
                            (block $B82
                              (br_if $B82
                                (i32.ne
                                  (local.tee $p0
                                    (i32.load offset=12
                                      (local.get $l2)))
                                  (local.get $l4)))
                              (i32.store offset=3832
                                (i32.const 0)
                                (i32.and
                                  (i32.load offset=3832
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
                                        (i32.const 4136))))
                                  (local.get $l2)))
                              (i32.store
                                (local.get $p0)
                                (local.get $l6))
                              (br_if $B87
                                (local.get $l6))
                              (i32.store offset=3836
                                (i32.const 0)
                                (i32.and
                                  (i32.load offset=3836
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
                            (i32.const 3872)))
                        (block $B91
                          (block $B92
                            (br_if $B92
                              (i32.and
                                (local.tee $l5
                                  (i32.load offset=3832
                                    (i32.const 0)))
                                (local.tee $l4
                                  (i32.shl
                                    (i32.const 1)
                                    (local.get $l4)))))
                            (i32.store offset=3832
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
                          (i32.const 4136)))
                      (block $B94
                        (block $B95
                          (br_if $B95
                            (i32.and
                              (local.tee $l6
                                (i32.load offset=3836
                                  (i32.const 0)))
                              (local.tee $l8
                                (i32.shl
                                  (i32.const 1)
                                  (local.get $p0)))))
                          (i32.store offset=3836
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
                    (i32.store offset=3844
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
                    (i32.store offset=3856
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
                    (i32.store offset=3860
                      (i32.const 0)
                      (i32.load offset=4320
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
                      (i64.load offset=4288 align=4
                        (i32.const 0)))
                    (i64.store offset=8 align=4
                      (local.get $l8)
                      (i64.load offset=4280 align=4
                        (i32.const 0)))
                    (i32.store offset=4288
                      (i32.const 0)
                      (i32.add
                        (local.get $l8)
                        (i32.const 8)))
                    (i32.store offset=4284
                      (i32.const 0)
                      (local.get $l2))
                    (i32.store offset=4280
                      (i32.const 0)
                      (local.get $l6))
                    (i32.store offset=4292
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
                          (i32.const 3872)))
                      (block $B99
                        (block $B100
                          (br_if $B100
                            (i32.and
                              (local.tee $l6
                                (i32.load offset=3832
                                  (i32.const 0)))
                              (local.tee $l5
                                (i32.shl
                                  (i32.const 1)
                                  (local.get $l5)))))
                          (i32.store offset=3832
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
                        (i32.const 4136)))
                    (block $B102
                      (block $B103
                        (br_if $B103
                          (i32.and
                            (local.tee $l6
                              (i32.load offset=3836
                                (i32.const 0)))
                            (local.tee $l8
                              (i32.shl
                                (i32.const 1)
                                (local.get $p0)))))
                        (i32.store offset=3836
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
                  (i32.load offset=3844
                    (i32.const 0)))
                (local.get $l3)))
            (i32.store offset=3844
              (i32.const 0)
              (local.tee $l4
                (i32.sub
                  (local.get $p0)
                  (local.get $l3))))
            (i32.store offset=3856
              (i32.const 0)
              (local.tee $l5
                (i32.add
                  (local.tee $p0
                    (i32.load offset=3856
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
                        (i32.const 4136))))))
              (i32.store
                (local.get $p0)
                (local.get $l6))
              (br_if $B106
                (local.get $l6))
              (i32.store offset=3836
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
                (i32.const 3872)))
            (block $B112
              (block $B113
                (br_if $B113
                  (i32.and
                    (local.tee $l5
                      (i32.load offset=3832
                        (i32.const 0)))
                    (local.tee $l4
                      (i32.shl
                        (i32.const 1)
                        (local.get $l4)))))
                (i32.store offset=3832
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
              (i32.const 4136)))
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
                (i32.store offset=3836
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
                      (i32.const 4136))))))
            (i32.store
              (local.get $p0)
              (local.get $l8))
            (br_if $B120
              (local.get $l8))
            (i32.store offset=3836
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
              (i32.const 3872)))
          (local.set $p0
            (i32.load offset=3852
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
              (i32.store offset=3832
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
        (i32.store offset=3852
          (i32.const 0)
          (local.get $l5))
        (i32.store offset=3840
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
  (func $dlfree (type $t3) (param $p0 i32)
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
              (i32.load offset=3848
                (i32.const 0)))))
        (local.set $p0
          (i32.add
            (local.get $l2)
            (local.get $p0)))
        (block $B2
          (br_if $B2
            (i32.eq
              (i32.load offset=3852
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
                    (i32.const 3872)))))
            (block $B4
              (br_if $B4
                (i32.ne
                  (local.tee $l2
                    (i32.load offset=12
                      (local.get $l1)))
                  (local.get $l4)))
              (i32.store offset=3832
                (i32.const 0)
                (i32.and
                  (i32.load offset=3832
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
                        (i32.const 4136))))
                  (local.get $l1)))
              (i32.store
                (local.get $l2)
                (local.get $l6))
              (br_if $B9
                (local.get $l6))
              (i32.store offset=3836
                (i32.const 0)
                (i32.and
                  (i32.load offset=3836
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
        (i32.store offset=3840
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
                (i32.load offset=3856
                  (i32.const 0))
                (local.get $l3)))
            (i32.store offset=3856
              (i32.const 0)
              (local.get $l1))
            (i32.store offset=3844
              (i32.const 0)
              (local.tee $p0
                (i32.add
                  (i32.load offset=3844
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
                (i32.load offset=3852
                  (i32.const 0))))
            (i32.store offset=3840
              (i32.const 0)
              (i32.const 0))
            (i32.store offset=3852
              (i32.const 0)
              (i32.const 0))
            (return))
          (block $B15
            (br_if $B15
              (i32.ne
                (i32.load offset=3852
                  (i32.const 0))
                (local.get $l3)))
            (i32.store offset=3852
              (i32.const 0)
              (local.get $l1))
            (i32.store offset=3840
              (i32.const 0)
              (local.tee $p0
                (i32.add
                  (i32.load offset=3840
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
                      (i32.const 3872)))))
              (block $B18
                (br_if $B18
                  (i32.ne
                    (local.tee $l2
                      (i32.load offset=12
                        (local.get $l3)))
                    (local.get $l4)))
                (i32.store offset=3832
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=3832
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
                    (i32.load offset=3848
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
                          (i32.const 4136))))
                    (local.get $l3)))
                (i32.store
                  (local.get $l2)
                  (local.get $l6))
                (br_if $B23
                  (local.get $l6))
                (i32.store offset=3836
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=3836
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
              (i32.load offset=3852
                (i32.const 0))))
          (i32.store offset=3840
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
            (i32.const 3872)))
        (block $B27
          (block $B28
            (br_if $B28
              (i32.and
                (local.tee $l4
                  (i32.load offset=3832
                    (i32.const 0)))
                (local.tee $l2
                  (i32.shl
                    (i32.const 1)
                    (local.get $l2)))))
            (i32.store offset=3832
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
          (i32.const 4136)))
      (block $B30
        (block $B31
          (block $B32
            (block $B33
              (br_if $B33
                (i32.and
                  (local.tee $l6
                    (i32.load offset=3836
                      (i32.const 0)))
                  (local.tee $l3
                    (i32.shl
                      (i32.const 1)
                      (local.get $l2)))))
              (i32.store offset=3836
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
      (i32.store offset=3864
        (i32.const 0)
        (select
          (local.tee $l1
            (i32.add
              (i32.load offset=3864
                (i32.const 0))
              (i32.const -1)))
          (i32.const -1)
          (local.get $l1)))))
  (func $dlrealloc (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (call $dlmalloc
          (local.get $p1))))
    (block $B1
      (br_if $B1
        (i32.lt_u
          (local.get $p1)
          (i32.const -64)))
      (i32.store
        (call $__errno_location)
        (i32.const 48))
      (return
        (i32.const 0)))
    (block $B2
      (br_if $B2
        (i32.eqz
          (local.tee $l2
            (call $try_realloc_chunk
              (i32.add
                (local.get $p0)
                (i32.const -8))
              (select
                (i32.const 16)
                (i32.and
                  (i32.add
                    (local.get $p1)
                    (i32.const 11))
                  (i32.const -8))
                (i32.lt_u
                  (local.get $p1)
                  (i32.const 11)))))))
      (return
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (block $B3
      (br_if $B3
        (local.tee $l2
          (call $dlmalloc
            (local.get $p1))))
      (return
        (i32.const 0)))
    (drop
      (call $__memcpy
        (local.get $l2)
        (local.get $p0)
        (select
          (local.tee $l3
            (i32.add
              (select
                (i32.const -4)
                (i32.const -8)
                (i32.and
                  (local.tee $l3
                    (i32.load
                      (i32.add
                        (local.get $p0)
                        (i32.const -4))))
                  (i32.const 3)))
              (i32.and
                (local.get $l3)
                (i32.const -8))))
          (local.get $p1)
          (i32.lt_u
            (local.get $l3)
            (local.get $p1)))))
    (call $dlfree
      (local.get $p0))
    (local.get $l2))
  (func $try_realloc_chunk (type $t5) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    (local.set $l3
      (i32.and
        (local.tee $l2
          (i32.load offset=4
            (local.get $p0)))
        (i32.const -8)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.and
            (local.get $l2)
            (i32.const 3)))
        (block $B2
          (br_if $B2
            (i32.ge_u
              (local.get $p1)
              (i32.const 256)))
          (return
            (i32.const 0)))
        (block $B3
          (br_if $B3
            (i32.lt_u
              (local.get $l3)
              (i32.add
                (local.get $p1)
                (i32.const 4))))
          (local.set $l4
            (local.get $p0))
          (br_if $B0
            (i32.le_u
              (i32.sub
                (local.get $l3)
                (local.get $p1))
              (i32.shl
                (i32.load offset=4312
                  (i32.const 0))
                (i32.const 1)))))
        (return
          (i32.const 0)))
      (local.set $l5
        (i32.add
          (local.get $p0)
          (local.get $l3)))
      (block $B4
        (block $B5
          (br_if $B5
            (i32.lt_u
              (local.get $l3)
              (local.get $p1)))
          (br_if $B4
            (i32.lt_u
              (local.tee $l3
                (i32.sub
                  (local.get $l3)
                  (local.get $p1)))
              (i32.const 16)))
          (i32.store offset=4
            (local.get $p0)
            (i32.or
              (i32.or
                (i32.and
                  (local.get $l2)
                  (i32.const 1))
                (local.get $p1))
              (i32.const 2)))
          (i32.store offset=4
            (local.tee $p1
              (i32.add
                (local.get $p0)
                (local.get $p1)))
            (i32.or
              (local.get $l3)
              (i32.const 3)))
          (i32.store offset=4
            (local.get $l5)
            (i32.or
              (i32.load offset=4
                (local.get $l5))
              (i32.const 1)))
          (call $dispose_chunk
            (local.get $p1)
            (local.get $l3))
          (br $B4))
        (local.set $l4
          (i32.const 0))
        (block $B6
          (br_if $B6
            (i32.ne
              (i32.load offset=3856
                (i32.const 0))
              (local.get $l5)))
          (br_if $B0
            (i32.le_u
              (local.tee $l3
                (i32.add
                  (i32.load offset=3844
                    (i32.const 0))
                  (local.get $l3)))
              (local.get $p1)))
          (i32.store offset=4
            (local.get $p0)
            (i32.or
              (i32.or
                (i32.and
                  (local.get $l2)
                  (i32.const 1))
                (local.get $p1))
              (i32.const 2)))
          (i32.store offset=4
            (local.tee $l2
              (i32.add
                (local.get $p0)
                (local.get $p1)))
            (i32.or
              (local.tee $p1
                (i32.sub
                  (local.get $l3)
                  (local.get $p1)))
              (i32.const 1)))
          (i32.store offset=3844
            (i32.const 0)
            (local.get $p1))
          (i32.store offset=3856
            (i32.const 0)
            (local.get $l2))
          (br $B4))
        (block $B7
          (br_if $B7
            (i32.ne
              (i32.load offset=3852
                (i32.const 0))
              (local.get $l5)))
          (local.set $l4
            (i32.const 0))
          (br_if $B0
            (i32.lt_u
              (local.tee $l3
                (i32.add
                  (i32.load offset=3840
                    (i32.const 0))
                  (local.get $l3)))
              (local.get $p1)))
          (block $B8
            (block $B9
              (br_if $B9
                (i32.lt_u
                  (local.tee $l4
                    (i32.sub
                      (local.get $l3)
                      (local.get $p1)))
                  (i32.const 16)))
              (i32.store offset=4
                (local.get $p0)
                (i32.or
                  (i32.or
                    (i32.and
                      (local.get $l2)
                      (i32.const 1))
                    (local.get $p1))
                  (i32.const 2)))
              (i32.store offset=4
                (local.tee $p1
                  (i32.add
                    (local.get $p0)
                    (local.get $p1)))
                (i32.or
                  (local.get $l4)
                  (i32.const 1)))
              (i32.store
                (local.tee $l3
                  (i32.add
                    (local.get $p0)
                    (local.get $l3)))
                (local.get $l4))
              (i32.store offset=4
                (local.get $l3)
                (i32.and
                  (i32.load offset=4
                    (local.get $l3))
                  (i32.const -2)))
              (br $B8))
            (i32.store offset=4
              (local.get $p0)
              (i32.or
                (i32.or
                  (i32.and
                    (local.get $l2)
                    (i32.const 1))
                  (local.get $l3))
                (i32.const 2)))
            (i32.store offset=4
              (local.tee $p1
                (i32.add
                  (local.get $p0)
                  (local.get $l3)))
              (i32.or
                (i32.load offset=4
                  (local.get $p1))
                (i32.const 1)))
            (local.set $l4
              (i32.const 0))
            (local.set $p1
              (i32.const 0)))
          (i32.store offset=3852
            (i32.const 0)
            (local.get $p1))
          (i32.store offset=3840
            (i32.const 0)
            (local.get $l4))
          (br $B4))
        (local.set $l4
          (i32.const 0))
        (br_if $B0
          (i32.and
            (local.tee $l6
              (i32.load offset=4
                (local.get $l5)))
            (i32.const 2)))
        (br_if $B0
          (i32.lt_u
            (local.tee $l7
              (i32.add
                (i32.and
                  (local.get $l6)
                  (i32.const -8))
                (local.get $l3)))
            (local.get $p1)))
        (local.set $l8
          (i32.sub
            (local.get $l7)
            (local.get $p1)))
        (block $B10
          (block $B11
            (br_if $B11
              (i32.gt_u
                (local.get $l6)
                (i32.const 255)))
            (drop
              (i32.eq
                (local.tee $l3
                  (i32.load offset=8
                    (local.get $l5)))
                (local.tee $l6
                  (i32.add
                    (i32.shl
                      (local.tee $l9
                        (i32.shr_u
                          (local.get $l6)
                          (i32.const 3)))
                      (i32.const 3))
                    (i32.const 3872)))))
            (block $B12
              (br_if $B12
                (i32.ne
                  (local.tee $l4
                    (i32.load offset=12
                      (local.get $l5)))
                  (local.get $l3)))
              (i32.store offset=3832
                (i32.const 0)
                (i32.and
                  (i32.load offset=3832
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l9))))
              (br $B10))
            (drop
              (i32.eq
                (local.get $l4)
                (local.get $l6)))
            (i32.store offset=12
              (local.get $l3)
              (local.get $l4))
            (i32.store offset=8
              (local.get $l4)
              (local.get $l3))
            (br $B10))
          (local.set $l10
            (i32.load offset=24
              (local.get $l5)))
          (block $B13
            (block $B14
              (br_if $B14
                (i32.eq
                  (local.tee $l6
                    (i32.load offset=12
                      (local.get $l5)))
                  (local.get $l5)))
              (drop
                (i32.gt_u
                  (i32.load offset=3848
                    (i32.const 0))
                  (local.tee $l3
                    (i32.load offset=8
                      (local.get $l5)))))
              (i32.store offset=12
                (local.get $l3)
                (local.get $l6))
              (i32.store offset=8
                (local.get $l6)
                (local.get $l3))
              (br $B13))
            (block $B15
              (br_if $B15
                (local.tee $l4
                  (i32.load
                    (local.tee $l3
                      (i32.add
                        (local.get $l5)
                        (i32.const 20))))))
              (br_if $B15
                (local.tee $l4
                  (i32.load
                    (local.tee $l3
                      (i32.add
                        (local.get $l5)
                        (i32.const 16))))))
              (local.set $l6
                (i32.const 0))
              (br $B13))
            (loop $L16
              (local.set $l9
                (local.get $l3))
              (br_if $L16
                (local.tee $l4
                  (i32.load
                    (local.tee $l3
                      (i32.add
                        (local.tee $l6
                          (local.get $l4))
                        (i32.const 20))))))
              (local.set $l3
                (i32.add
                  (local.get $l6)
                  (i32.const 16)))
              (br_if $L16
                (local.tee $l4
                  (i32.load offset=16
                    (local.get $l6)))))
            (i32.store
              (local.get $l9)
              (i32.const 0)))
          (br_if $B10
            (i32.eqz
              (local.get $l10)))
          (block $B17
            (block $B18
              (br_if $B18
                (i32.ne
                  (i32.load
                    (local.tee $l3
                      (i32.add
                        (i32.shl
                          (local.tee $l4
                            (i32.load offset=28
                              (local.get $l5)))
                          (i32.const 2))
                        (i32.const 4136))))
                  (local.get $l5)))
              (i32.store
                (local.get $l3)
                (local.get $l6))
              (br_if $B17
                (local.get $l6))
              (i32.store offset=3836
                (i32.const 0)
                (i32.and
                  (i32.load offset=3836
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l4))))
              (br $B10))
            (i32.store
              (i32.add
                (local.get $l10)
                (select
                  (i32.const 16)
                  (i32.const 20)
                  (i32.eq
                    (i32.load offset=16
                      (local.get $l10))
                    (local.get $l5))))
              (local.get $l6))
            (br_if $B10
              (i32.eqz
                (local.get $l6))))
          (i32.store offset=24
            (local.get $l6)
            (local.get $l10))
          (block $B19
            (br_if $B19
              (i32.eqz
                (local.tee $l3
                  (i32.load offset=16
                    (local.get $l5)))))
            (i32.store offset=16
              (local.get $l6)
              (local.get $l3))
            (i32.store offset=24
              (local.get $l3)
              (local.get $l6)))
          (br_if $B10
            (i32.eqz
              (local.tee $l3
                (i32.load offset=20
                  (local.get $l5)))))
          (i32.store
            (i32.add
              (local.get $l6)
              (i32.const 20))
            (local.get $l3))
          (i32.store offset=24
            (local.get $l3)
            (local.get $l6)))
        (block $B20
          (br_if $B20
            (i32.gt_u
              (local.get $l8)
              (i32.const 15)))
          (i32.store offset=4
            (local.get $p0)
            (i32.or
              (i32.or
                (i32.and
                  (local.get $l2)
                  (i32.const 1))
                (local.get $l7))
              (i32.const 2)))
          (i32.store offset=4
            (local.tee $p1
              (i32.add
                (local.get $p0)
                (local.get $l7)))
            (i32.or
              (i32.load offset=4
                (local.get $p1))
              (i32.const 1)))
          (br $B4))
        (i32.store offset=4
          (local.get $p0)
          (i32.or
            (i32.or
              (i32.and
                (local.get $l2)
                (i32.const 1))
              (local.get $p1))
            (i32.const 2)))
        (i32.store offset=4
          (local.tee $p1
            (i32.add
              (local.get $p0)
              (local.get $p1)))
          (i32.or
            (local.get $l8)
            (i32.const 3)))
        (i32.store offset=4
          (local.tee $l3
            (i32.add
              (local.get $p0)
              (local.get $l7)))
          (i32.or
            (i32.load offset=4
              (local.get $l3))
            (i32.const 1)))
        (call $dispose_chunk
          (local.get $p1)
          (local.get $l8)))
      (local.set $l4
        (local.get $p0)))
    (local.get $l4))
  (func $dispose_chunk (type $t7) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (local.set $l2
      (i32.add
        (local.get $p0)
        (local.get $p1)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.and
            (local.tee $l3
              (i32.load offset=4
                (local.get $p0)))
            (i32.const 1)))
        (br_if $B0
          (i32.eqz
            (i32.and
              (local.get $l3)
              (i32.const 3))))
        (local.set $p1
          (i32.add
            (local.tee $l3
              (i32.load
                (local.get $p0)))
            (local.get $p1)))
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eq
                (i32.load offset=3852
                  (i32.const 0))
                (local.tee $p0
                  (i32.sub
                    (local.get $p0)
                    (local.get $l3)))))
            (block $B4
              (br_if $B4
                (i32.gt_u
                  (local.get $l3)
                  (i32.const 255)))
              (drop
                (i32.eq
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $p0)))
                  (local.tee $l6
                    (i32.add
                      (i32.shl
                        (local.tee $l5
                          (i32.shr_u
                            (local.get $l3)
                            (i32.const 3)))
                        (i32.const 3))
                      (i32.const 3872)))))
              (br_if $B2
                (i32.ne
                  (local.tee $l3
                    (i32.load offset=12
                      (local.get $p0)))
                  (local.get $l4)))
              (i32.store offset=3832
                (i32.const 0)
                (i32.and
                  (i32.load offset=3832
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l5))))
              (br $B1))
            (local.set $l7
              (i32.load offset=24
                (local.get $p0)))
            (block $B5
              (block $B6
                (br_if $B6
                  (i32.eq
                    (local.tee $l6
                      (i32.load offset=12
                        (local.get $p0)))
                    (local.get $p0)))
                (drop
                  (i32.gt_u
                    (i32.load offset=3848
                      (i32.const 0))
                    (local.tee $l3
                      (i32.load offset=8
                        (local.get $p0)))))
                (i32.store offset=12
                  (local.get $l3)
                  (local.get $l6))
                (i32.store offset=8
                  (local.get $l6)
                  (local.get $l3))
                (br $B5))
              (block $B7
                (br_if $B7
                  (local.tee $l4
                    (i32.load
                      (local.tee $l3
                        (i32.add
                          (local.get $p0)
                          (i32.const 20))))))
                (br_if $B7
                  (local.tee $l4
                    (i32.load
                      (local.tee $l3
                        (i32.add
                          (local.get $p0)
                          (i32.const 16))))))
                (local.set $l6
                  (i32.const 0))
                (br $B5))
              (loop $L8
                (local.set $l5
                  (local.get $l3))
                (br_if $L8
                  (local.tee $l4
                    (i32.load
                      (local.tee $l3
                        (i32.add
                          (local.tee $l6
                            (local.get $l4))
                          (i32.const 20))))))
                (local.set $l3
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
                      (local.tee $l3
                        (i32.add
                          (i32.shl
                            (local.tee $l4
                              (i32.load offset=28
                                (local.get $p0)))
                            (i32.const 2))
                          (i32.const 4136))))
                    (local.get $p0)))
                (i32.store
                  (local.get $l3)
                  (local.get $l6))
                (br_if $B9
                  (local.get $l6))
                (i32.store offset=3836
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=3836
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
                      (local.get $p0))))
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
                  (local.tee $l3
                    (i32.load offset=16
                      (local.get $p0)))))
              (i32.store offset=16
                (local.get $l6)
                (local.get $l3))
              (i32.store offset=24
                (local.get $l3)
                (local.get $l6)))
            (br_if $B1
              (i32.eqz
                (local.tee $l3
                  (i32.load offset=20
                    (local.get $p0)))))
            (i32.store
              (i32.add
                (local.get $l6)
                (i32.const 20))
              (local.get $l3))
            (i32.store offset=24
              (local.get $l3)
              (local.get $l6))
            (br $B1))
          (br_if $B1
            (i32.ne
              (i32.and
                (local.tee $l3
                  (i32.load offset=4
                    (local.get $l2)))
                (i32.const 3))
              (i32.const 3)))
          (i32.store offset=3840
            (i32.const 0)
            (local.get $p1))
          (i32.store offset=4
            (local.get $l2)
            (i32.and
              (local.get $l3)
              (i32.const -2)))
          (i32.store offset=4
            (local.get $p0)
            (i32.or
              (local.get $p1)
              (i32.const 1)))
          (i32.store
            (local.get $l2)
            (local.get $p1))
          (return))
        (drop
          (i32.eq
            (local.get $l3)
            (local.get $l6)))
        (i32.store offset=12
          (local.get $l4)
          (local.get $l3))
        (i32.store offset=8
          (local.get $l3)
          (local.get $l4)))
      (block $B12
        (block $B13
          (br_if $B13
            (i32.and
              (local.tee $l3
                (i32.load offset=4
                  (local.get $l2)))
              (i32.const 2)))
          (block $B14
            (br_if $B14
              (i32.ne
                (i32.load offset=3856
                  (i32.const 0))
                (local.get $l2)))
            (i32.store offset=3856
              (i32.const 0)
              (local.get $p0))
            (i32.store offset=3844
              (i32.const 0)
              (local.tee $p1
                (i32.add
                  (i32.load offset=3844
                    (i32.const 0))
                  (local.get $p1))))
            (i32.store offset=4
              (local.get $p0)
              (i32.or
                (local.get $p1)
                (i32.const 1)))
            (br_if $B0
              (i32.ne
                (local.get $p0)
                (i32.load offset=3852
                  (i32.const 0))))
            (i32.store offset=3840
              (i32.const 0)
              (i32.const 0))
            (i32.store offset=3852
              (i32.const 0)
              (i32.const 0))
            (return))
          (block $B15
            (br_if $B15
              (i32.ne
                (i32.load offset=3852
                  (i32.const 0))
                (local.get $l2)))
            (i32.store offset=3852
              (i32.const 0)
              (local.get $p0))
            (i32.store offset=3840
              (i32.const 0)
              (local.tee $p1
                (i32.add
                  (i32.load offset=3840
                    (i32.const 0))
                  (local.get $p1))))
            (i32.store offset=4
              (local.get $p0)
              (i32.or
                (local.get $p1)
                (i32.const 1)))
            (i32.store
              (i32.add
                (local.get $p0)
                (local.get $p1))
              (local.get $p1))
            (return))
          (local.set $p1
            (i32.add
              (i32.and
                (local.get $l3)
                (i32.const -8))
              (local.get $p1)))
          (block $B16
            (block $B17
              (br_if $B17
                (i32.gt_u
                  (local.get $l3)
                  (i32.const 255)))
              (drop
                (i32.eq
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $l2)))
                  (local.tee $l6
                    (i32.add
                      (i32.shl
                        (local.tee $l5
                          (i32.shr_u
                            (local.get $l3)
                            (i32.const 3)))
                        (i32.const 3))
                      (i32.const 3872)))))
              (block $B18
                (br_if $B18
                  (i32.ne
                    (local.tee $l3
                      (i32.load offset=12
                        (local.get $l2)))
                    (local.get $l4)))
                (i32.store offset=3832
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=3832
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l5))))
                (br $B16))
              (drop
                (i32.eq
                  (local.get $l3)
                  (local.get $l6)))
              (i32.store offset=12
                (local.get $l4)
                (local.get $l3))
              (i32.store offset=8
                (local.get $l3)
                (local.get $l4))
              (br $B16))
            (local.set $l7
              (i32.load offset=24
                (local.get $l2)))
            (block $B19
              (block $B20
                (br_if $B20
                  (i32.eq
                    (local.tee $l6
                      (i32.load offset=12
                        (local.get $l2)))
                    (local.get $l2)))
                (drop
                  (i32.gt_u
                    (i32.load offset=3848
                      (i32.const 0))
                    (local.tee $l3
                      (i32.load offset=8
                        (local.get $l2)))))
                (i32.store offset=12
                  (local.get $l3)
                  (local.get $l6))
                (i32.store offset=8
                  (local.get $l6)
                  (local.get $l3))
                (br $B19))
              (block $B21
                (br_if $B21
                  (local.tee $l3
                    (i32.load
                      (local.tee $l4
                        (i32.add
                          (local.get $l2)
                          (i32.const 20))))))
                (br_if $B21
                  (local.tee $l3
                    (i32.load
                      (local.tee $l4
                        (i32.add
                          (local.get $l2)
                          (i32.const 16))))))
                (local.set $l6
                  (i32.const 0))
                (br $B19))
              (loop $L22
                (local.set $l5
                  (local.get $l4))
                (br_if $L22
                  (local.tee $l3
                    (i32.load
                      (local.tee $l4
                        (i32.add
                          (local.tee $l6
                            (local.get $l3))
                          (i32.const 20))))))
                (local.set $l4
                  (i32.add
                    (local.get $l6)
                    (i32.const 16)))
                (br_if $L22
                  (local.tee $l3
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
                      (local.tee $l3
                        (i32.add
                          (i32.shl
                            (local.tee $l4
                              (i32.load offset=28
                                (local.get $l2)))
                            (i32.const 2))
                          (i32.const 4136))))
                    (local.get $l2)))
                (i32.store
                  (local.get $l3)
                  (local.get $l6))
                (br_if $B23
                  (local.get $l6))
                (i32.store offset=3836
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=3836
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
                      (local.get $l2))))
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
                  (local.tee $l3
                    (i32.load offset=16
                      (local.get $l2)))))
              (i32.store offset=16
                (local.get $l6)
                (local.get $l3))
              (i32.store offset=24
                (local.get $l3)
                (local.get $l6)))
            (br_if $B16
              (i32.eqz
                (local.tee $l3
                  (i32.load offset=20
                    (local.get $l2)))))
            (i32.store
              (i32.add
                (local.get $l6)
                (i32.const 20))
              (local.get $l3))
            (i32.store offset=24
              (local.get $l3)
              (local.get $l6)))
          (i32.store offset=4
            (local.get $p0)
            (i32.or
              (local.get $p1)
              (i32.const 1)))
          (i32.store
            (i32.add
              (local.get $p0)
              (local.get $p1))
            (local.get $p1))
          (br_if $B12
            (i32.ne
              (local.get $p0)
              (i32.load offset=3852
                (i32.const 0))))
          (i32.store offset=3840
            (i32.const 0)
            (local.get $p1))
          (return))
        (i32.store offset=4
          (local.get $l2)
          (i32.and
            (local.get $l3)
            (i32.const -2)))
        (i32.store offset=4
          (local.get $p0)
          (i32.or
            (local.get $p1)
            (i32.const 1)))
        (i32.store
          (i32.add
            (local.get $p0)
            (local.get $p1))
          (local.get $p1)))
      (block $B26
        (br_if $B26
          (i32.gt_u
            (local.get $p1)
            (i32.const 255)))
        (local.set $p1
          (i32.add
            (i32.shl
              (local.tee $l3
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 3)))
              (i32.const 3))
            (i32.const 3872)))
        (block $B27
          (block $B28
            (br_if $B28
              (i32.and
                (local.tee $l4
                  (i32.load offset=3832
                    (i32.const 0)))
                (local.tee $l3
                  (i32.shl
                    (i32.const 1)
                    (local.get $l3)))))
            (i32.store offset=3832
              (i32.const 0)
              (i32.or
                (local.get $l4)
                (local.get $l3)))
            (local.set $l3
              (local.get $p1))
            (br $B27))
          (local.set $l3
            (i32.load offset=8
              (local.get $p1))))
        (i32.store offset=8
          (local.get $p1)
          (local.get $p0))
        (i32.store offset=12
          (local.get $l3)
          (local.get $p0))
        (i32.store offset=12
          (local.get $p0)
          (local.get $p1))
        (i32.store offset=8
          (local.get $p0)
          (local.get $l3))
        (return))
      (local.set $l3
        (i32.const 31))
      (block $B29
        (br_if $B29
          (i32.gt_u
            (local.get $p1)
            (i32.const 16777215)))
        (local.set $l3
          (i32.add
            (i32.or
              (i32.shl
                (local.tee $l3
                  (i32.sub
                    (i32.shr_u
                      (i32.shl
                        (local.tee $l6
                          (i32.shl
                            (local.tee $l4
                              (i32.shl
                                (local.tee $l3
                                  (i32.shr_u
                                    (local.get $p1)
                                    (i32.const 8)))
                                (local.tee $l3
                                  (i32.and
                                    (i32.shr_u
                                      (i32.add
                                        (local.get $l3)
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
                        (local.get $l3)
                        (local.get $l4))
                      (local.get $l6))))
                (i32.const 1))
              (i32.and
                (i32.shr_u
                  (local.get $p1)
                  (i32.add
                    (local.get $l3)
                    (i32.const 21)))
                (i32.const 1)))
            (i32.const 28))))
      (i64.store offset=16 align=4
        (local.get $p0)
        (i64.const 0))
      (i32.store
        (i32.add
          (local.get $p0)
          (i32.const 28))
        (local.get $l3))
      (local.set $l4
        (i32.add
          (i32.shl
            (local.get $l3)
            (i32.const 2))
          (i32.const 4136)))
      (block $B30
        (block $B31
          (block $B32
            (br_if $B32
              (i32.and
                (local.tee $l6
                  (i32.load offset=3836
                    (i32.const 0)))
                (local.tee $l2
                  (i32.shl
                    (i32.const 1)
                    (local.get $l3)))))
            (i32.store offset=3836
              (i32.const 0)
              (i32.or
                (local.get $l6)
                (local.get $l2)))
            (i32.store
              (local.get $l4)
              (local.get $p0))
            (i32.store
              (i32.add
                (local.get $p0)
                (i32.const 24))
              (local.get $l4))
            (br $B31))
          (local.set $l3
            (i32.shl
              (local.get $p1)
              (select
                (i32.const 0)
                (i32.sub
                  (i32.const 25)
                  (i32.shr_u
                    (local.get $l3)
                    (i32.const 1)))
                (i32.eq
                  (local.get $l3)
                  (i32.const 31)))))
          (local.set $l6
            (i32.load
              (local.get $l4)))
          (loop $L33
            (br_if $B30
              (i32.eq
                (i32.and
                  (i32.load offset=4
                    (local.tee $l4
                      (local.get $l6)))
                  (i32.const -8))
                (local.get $p1)))
            (local.set $l6
              (i32.shr_u
                (local.get $l3)
                (i32.const 29)))
            (local.set $l3
              (i32.shl
                (local.get $l3)
                (i32.const 1)))
            (br_if $L33
              (local.tee $l6
                (i32.load
                  (local.tee $l2
                    (i32.add
                      (i32.add
                        (local.get $l4)
                        (i32.and
                          (local.get $l6)
                          (i32.const 4)))
                      (i32.const 16)))))))
          (i32.store
            (local.get $l2)
            (local.get $p0))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 24))
            (local.get $l4)))
        (i32.store offset=12
          (local.get $p0)
          (local.get $p0))
        (i32.store offset=8
          (local.get $p0)
          (local.get $p0))
        (return))
      (i32.store offset=12
        (local.tee $p1
          (i32.load offset=8
            (local.get $l4)))
        (local.get $p0))
      (i32.store offset=8
        (local.get $l4)
        (local.get $p0))
      (i32.store
        (i32.add
          (local.get $p0)
          (i32.const 24))
        (i32.const 0))
      (i32.store offset=12
        (local.get $p0)
        (local.get $l4))
      (i32.store offset=8
        (local.get $p0)
        (local.get $p1))))
  (func $emscripten_get_heap_size (type $t2) (result i32)
    (i32.shl
      (memory.size)
      (i32.const 16)))
  (func $sbrk (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (local.set $p0
      (i32.add
        (local.tee $l1
          (i32.load offset=2444
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
      (i32.store offset=2444
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
  (func $_Exit (type $t3) (param $p0 i32)
    (call $__wasi_proc_exit
      (local.get $p0))
    (unreachable))
  (func $dummy.1 (type $t4))
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
    (call $dummy.1))
  (func $exit (type $t3) (param $p0 i32)
    (call $dummy.1)
    (call $libc_exit_fini)
    (call $__stdio_exit)
    (call $_Exit
      (local.get $p0))
    (unreachable))
  (func $emscripten_resize_heap (type $t0) (param $p0 i32) (result i32)
    (i32.const 0))
  (func $__lockfile (type $t0) (param $p0 i32) (result i32)
    (i32.const 1))
  (func $__unlockfile (type $t3) (param $p0 i32))
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
  (func $__fpclassifyl (type $t28) (param $p0 i64) (param $p1 i64) (result i32)
    (local $l2 i64) (local $l3 i32) (local $l4 i32)
    (local.set $l2
      (i64.and
        (local.get $p1)
        (i64.const 281474976710655)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eq
            (local.tee $l3
              (i32.and
                (i32.wrap_i64
                  (i64.shr_u
                    (local.get $p1)
                    (i64.const 48)))
                (i32.const 32767)))
            (i32.const 32767)))
        (local.set $l4
          (i32.const 4))
        (br_if $B0
          (local.get $l3))
        (return
          (select
            (i32.const 2)
            (i32.const 3)
            (i64.eqz
              (i64.or
                (local.get $l2)
                (local.get $p0))))))
      (local.set $l4
        (i64.eqz
          (i64.or
            (local.get $l2)
            (local.get $p0)))))
    (local.get $l4))
  (func $fmodl (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i64) (param $p3 i64) (param $p4 i64)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i64) (local $l10 i64) (local $l11 i64)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 128))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (call $__letf2
                (local.get $p3)
                (local.get $p4)
                (i64.const 0)
                (i64.const 0))))
          (br_if $B2
            (i32.eqz
              (call $__fpclassifyl
                (local.get $p3)
                (local.get $p4))))
          (br_if $B1
            (i32.ne
              (local.tee $l7
                (i32.and
                  (local.tee $l6
                    (i32.wrap_i64
                      (i64.shr_u
                        (local.get $p2)
                        (i64.const 48))))
                  (i32.const 32767)))
              (i32.const 32767))))
        (call $__multf3
          (i32.add
            (local.get $l5)
            (i32.const 16))
          (local.get $p1)
          (local.get $p2)
          (local.get $p3)
          (local.get $p4))
        (call $__divtf3
          (local.get $l5)
          (local.tee $p4
            (i64.load offset=16
              (local.get $l5)))
          (local.tee $p3
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l5)
                  (i32.const 16))
                (i32.const 8))))
          (local.get $p4)
          (local.get $p3))
        (local.set $p2
          (i64.load
            (i32.add
              (local.get $l5)
              (i32.const 8))))
        (local.set $p4
          (i64.load
            (local.get $l5)))
        (br $B0))
      (block $B3
        (br_if $B3
          (i32.gt_s
            (call $__letf2
              (local.get $p1)
              (local.tee $l9
                (i64.or
                  (i64.shl
                    (i64.extend_i32_u
                      (local.get $l7))
                    (i64.const 48))
                  (i64.and
                    (local.get $p2)
                    (i64.const 281474976710655))))
              (local.get $p3)
              (local.tee $l10
                (i64.or
                  (i64.shl
                    (i64.extend_i32_u
                      (local.tee $l8
                        (i32.and
                          (i32.wrap_i64
                            (i64.shr_u
                              (local.get $p4)
                              (i64.const 48)))
                          (i32.const 32767))))
                    (i64.const 48))
                  (i64.and
                    (local.get $p4)
                    (i64.const 281474976710655)))))
            (i32.const 0)))
        (block $B4
          (br_if $B4
            (i32.eqz
              (call $__letf2
                (local.get $p1)
                (local.get $l9)
                (local.get $p3)
                (local.get $l10))))
          (local.set $p4
            (local.get $p1))
          (br $B0))
        (call $__multf3
          (i32.add
            (local.get $l5)
            (i32.const 112))
          (local.get $p1)
          (local.get $p2)
          (i64.const 0)
          (i64.const 0))
        (local.set $p2
          (i64.load
            (i32.add
              (local.get $l5)
              (i32.const 120))))
        (local.set $p4
          (i64.load offset=112
            (local.get $l5)))
        (br $B0))
      (block $B5
        (block $B6
          (br_if $B6
            (i32.eqz
              (local.get $l7)))
          (local.set $p4
            (local.get $p1))
          (br $B5))
        (call $__multf3
          (i32.add
            (local.get $l5)
            (i32.const 96))
          (local.get $p1)
          (local.get $l9)
          (i64.const 0)
          (i64.const 4645181540655955968))
        (local.set $l7
          (i32.add
            (i32.wrap_i64
              (i64.shr_u
                (local.tee $l9
                  (i64.load
                    (i32.add
                      (local.get $l5)
                      (i32.const 104))))
                (i64.const 48)))
            (i32.const -120)))
        (local.set $p4
          (i64.load offset=96
            (local.get $l5))))
      (block $B7
        (br_if $B7
          (local.get $l8))
        (call $__multf3
          (i32.add
            (local.get $l5)
            (i32.const 80))
          (local.get $p3)
          (local.get $l10)
          (i64.const 0)
          (i64.const 4645181540655955968))
        (local.set $l8
          (i32.add
            (i32.wrap_i64
              (i64.shr_u
                (local.tee $l10
                  (i64.load
                    (i32.add
                      (local.get $l5)
                      (i32.const 88))))
                (i64.const 48)))
            (i32.const -120)))
        (local.set $p3
          (i64.load offset=80
            (local.get $l5))))
      (local.set $l11
        (i64.or
          (i64.and
            (local.get $l10)
            (i64.const 281474976710655))
          (i64.const 281474976710656)))
      (local.set $l9
        (i64.or
          (i64.and
            (local.get $l9)
            (i64.const 281474976710655))
          (i64.const 281474976710656)))
      (block $B8
        (br_if $B8
          (i32.le_s
            (local.get $l7)
            (local.get $l8)))
        (loop $L9
          (block $B10
            (block $B11
              (br_if $B11
                (i64.lt_s
                  (local.tee $l10
                    (i64.sub
                      (i64.sub
                        (local.get $l9)
                        (local.get $l11))
                      (i64.extend_i32_u
                        (i64.lt_u
                          (local.get $p4)
                          (local.get $p3)))))
                  (i64.const 0)))
              (block $B12
                (br_if $B12
                  (i64.ne
                    (i64.or
                      (local.get $l10)
                      (local.tee $p4
                        (i64.sub
                          (local.get $p4)
                          (local.get $p3))))
                    (i64.const 0)))
                (call $__multf3
                  (i32.add
                    (local.get $l5)
                    (i32.const 32))
                  (local.get $p1)
                  (local.get $p2)
                  (i64.const 0)
                  (i64.const 0))
                (local.set $p2
                  (i64.load
                    (i32.add
                      (local.get $l5)
                      (i32.const 40))))
                (local.set $p4
                  (i64.load offset=32
                    (local.get $l5)))
                (br $B0))
              (local.set $l9
                (i64.or
                  (i64.shl
                    (local.get $l10)
                    (i64.const 1))
                  (i64.shr_u
                    (local.get $p4)
                    (i64.const 63))))
              (br $B10))
            (local.set $l9
              (i64.or
                (i64.shl
                  (local.get $l9)
                  (i64.const 1))
                (i64.shr_u
                  (local.get $p4)
                  (i64.const 63)))))
          (local.set $p4
            (i64.shl
              (local.get $p4)
              (i64.const 1)))
          (br_if $L9
            (i32.gt_s
              (local.tee $l7
                (i32.add
                  (local.get $l7)
                  (i32.const -1)))
              (local.get $l8))))
        (local.set $l7
          (local.get $l8)))
      (block $B13
        (block $B14
          (br_if $B14
            (i64.ge_s
              (local.tee $l10
                (i64.sub
                  (i64.sub
                    (local.get $l9)
                    (local.get $l11))
                  (i64.extend_i32_u
                    (i64.lt_u
                      (local.get $p4)
                      (local.get $p3)))))
              (i64.const 0)))
          (local.set $l10
            (local.get $l9))
          (br $B13))
        (br_if $B13
          (i64.ne
            (i64.or
              (local.get $l10)
              (local.tee $p4
                (i64.sub
                  (local.get $p4)
                  (local.get $p3))))
            (i64.const 0)))
        (call $__multf3
          (i32.add
            (local.get $l5)
            (i32.const 48))
          (local.get $p1)
          (local.get $p2)
          (i64.const 0)
          (i64.const 0))
        (local.set $p2
          (i64.load
            (i32.add
              (local.get $l5)
              (i32.const 56))))
        (local.set $p4
          (i64.load offset=48
            (local.get $l5)))
        (br $B0))
      (block $B15
        (br_if $B15
          (i64.gt_u
            (local.get $l10)
            (i64.const 281474976710655)))
        (loop $L16
          (local.set $p3
            (i64.shr_u
              (local.get $p4)
              (i64.const 63)))
          (local.set $l7
            (i32.add
              (local.get $l7)
              (i32.const -1)))
          (local.set $p4
            (i64.shl
              (local.get $p4)
              (i64.const 1)))
          (br_if $L16
            (i64.lt_u
              (local.tee $l10
                (i64.or
                  (local.get $p3)
                  (i64.shl
                    (local.get $l10)
                    (i64.const 1))))
              (i64.const 281474976710656)))))
      (local.set $l8
        (i32.and
          (local.get $l6)
          (i32.const 32768)))
      (block $B17
        (br_if $B17
          (i32.gt_s
            (local.get $l7)
            (i32.const 0)))
        (call $__multf3
          (i32.add
            (local.get $l5)
            (i32.const 64))
          (local.get $p4)
          (i64.or
            (i64.and
              (local.get $l10)
              (i64.const 281474976710655))
            (i64.shl
              (i64.extend_i32_u
                (i32.or
                  (i32.add
                    (local.get $l7)
                    (i32.const 120))
                  (local.get $l8)))
              (i64.const 48)))
          (i64.const 0)
          (i64.const 4577627546245398528))
        (local.set $p2
          (i64.load
            (i32.add
              (local.get $l5)
              (i32.const 72))))
        (local.set $p4
          (i64.load offset=64
            (local.get $l5)))
        (br $B0))
      (local.set $p2
        (i64.or
          (i64.and
            (local.get $l10)
            (i64.const 281474976710655))
          (i64.shl
            (i64.extend_i32_u
              (i32.or
                (local.get $l7)
                (local.get $l8)))
            (i64.const 48)))))
    (i64.store
      (local.get $p0)
      (local.get $p4))
    (i64.store offset=8
      (local.get $p0)
      (local.get $p2))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 128))))
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
  (func $__emscripten_stdout_close (type $t0) (param $p0 i32) (result i32)
    (i32.const 0))
  (func $__emscripten_stdout_seek (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (i64.const 0))
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
  (func $__vfprintf_internal (type $t29) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
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
  (func $printf_core (type $t30) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32) (result i32)
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
                                          (i32.const 1599))))
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
                              (i32.const 1033))
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
                                                          (i32.const 1033))
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
                                                    (i32.const 1033))
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
                                                      (i32.const 1033)))
                                                  (local.set $l17
                                                    (i32.const 2))
                                                  (br $B44))
                                                (local.set $l17
                                                  (i32.const 0))
                                                (local.set $l16
                                                  (i32.const 1033))
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
                                                  (i32.const 1033))
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
                                                  (i32.const 1034))
                                                (br $B45))
                                              (local.set $l16
                                                (select
                                                  (i32.const 1035)
                                                  (i32.const 1033)
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
                                            (i32.const 1083)
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
                                    (call_indirect $__indirect_function_table (type $t14)
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
  (func $out (type $t31) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
  (func $pop_arg (type $t11) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
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
      (call_indirect $__indirect_function_table (type $t7)
        (local.get $p0)
        (local.get $p2)
        (local.get $p3))))
  (func $fmt_x (type $t32) (param $p0 i64) (param $p1 i32) (param $p2 i32) (result i32)
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
                (i32.const 2128)))
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
  (func $fmt_o (type $t15) (param $p0 i64) (param $p1 i32) (result i32)
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
  (func $fmt_u (type $t15) (param $p0 i64) (param $p1 i32) (result i32)
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
  (func $pad (type $t33) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
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
  (func $fmt_fp (type $t14) (param $p0 i32) (param $p1 f64) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (result i32)
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
          (i32.const 1043))
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
          (i32.const 1046))
        (br $B0))
      (local.set $l9
        (select
          (i32.const 1049)
          (i32.const 1044)
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
              (i32.const 1065)
              (i32.const 1073)
              (local.tee $l11
                (i32.and
                  (local.get $p5)
                  (i32.const 32))))
            (select
              (i32.const 1069)
              (i32.const 1077)
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
                  (i32.const 1081)
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
                      (i32.const 1081)
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
                (i32.const 2128)))
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
  (func $pop_arg_long_double (type $t7) (param $p0 i32) (param $p1 i32)
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
  (func $__DOUBLE_BITS (type $t34) (param $p0 f64) (result i64)
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
        (i32.const 2448)
        (local.get $p0)
        (local.get $p1)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $scalbn (type $t13) (param $p0 f64) (param $p1 i32) (result f64)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.lt_s
            (local.get $p1)
            (i32.const 1024)))
        (local.set $p0
          (f64.mul
            (local.get $p0)
            (f64.const 0x1p+1023 (;=8.98847e+307;))))
        (block $B2
          (br_if $B2
            (i32.ge_u
              (local.get $p1)
              (i32.const 2047)))
          (local.set $p1
            (i32.add
              (local.get $p1)
              (i32.const -1023)))
          (br $B0))
        (local.set $p0
          (f64.mul
            (local.get $p0)
            (f64.const 0x1p+1023 (;=8.98847e+307;))))
        (local.set $p1
          (i32.add
            (select
              (local.get $p1)
              (i32.const 3069)
              (i32.lt_u
                (local.get $p1)
                (i32.const 3069)))
            (i32.const -2046)))
        (br $B0))
      (br_if $B0
        (i32.gt_s
          (local.get $p1)
          (i32.const -1023)))
      (local.set $p0
        (f64.mul
          (local.get $p0)
          (f64.const 0x1p-969 (;=2.00417e-292;))))
      (block $B3
        (br_if $B3
          (i32.le_u
            (local.get $p1)
            (i32.const -1992)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 969)))
        (br $B0))
      (local.set $p0
        (f64.mul
          (local.get $p0)
          (f64.const 0x1p-969 (;=2.00417e-292;))))
      (local.set $p1
        (i32.add
          (select
            (local.get $p1)
            (i32.const -2960)
            (i32.gt_u
              (local.get $p1)
              (i32.const -2960)))
          (i32.const 1938))))
    (f64.mul
      (local.get $p0)
      (f64.reinterpret_i64
        (i64.shl
          (i64.extend_i32_u
            (i32.add
              (local.get $p1)
              (i32.const 1023)))
          (i64.const 52)))))
  (func $stackSave (export "stackSave") (type $t2) (result i32)
    (global.get $g0))
  (func $stackRestore (export "stackRestore") (type $t3) (param $p0 i32)
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
      (i32.const 5248256))
    (global.set $g1
      (i32.and
        (i32.add
          (i32.const 5368)
          (i32.const 15))
        (i32.const -16))))
  (func $emscripten_stack_get_free (export "emscripten_stack_get_free") (type $t2) (result i32)
    (i32.sub
      (global.get $g0)
      (global.get $g1)))
  (func $emscripten_stack_get_end (export "emscripten_stack_get_end") (type $t2) (result i32)
    (global.get $g1))
  (table $__indirect_function_table (export "__indirect_function_table") 10 10 funcref)
  (memory $memory (export "memory") 256 256)
  (global $g0 (mut i32) (i32.const 5248256))
  (global $g1 (mut i32) (i32.const 0))
  (global $g2 (mut i32) (i32.const 0))
  (elem $e0 (i32.const 1) func $__wasm_call_ctors $__stdio_close $__stdio_read $__stdio_seek $__stdio_write $__emscripten_stdout_close $__emscripten_stdout_seek $fmt_fp $pop_arg_long_double)
  (data $d0 (i32.const 1024) "infinity\00-+   0X0x\00-0X+0X 0X-0x+0x 0x\00%s\00nan\00inf\00NAN\00INF\00.\00(null)\00Hello, %s!\0a\00\00\00\d1t\9e\00W\9d\bd*\80pR\0f\ff\ff>'\0a\00\00\00d\00\00\00\e8\03\00\00\10'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\18\00\00\005\00\00\00q\00\00\00k\ff\ff\ff\ce\fb\ff\ff\92\bf\ff\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\01\02\03\04\05\06\07\08\09\ff\ff\ff\ff\ff\ff\ff\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\22#\ff\ff\ff\ff\ff\ff\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\22#\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\01\02\04\07\03\06\05\00\00\00\00\00\00\00\02\00\00\c0\03\00\00\c0\04\00\00\c0\05\00\00\c0\06\00\00\c0\07\00\00\c0\08\00\00\c0\09\00\00\c0\0a\00\00\c0\0b\00\00\c0\0c\00\00\c0\0d\00\00\c0\0e\00\00\c0\0f\00\00\c0\10\00\00\c0\11\00\00\c0\12\00\00\c0\13\00\00\c0\14\00\00\c0\15\00\00\c0\16\00\00\c0\17\00\00\c0\18\00\00\c0\19\00\00\c0\1a\00\00\c0\1b\00\00\c0\1c\00\00\c0\1d\00\00\c0\1e\00\00\c0\1f\00\00\c0\00\00\00\b3\01\00\00\c3\02\00\00\c3\03\00\00\c3\04\00\00\c3\05\00\00\c3\06\00\00\c3\07\00\00\c3\08\00\00\c3\09\00\00\c3\0a\00\00\c3\0b\00\00\c3\0c\00\00\c3\0d\00\00\d3\0e\00\00\c3\0f\00\00\c3\00\00\0c\bb\01\00\0c\c3\02\00\0c\c3\03\00\0c\c3\04\00\0c\db\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $d1 (i32.const 2144) "\09\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\008\0a\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00`\08\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\04\00\00\00\84\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\08\00\00\00\15P\00\05\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\07\00\00\00\f8\10\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\90\09\00\00"))

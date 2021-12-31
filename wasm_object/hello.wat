(module
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func (param i32 i64 i32) (result i64)))
  (type $t2 (func (param i32) (result i32)))
  (type $t3 (func (param i32 i32) (result i32)))
  (type $t4 (func (param i32 i64 i32 i32) (result i32)))
  (type $t5 (func (param i32 i32 i32 i32) (result i32)))
  (type $t6 (func (param i32)))
  (type $t7 (func))
  (type $t8 (func (result i32)))
  (type $t9 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i32 i32)))
  (type $t11 (func (param i32 i32 i32 i32 i32)))
  (type $t12 (func (param f64 i32) (result f64)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__imported_wasi_snapshot_preview1_fd_close (type $t2)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $__imported_wasi_snapshot_preview1_fd_fdstat_get (type $t3)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__imported_wasi_snapshot_preview1_fd_seek (type $t4)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__imported_wasi_snapshot_preview1_fd_write (type $t5)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type $t6)))
  (func $_start (type $t7)
    (local $l0 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l0
            (call $__original_main))))
      (call $exit
        (local.get $l0))
      (unreachable)))
  (func $__original_main (type $t8) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (local.set $l0
      (global.get $g0))
    (local.set $l1
      (i32.const 16))
    (local.set $l2
      (i32.sub
        (local.get $l0)
        (local.get $l1)))
    (global.set $g0
      (local.get $l2))
    (local.set $l3
      (i32.const 0))
    (i32.store offset=12
      (local.get $l2)
      (local.get $l3))
    (local.set $l4
      (i32.const 1078))
    (local.set $l5
      (i32.const 0))
    (drop
      (call $printf
        (local.get $l4)
        (local.get $l5)))
    (local.set $l6
      (i32.const 0))
    (local.set $l7
      (i32.const 16))
    (local.set $l8
      (i32.add
        (local.get $l2)
        (local.get $l7)))
    (global.set $g0
      (local.get $l8))
    (return
      (local.get $l6)))
  (func $__wasi_fd_close (type $t2) (param $p0 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_fd_close
        (local.get $p0))
      (i32.const 65535)))
  (func $__wasi_fd_fdstat_get (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_fd_fdstat_get
        (local.get $p0)
        (local.get $p1))
      (i32.const 65535)))
  (func $__wasi_fd_seek (type $t4) (param $p0 i32) (param $p1 i64) (param $p2 i32) (param $p3 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_fd_seek
        (local.get $p0)
        (local.get $p1)
        (local.get $p2)
        (local.get $p3))
      (i32.const 65535)))
  (func $__wasi_fd_write (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_fd_write
        (local.get $p0)
        (local.get $p1)
        (local.get $p2)
        (local.get $p3))
      (i32.const 65535)))
  (func $__wasi_proc_exit (type $t6) (param $p0 i32)
    (call $__imported_wasi_snapshot_preview1_proc_exit
      (local.get $p0))
    (unreachable))
  (func $_Exit (type $t6) (param $p0 i32)
    (call $__wasi_proc_exit
      (local.get $p0))
    (unreachable))
  (func $dummy (type $t7))
  (func $__wasm_call_dtors (type $t7)
    (call $dummy)
    (call $__stdio_exit))
  (func $exit (type $t6) (param $p0 i32)
    (call $dummy)
    (call $__stdio_exit)
    (call $_Exit
      (local.get $p0))
    (unreachable))
  (func $printf (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
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
        (i32.const 3424)
        (local.get $p0)
        (local.get $p1)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $close (type $t2) (param $p0 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.tee $p0
          (call $__wasi_fd_close
            (local.get $p0))))
      (return
        (i32.const 0)))
    (i32.store offset=3664
      (i32.const 0)
      (local.get $p0))
    (i32.const -1))
  (func $__stdio_close (type $t2) (param $p0 i32) (result i32)
    (call $close
      (i32.load offset=56
        (local.get $p0))))
  (func $__lseek (type $t1) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $p0
              (call $__wasi_fd_seek
                (local.get $p0)
                (local.get $p1)
                (i32.and
                  (local.get $p2)
                  (i32.const 255))
                (i32.add
                  (local.get $l3)
                  (i32.const 8))))))
        (i32.store offset=3664
          (i32.const 0)
          (select
            (i32.const 70)
            (local.get $p0)
            (i32.eq
              (local.get $p0)
              (i32.const 76))))
        (local.set $p1
          (i64.const -1))
        (br $B0))
      (local.set $p1
        (i64.load offset=8
          (local.get $l3))))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (local.get $p1))
  (func $__stdio_seek (type $t1) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (call $__lseek
      (i32.load offset=56
        (local.get $p0))
      (local.get $p1)
      (local.get $p2)))
  (func $writev (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $l4
      (i32.const -1))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_s
            (local.get $p2)
            (i32.const -1)))
        (i32.store offset=3664
          (i32.const 0)
          (i32.const 28))
        (br $B0))
      (block $B2
        (br_if $B2
          (i32.eqz
            (local.tee $p2
              (call $__wasi_fd_write
                (local.get $p0)
                (local.get $p1)
                (local.get $p2)
                (i32.add
                  (local.get $l3)
                  (i32.const 12))))))
        (i32.store offset=3664
          (i32.const 0)
          (local.get $p2))
        (local.set $l4
          (i32.const -1))
        (br $B0))
      (local.set $l4
        (i32.load offset=12
          (local.get $l3))))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (local.get $l4))
  (func $__stdio_write (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p2))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p1))
    (i32.store
      (local.get $l3)
      (local.tee $p1
        (i32.load offset=24
          (local.get $p0))))
    (i32.store offset=4
      (local.get $l3)
      (local.tee $p1
        (i32.sub
          (i32.load offset=20
            (local.get $p0))
          (local.get $p1))))
    (local.set $l4
      (i32.const 2))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eq
            (local.tee $l5
              (i32.add
                (local.get $p1)
                (local.get $p2)))
            (local.tee $l6
              (call $writev
                (i32.load offset=56
                  (local.get $p0))
                (local.get $l3)
                (i32.const 2)))))
        (local.set $p1
          (local.get $l3))
        (loop $L2
          (block $B3
            (br_if $B3
              (i32.gt_s
                (local.get $l6)
                (i32.const -1)))
            (local.set $l6
              (i32.const 0))
            (i32.store offset=24
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
                (local.get $l4)
                (i32.const 2)))
            (local.set $l6
              (i32.sub
                (local.get $p2)
                (i32.load offset=4
                  (local.get $p1))))
            (br $B0))
          (i32.store
            (local.tee $l9
              (i32.add
                (local.get $p1)
                (i32.shl
                  (local.tee $l8
                    (i32.gt_u
                      (local.get $l6)
                      (local.tee $l7
                        (i32.load offset=4
                          (local.get $p1)))))
                  (i32.const 3))))
            (i32.add
              (i32.load
                (local.get $l9))
              (local.tee $l7
                (i32.sub
                  (local.get $l6)
                  (select
                    (local.get $l7)
                    (i32.const 0)
                    (local.get $l8))))))
          (i32.store
            (local.tee $l9
              (i32.add
                (local.get $p1)
                (select
                  (i32.const 12)
                  (i32.const 4)
                  (local.get $l8))))
            (i32.sub
              (i32.load
                (local.get $l9))
              (local.get $l7)))
          (br_if $L2
            (i32.ne
              (local.tee $l5
                (i32.sub
                  (local.get $l5)
                  (local.get $l6)))
              (local.tee $l6
                (call $writev
                  (i32.load offset=56
                    (local.get $p0))
                  (local.tee $p1
                    (select
                      (i32.add
                        (local.get $p1)
                        (i32.const 8))
                      (local.get $p1)
                      (local.get $l8)))
                  (local.tee $l4
                    (i32.sub
                      (local.get $l4)
                      (local.get $l8)))))))))
      (i32.store offset=24
        (local.get $p0)
        (local.tee $p1
          (i32.load offset=40
            (local.get $p0))))
      (i32.store offset=20
        (local.get $p0)
        (local.get $p1))
      (i32.store offset=16
        (local.get $p0)
        (i32.add
          (local.get $p1)
          (i32.load offset=44
            (local.get $p0))))
      (local.set $l6
        (local.get $p2)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (local.get $l6))
  (func $__isatty (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $p0
            (call $__wasi_fd_fdstat_get
              (local.get $p0)
              (i32.add
                (local.get $l1)
                (i32.const 8)))))
        (local.set $p0
          (i32.const 59))
        (br_if $B1
          (i32.ne
            (i32.load8_u offset=8
              (local.get $l1))
            (i32.const 2)))
        (br_if $B1
          (i32.and
            (i32.load8_u offset=16
              (local.get $l1))
            (i32.const 36)))
        (local.set $l2
          (i32.const 1))
        (br $B0))
      (local.set $l2
        (i32.const 0))
      (i32.store offset=3664
        (i32.const 0)
        (local.get $p0)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 32)))
    (local.get $l2))
  (func $__stdout_write (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (i32.store offset=32
      (local.get $p0)
      (i32.const 4))
    (block $B0
      (br_if $B0
        (i32.and
          (i32.load8_u
            (local.get $p0))
          (i32.const 64)))
      (br_if $B0
        (call $__isatty
          (i32.load offset=56
            (local.get $p0))))
      (i32.store offset=64
        (local.get $p0)
        (i32.const -1)))
    (call $__stdio_write
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)))
  (func $__ofl_lock (type $t8) (result i32)
    (i32.const 4712))
  (func $__stdio_exit (type $t7)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l0
            (i32.load
              (call $__ofl_lock)))))
      (loop $L1
        (block $B2
          (br_if $B2
            (i32.eq
              (i32.load offset=20
                (local.get $l0))
              (i32.load offset=24
                (local.get $l0))))
          (drop
            (call_indirect $T0 (type $t0)
              (local.get $l0)
              (i32.const 0)
              (i32.const 0)
              (i32.load offset=32
                (local.get $l0)))))
        (block $B3
          (br_if $B3
            (i32.eq
              (local.tee $l1
                (i32.load offset=4
                  (local.get $l0)))
              (local.tee $l2
                (i32.load offset=8
                  (local.get $l0)))))
          (drop
            (call_indirect $T0 (type $t1)
              (local.get $l0)
              (i64.extend_i32_s
                (i32.sub
                  (local.get $l1)
                  (local.get $l2)))
              (i32.const 1)
              (i32.load offset=36
                (local.get $l0)))))
        (br_if $L1
          (local.tee $l0
            (i32.load offset=52
              (local.get $l0))))))
    (block $B4
      (br_if $B4
        (i32.eqz
          (local.tee $l0
            (i32.load offset=4716
              (i32.const 0)))))
      (block $B5
        (br_if $B5
          (i32.eq
            (i32.load offset=20
              (local.get $l0))
            (i32.load offset=24
              (local.get $l0))))
        (drop
          (call_indirect $T0 (type $t0)
            (local.get $l0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=32
              (local.get $l0)))))
      (br_if $B4
        (i32.eq
          (local.tee $l1
            (i32.load offset=4
              (local.get $l0)))
          (local.tee $l2
            (i32.load offset=8
              (local.get $l0)))))
      (drop
        (call_indirect $T0 (type $t1)
          (local.get $l0)
          (i64.extend_i32_s
            (i32.sub
              (local.get $l1)
              (local.get $l2)))
          (i32.const 1)
          (i32.load offset=36
            (local.get $l0)))))
    (block $B6
      (br_if $B6
        (i32.eqz
          (local.tee $l0
            (i32.load offset=3536
              (i32.const 0)))))
      (block $B7
        (br_if $B7
          (i32.eq
            (i32.load offset=20
              (local.get $l0))
            (i32.load offset=24
              (local.get $l0))))
        (drop
          (call_indirect $T0 (type $t0)
            (local.get $l0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=32
              (local.get $l0)))))
      (br_if $B6
        (i32.eq
          (local.tee $l1
            (i32.load offset=4
              (local.get $l0)))
          (local.tee $l2
            (i32.load offset=8
              (local.get $l0)))))
      (drop
        (call_indirect $T0 (type $t1)
          (local.get $l0)
          (i64.extend_i32_s
            (i32.sub
              (local.get $l1)
              (local.get $l2)))
          (i32.const 1)
          (i32.load offset=36
            (local.get $l0)))))
    (block $B8
      (br_if $B8
        (i32.eqz
          (local.tee $l0
            (i32.load offset=3656
              (i32.const 0)))))
      (block $B9
        (br_if $B9
          (i32.eq
            (i32.load offset=20
              (local.get $l0))
            (i32.load offset=24
              (local.get $l0))))
        (drop
          (call_indirect $T0 (type $t0)
            (local.get $l0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=32
              (local.get $l0)))))
      (br_if $B8
        (i32.eq
          (local.tee $l1
            (i32.load offset=4
              (local.get $l0)))
          (local.tee $l2
            (i32.load offset=8
              (local.get $l0)))))
      (drop
        (call_indirect $T0 (type $t1)
          (local.get $l0)
          (i64.extend_i32_s
            (i32.sub
              (local.get $l1)
              (local.get $l2)))
          (i32.const 1)
          (i32.load offset=36
            (local.get $l0))))))
  (func $__towrite (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32)
    (i32.store offset=60
      (local.get $p0)
      (i32.or
        (i32.add
          (local.tee $l1
            (i32.load offset=60
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
    (i32.store offset=24
      (local.get $p0)
      (local.tee $l1
        (i32.load offset=40
          (local.get $p0))))
    (i32.store offset=20
      (local.get $p0)
      (local.get $l1))
    (i32.store offset=16
      (local.get $p0)
      (i32.add
        (local.get $l1)
        (i32.load offset=44
          (local.get $p0))))
    (i32.const 0))
  (func $__fwritex (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
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
          (call_indirect $T0 (type $t0)
            (local.get $p2)
            (local.get $p0)
            (local.get $p1)
            (i32.load offset=32
              (local.get $p2)))))
      (local.set $l6
        (i32.const 0))
      (block $B3
        (block $B4
          (br_if $B4
            (i32.ge_s
              (i32.load offset=64
                (local.get $p2))
              (i32.const 0)))
          (local.set $l3
            (local.get $p1))
          (br $B3))
        (local.set $l6
          (i32.const 0))
        (local.set $l4
          (local.get $p0))
        (local.set $l3
          (i32.const 0))
        (loop $L5
          (block $B6
            (br_if $B6
              (i32.ne
                (local.get $p1)
                (local.get $l3)))
            (local.set $l3
              (local.get $p1))
            (br $B3))
          (local.set $l3
            (i32.add
              (local.get $l3)
              (i32.const 1)))
          (local.set $l7
            (i32.add
              (local.get $l4)
              (local.get $p1)))
          (local.set $l4
            (local.tee $l8
              (i32.add
                (local.get $l4)
                (i32.const -1))))
          (br_if $L5
            (i32.ne
              (i32.load8_u
                (i32.add
                  (local.get $l7)
                  (i32.const -1)))
              (i32.const 10))))
        (br_if $B0
          (i32.lt_u
            (local.tee $l4
              (call_indirect $T0 (type $t0)
                (local.get $p2)
                (local.get $p0)
                (local.tee $l6
                  (i32.add
                    (i32.sub
                      (local.get $p1)
                      (local.get $l3))
                    (i32.const 1)))
                (i32.load offset=32
                  (local.get $p2))))
            (local.get $l6)))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const -1)))
        (local.set $p0
          (i32.add
            (i32.add
              (local.get $l8)
              (local.get $p1))
            (i32.const 1)))
        (local.set $l5
          (i32.load offset=20
            (local.get $p2))))
      (drop
        (call $memcpy
          (local.get $l5)
          (local.get $p0)
          (local.get $l3)))
      (i32.store offset=20
        (local.get $p2)
        (i32.add
          (i32.load offset=20
            (local.get $p2))
          (local.get $l3)))
      (local.set $l4
        (i32.add
          (local.get $l6)
          (local.get $l3))))
    (local.get $l4))
  (func $fwrite (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    (local.set $l4
      (i32.mul
        (local.get $p2)
        (local.get $p1)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $l5
            (i32.load offset=16
              (local.get $p3))))
        (local.set $l5
          (i32.const 0))
        (br_if $B0
          (call $__towrite
            (local.get $p3)))
        (local.set $l5
          (i32.load offset=16
            (local.get $p3))))
      (block $B2
        (br_if $B2
          (i32.ge_u
            (i32.sub
              (local.get $l5)
              (local.tee $l6
                (i32.load offset=20
                  (local.get $p3))))
            (local.get $l4)))
        (local.set $l5
          (call_indirect $T0 (type $t0)
            (local.get $p3)
            (local.get $p0)
            (local.get $l4)
            (i32.load offset=32
              (local.get $p3))))
        (br $B0))
      (local.set $l7
        (i32.const 0))
      (block $B3
        (block $B4
          (br_if $B4
            (i32.ge_s
              (i32.load offset=64
                (local.get $p3))
              (i32.const 0)))
          (local.set $l5
            (local.get $l4))
          (br $B3))
        (local.set $l8
          (i32.add
            (local.get $p0)
            (local.get $l4)))
        (local.set $l7
          (i32.const 0))
        (local.set $l5
          (i32.const 0))
        (loop $L5
          (block $B6
            (br_if $B6
              (i32.add
                (local.get $l4)
                (local.get $l5)))
            (local.set $l5
              (local.get $l4))
            (br $B3))
          (local.set $l9
            (i32.add
              (local.get $l8)
              (local.get $l5)))
          (local.set $l5
            (local.tee $l10
              (i32.add
                (local.get $l5)
                (i32.const -1))))
          (br_if $L5
            (i32.ne
              (i32.load8_u
                (i32.add
                  (local.get $l9)
                  (i32.const -1)))
              (i32.const 10))))
        (br_if $B0
          (i32.lt_u
            (local.tee $l5
              (call_indirect $T0 (type $t0)
                (local.get $p3)
                (local.get $p0)
                (local.tee $l7
                  (i32.add
                    (i32.add
                      (local.get $l4)
                      (local.get $l10))
                    (i32.const 1)))
                (i32.load offset=32
                  (local.get $p3))))
            (local.get $l7)))
        (local.set $l5
          (i32.xor
            (local.get $l10)
            (i32.const -1)))
        (local.set $p0
          (i32.add
            (i32.add
              (local.get $l8)
              (local.get $l10))
            (i32.const 1)))
        (local.set $l6
          (i32.load offset=20
            (local.get $p3))))
      (drop
        (call $memcpy
          (local.get $l6)
          (local.get $p0)
          (local.get $l5)))
      (i32.store offset=20
        (local.get $p3)
        (i32.add
          (i32.load offset=20
            (local.get $p3))
          (local.get $l5)))
      (local.set $l5
        (i32.add
          (local.get $l7)
          (local.get $l5))))
    (block $B7
      (br_if $B7
        (i32.ne
          (local.get $l5)
          (local.get $l4)))
      (return
        (select
          (local.get $p2)
          (i32.const 0)
          (local.get $p1))))
    (i32.div_u
      (local.get $l5)
      (local.get $p1)))
  (func $strerror (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (local.tee $l1
          (i32.load offset=4744
            (i32.const 0))))
      (local.set $l1
        (i32.const 4720))
      (i32.store offset=4744
        (i32.const 0)
        (i32.const 4720)))
    (call $__lctrans
      (i32.add
        (i32.load16_u
          (i32.add
            (i32.shl
              (select
                (i32.const 0)
                (local.get $p0)
                (i32.gt_u
                  (local.get $p0)
                  (i32.const 76)))
              (i32.const 1))
            (i32.const 2784)))
        (i32.const 1223))
      (i32.load offset=20
        (local.get $l1))))
  (func $fputs (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (local.set $l2
      (call $strlen
        (local.get $p0)))
    (select
      (i32.const -1)
      (i32.const 0)
      (i32.ne
        (local.get $l2)
        (call $fwrite
          (local.get $p0)
          (i32.const 1)
          (local.get $l2)
          (local.get $p1)))))
  (func $abort (type $t7)
    (unreachable)
    (unreachable))
  (func $vfprintf (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 208))))
    (i32.store offset=204
      (local.get $l3)
      (local.get $p2))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l3)
          (i32.const 160))
        (i32.const 32))
      (i64.const 0))
    (i64.store
      (i32.add
        (local.get $l3)
        (i32.const 184))
      (i64.const 0))
    (i64.store
      (i32.add
        (local.get $l3)
        (i32.const 176))
      (i64.const 0))
    (i64.store offset=168
      (local.get $l3)
      (i64.const 0))
    (i64.store offset=160
      (local.get $l3)
      (i64.const 0))
    (i32.store offset=200
      (local.get $l3)
      (local.get $p2))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ge_s
            (call $printf_core
              (i32.const 0)
              (local.get $p1)
              (i32.add
                (local.get $l3)
                (i32.const 200))
              (i32.add
                (local.get $l3)
                (i32.const 80))
              (i32.add
                (local.get $l3)
                (i32.const 160)))
            (i32.const 0)))
        (local.set $p0
          (i32.const -1))
        (br $B0))
      (local.set $l4
        (i32.load
          (local.get $p0)))
      (block $B2
        (br_if $B2
          (i32.gt_s
            (i32.load offset=60
              (local.get $p0))
            (i32.const 0)))
        (i32.store
          (local.get $p0)
          (i32.and
            (local.get $l4)
            (i32.const -33))))
      (block $B3
        (block $B4
          (block $B5
            (block $B6
              (br_if $B6
                (i32.load offset=44
                  (local.get $p0)))
              (i32.store offset=44
                (local.get $p0)
                (i32.const 80))
              (i32.store offset=24
                (local.get $p0)
                (i32.const 0))
              (i64.store offset=16
                (local.get $p0)
                (i64.const 0))
              (local.set $l5
                (i32.load offset=40
                  (local.get $p0)))
              (i32.store offset=40
                (local.get $p0)
                (local.get $l3))
              (br $B5))
            (local.set $l5
              (i32.const 0))
            (br_if $B4
              (i32.load offset=16
                (local.get $p0))))
          (local.set $p2
            (i32.const -1))
          (br_if $B3
            (call $__towrite
              (local.get $p0))))
        (local.set $p2
          (call $printf_core
            (local.get $p0)
            (local.get $p1)
            (i32.add
              (local.get $l3)
              (i32.const 200))
            (i32.add
              (local.get $l3)
              (i32.const 80))
            (i32.add
              (local.get $l3)
              (i32.const 160)))))
      (local.set $p1
        (i32.and
          (local.get $l4)
          (i32.const 32)))
      (block $B7
        (br_if $B7
          (i32.eqz
            (local.get $l5)))
        (drop
          (call_indirect $T0 (type $t0)
            (local.get $p0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=32
              (local.get $p0))))
        (i32.store offset=44
          (local.get $p0)
          (i32.const 0))
        (i32.store offset=40
          (local.get $p0)
          (local.get $l5))
        (i32.store offset=24
          (local.get $p0)
          (i32.const 0))
        (i32.store offset=16
          (local.get $p0)
          (i32.const 0))
        (local.set $l5
          (i32.load offset=20
            (local.get $p0)))
        (i32.store offset=20
          (local.get $p0)
          (i32.const 0))
        (local.set $p2
          (select
            (local.get $p2)
            (i32.const -1)
            (local.get $l5))))
      (i32.store
        (local.get $p0)
        (i32.or
          (local.tee $l5
            (i32.load
              (local.get $p0)))
          (local.get $p1)))
      (local.set $p0
        (select
          (i32.const -1)
          (local.get $p2)
          (i32.and
            (local.get $l5)
            (i32.const 32)))))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 208)))
    (local.get $p0))
  (func $printf_core (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32) (local $l28 i32) (local $l29 i64) (local $l30 i64) (local $l31 f64) (local $l32 i32) (local $l33 i32) (local $l34 i32) (local $l35 i32) (local $l36 i32) (local $l37 i32) (local $l38 f64) (local $l39 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 880))))
    (local.set $l6
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 68))
        (i32.const 12)))
    (local.set $l7
      (i32.add
        (local.get $l5)
        (i32.const 55)))
    (local.set $l8
      (i32.sub
        (i32.const -2)
        (i32.add
          (local.get $l5)
          (i32.const 80))))
    (local.set $l9
      (i32.or
        (i32.add
          (local.get $l5)
          (i32.const 80))
        (i32.const 9)))
    (local.set $l10
      (i32.sub
        (i32.const -10)
        (i32.add
          (local.get $l5)
          (i32.const 68))))
    (local.set $l11
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 68))
        (i32.const 10)))
    (local.set $l12
      (i32.add
        (local.get $l5)
        (i32.const 400)))
    (local.set $l13
      (i32.add
        (local.get $l5)
        (i32.const 56)))
    (local.set $l14
      (i32.const 0))
    (local.set $l15
      (i32.const 0))
    (local.set $l16
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (loop $L3
            (local.set $l17
              (local.get $p1))
            (br_if $B2
              (i32.gt_s
                (local.get $l16)
                (i32.sub
                  (i32.const 2147483647)
                  (local.get $l15))))
            (local.set $l15
              (i32.add
                (local.get $l16)
                (local.get $l15)))
            (block $B4
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (block $B10
                          (block $B11
                            (block $B12
                              (br_if $B12
                                (i32.eqz
                                  (local.tee $l16
                                    (i32.load8_u
                                      (local.get $l17)))))
                              (local.set $p1
                                (local.get $l17))
                              (loop $L13
                                (block $B14
                                  (block $B15
                                    (block $B16
                                      (br_if $B16
                                        (i32.eqz
                                          (local.tee $l16
                                            (i32.and
                                              (local.get $l16)
                                              (i32.const 255)))))
                                      (br_if $B14
                                        (i32.ne
                                          (local.get $l16)
                                          (i32.const 37)))
                                      (local.set $l16
                                        (local.get $p1))
                                      (loop $L17
                                        (br_if $B15
                                          (i32.ne
                                            (i32.load8_u
                                              (i32.add
                                                (local.get $p1)
                                                (i32.const 1)))
                                            (i32.const 37)))
                                        (local.set $l16
                                          (i32.add
                                            (local.get $l16)
                                            (i32.const 1)))
                                        (br_if $L17
                                          (i32.eq
                                            (i32.load8_u
                                              (local.tee $p1
                                                (i32.add
                                                  (local.get $p1)
                                                  (i32.const 2))))
                                            (i32.const 37)))
                                        (br $B15)))
                                    (local.set $l16
                                      (local.get $p1)))
                                  (br_if $B2
                                    (i32.gt_s
                                      (local.tee $l16
                                        (i32.sub
                                          (local.get $l16)
                                          (local.get $l17)))
                                      (local.tee $l18
                                        (i32.sub
                                          (i32.const 2147483647)
                                          (local.get $l15)))))
                                  (block $B18
                                    (br_if $B18
                                      (i32.eqz
                                        (local.get $p0)))
                                    (br_if $B18
                                      (i32.and
                                        (i32.load8_u
                                          (local.get $p0))
                                        (i32.const 32)))
                                    (drop
                                      (call $__fwritex
                                        (local.get $l17)
                                        (local.get $l16)
                                        (local.get $p0))))
                                  (br_if $L3
                                    (local.get $l16))
                                  (local.set $l16
                                    (i32.add
                                      (local.get $p1)
                                      (i32.const 1)))
                                  (local.set $l19
                                    (i32.const -1))
                                  (block $B19
                                    (br_if $B19
                                      (i32.gt_u
                                        (local.tee $l21
                                          (i32.add
                                            (local.tee $l20
                                              (i32.load8_s offset=1
                                                (local.get $p1)))
                                            (i32.const -48)))
                                        (i32.const 9)))
                                    (br_if $B19
                                      (i32.ne
                                        (i32.load8_u offset=2
                                          (local.get $p1))
                                        (i32.const 36)))
                                    (local.set $l16
                                      (i32.add
                                        (local.get $p1)
                                        (i32.const 3)))
                                    (local.set $l20
                                      (i32.load8_s offset=3
                                        (local.get $p1)))
                                    (local.set $l14
                                      (i32.const 1))
                                    (local.set $l19
                                      (local.get $l21)))
                                  (local.set $l22
                                    (i32.const 0))
                                  (block $B20
                                    (br_if $B20
                                      (i32.gt_u
                                        (local.tee $p1
                                          (i32.add
                                            (local.get $l20)
                                            (i32.const -32)))
                                        (i32.const 31)))
                                    (br_if $B20
                                      (i32.eqz
                                        (i32.and
                                          (local.tee $p1
                                            (i32.shl
                                              (i32.const 1)
                                              (local.get $p1)))
                                          (i32.const 75913))))
                                    (local.set $l21
                                      (i32.add
                                        (local.get $l16)
                                        (i32.const 1)))
                                    (local.set $l22
                                      (i32.const 0))
                                    (loop $L21
                                      (local.set $l22
                                        (i32.or
                                          (local.get $p1)
                                          (local.get $l22)))
                                      (br_if $B20
                                        (i32.ge_u
                                          (local.tee $p1
                                            (i32.add
                                              (local.tee $l20
                                                (i32.load8_s
                                                  (local.tee $l16
                                                    (local.get $l21))))
                                              (i32.const -32)))
                                          (i32.const 32)))
                                      (local.set $l21
                                        (i32.add
                                          (local.get $l16)
                                          (i32.const 1)))
                                      (br_if $L21
                                        (i32.and
                                          (local.tee $p1
                                            (i32.shl
                                              (i32.const 1)
                                              (local.get $p1)))
                                          (i32.const 75913)))))
                                  (block $B22
                                    (br_if $B22
                                      (i32.ne
                                        (local.get $l20)
                                        (i32.const 42)))
                                    (block $B23
                                      (block $B24
                                        (br_if $B24
                                          (i32.gt_u
                                            (local.tee $p1
                                              (i32.add
                                                (i32.load8_s offset=1
                                                  (local.get $l16))
                                                (i32.const -48)))
                                            (i32.const 9)))
                                        (br_if $B24
                                          (i32.ne
                                            (i32.load8_u offset=2
                                              (local.get $l16))
                                            (i32.const 36)))
                                        (i32.store
                                          (i32.add
                                            (local.get $p4)
                                            (i32.shl
                                              (local.get $p1)
                                              (i32.const 2)))
                                          (i32.const 10))
                                        (local.set $l21
                                          (i32.add
                                            (local.get $l16)
                                            (i32.const 3)))
                                        (local.set $l23
                                          (i32.load
                                            (i32.add
                                              (i32.add
                                                (i32.shl
                                                  (i32.load8_s offset=1
                                                    (local.get $l16))
                                                  (i32.const 3))
                                                (local.get $p3))
                                              (i32.const -384))))
                                        (local.set $l14
                                          (i32.const 1))
                                        (br $B23))
                                      (br_if $B10
                                        (local.get $l14))
                                      (local.set $l21
                                        (i32.add
                                          (local.get $l16)
                                          (i32.const 1)))
                                      (block $B25
                                        (br_if $B25
                                          (local.get $p0))
                                        (local.set $l14
                                          (i32.const 0))
                                        (local.set $l23
                                          (i32.const 0))
                                        (br $B11))
                                      (i32.store
                                        (local.get $p2)
                                        (i32.add
                                          (local.tee $p1
                                            (i32.load
                                              (local.get $p2)))
                                          (i32.const 4)))
                                      (local.set $l23
                                        (i32.load
                                          (local.get $p1)))
                                      (local.set $l14
                                        (i32.const 0)))
                                    (br_if $B11
                                      (i32.gt_s
                                        (local.get $l23)
                                        (i32.const -1)))
                                    (local.set $l23
                                      (i32.sub
                                        (i32.const 0)
                                        (local.get $l23)))
                                    (local.set $l22
                                      (i32.or
                                        (local.get $l22)
                                        (i32.const 8192)))
                                    (br $B11))
                                  (local.set $l23
                                    (i32.const 0))
                                  (block $B26
                                    (br_if $B26
                                      (i32.le_u
                                        (local.tee $p1
                                          (i32.add
                                            (local.get $l20)
                                            (i32.const -48)))
                                        (i32.const 9)))
                                    (local.set $l21
                                      (local.get $l16))
                                    (br $B11))
                                  (local.set $l23
                                    (i32.const 0))
                                  (loop $L27
                                    (block $B28
                                      (br_if $B28
                                        (i32.gt_u
                                          (local.get $l23)
                                          (i32.const 214748364)))
                                      (local.set $l23
                                        (select
                                          (i32.const -1)
                                          (i32.add
                                            (local.tee $l21
                                              (i32.mul
                                                (local.get $l23)
                                                (i32.const 10)))
                                            (local.get $p1))
                                          (i32.gt_s
                                            (local.get $p1)
                                            (i32.sub
                                              (i32.const 2147483647)
                                              (local.get $l21)))))
                                      (local.set $p1
                                        (i32.load8_s offset=1
                                          (local.get $l16)))
                                      (local.set $l16
                                        (local.tee $l21
                                          (i32.add
                                            (local.get $l16)
                                            (i32.const 1))))
                                      (br_if $L27
                                        (i32.lt_u
                                          (local.tee $p1
                                            (i32.add
                                              (local.get $p1)
                                              (i32.const -48)))
                                          (i32.const 10)))
                                      (br_if $B2
                                        (i32.lt_s
                                          (local.get $l23)
                                          (i32.const 0)))
                                      (br $B11))
                                    (local.set $p1
                                      (i32.load8_s offset=1
                                        (local.get $l16)))
                                    (local.set $l23
                                      (i32.const -1))
                                    (local.set $l16
                                      (i32.add
                                        (local.get $l16)
                                        (i32.const 1)))
                                    (br_if $L27
                                      (i32.lt_u
                                        (local.tee $p1
                                          (i32.add
                                            (local.get $p1)
                                            (i32.const -48)))
                                        (i32.const 10)))
                                    (br $B2)))
                                (local.set $l16
                                  (i32.load8_u
                                    (local.tee $p1
                                      (i32.add
                                        (local.get $p1)
                                        (i32.const 1)))))
                                (br $L13)))
                            (br_if $B0
                              (local.get $p0))
                            (block $B29
                              (br_if $B29
                                (local.get $l14))
                              (local.set $l15
                                (i32.const 0))
                              (br $B0))
                            (block $B30
                              (block $B31
                                (br_if $B31
                                  (local.tee $p1
                                    (i32.load offset=4
                                      (local.get $p4))))
                                (local.set $p1
                                  (i32.const 1))
                                (br $B30))
                              (call $pop_arg
                                (i32.add
                                  (local.get $p3)
                                  (i32.const 8))
                                (local.get $p1)
                                (local.get $p2))
                              (block $B32
                                (br_if $B32
                                  (local.tee $p1
                                    (i32.load offset=8
                                      (local.get $p4))))
                                (local.set $p1
                                  (i32.const 2))
                                (br $B30))
                              (call $pop_arg
                                (i32.add
                                  (local.get $p3)
                                  (i32.const 16))
                                (local.get $p1)
                                (local.get $p2))
                              (block $B33
                                (br_if $B33
                                  (local.tee $p1
                                    (i32.load offset=12
                                      (local.get $p4))))
                                (local.set $p1
                                  (i32.const 3))
                                (br $B30))
                              (call $pop_arg
                                (i32.add
                                  (local.get $p3)
                                  (i32.const 24))
                                (local.get $p1)
                                (local.get $p2))
                              (block $B34
                                (br_if $B34
                                  (local.tee $p1
                                    (i32.load offset=16
                                      (local.get $p4))))
                                (local.set $p1
                                  (i32.const 4))
                                (br $B30))
                              (call $pop_arg
                                (i32.add
                                  (local.get $p3)
                                  (i32.const 32))
                                (local.get $p1)
                                (local.get $p2))
                              (block $B35
                                (br_if $B35
                                  (local.tee $p1
                                    (i32.load offset=20
                                      (local.get $p4))))
                                (local.set $p1
                                  (i32.const 5))
                                (br $B30))
                              (call $pop_arg
                                (i32.add
                                  (local.get $p3)
                                  (i32.const 40))
                                (local.get $p1)
                                (local.get $p2))
                              (block $B36
                                (br_if $B36
                                  (local.tee $p1
                                    (i32.load offset=24
                                      (local.get $p4))))
                                (local.set $p1
                                  (i32.const 6))
                                (br $B30))
                              (call $pop_arg
                                (i32.add
                                  (local.get $p3)
                                  (i32.const 48))
                                (local.get $p1)
                                (local.get $p2))
                              (block $B37
                                (br_if $B37
                                  (local.tee $p1
                                    (i32.load offset=28
                                      (local.get $p4))))
                                (local.set $p1
                                  (i32.const 7))
                                (br $B30))
                              (call $pop_arg
                                (i32.add
                                  (local.get $p3)
                                  (i32.const 56))
                                (local.get $p1)
                                (local.get $p2))
                              (block $B38
                                (br_if $B38
                                  (local.tee $p1
                                    (i32.load offset=32
                                      (local.get $p4))))
                                (local.set $p1
                                  (i32.const 8))
                                (br $B30))
                              (call $pop_arg
                                (i32.add
                                  (local.get $p3)
                                  (i32.const 64))
                                (local.get $p1)
                                (local.get $p2))
                              (block $B39
                                (br_if $B39
                                  (local.tee $p1
                                    (i32.load offset=36
                                      (local.get $p4))))
                                (local.set $p1
                                  (i32.const 9))
                                (br $B30))
                              (call $pop_arg
                                (i32.add
                                  (local.get $p3)
                                  (i32.const 72))
                                (local.get $p1)
                                (local.get $p2))
                              (local.set $l15
                                (i32.const 1))
                              (br $B0))
                            (local.set $p1
                              (i32.shl
                                (local.get $p1)
                                (i32.const 2)))
                            (loop $L40
                              (br_if $B10
                                (i32.load
                                  (i32.add
                                    (local.get $p4)
                                    (local.get $p1))))
                              (br_if $L40
                                (i32.ne
                                  (local.tee $p1
                                    (i32.add
                                      (local.get $p1)
                                      (i32.const 4)))
                                  (i32.const 40))))
                            (local.set $l15
                              (i32.const 1))
                            (br $B0))
                          (local.set $l16
                            (i32.const 0))
                          (local.set $l20
                            (i32.const -1))
                          (block $B41
                            (block $B42
                              (br_if $B42
                                (i32.eq
                                  (i32.load8_u
                                    (local.get $l21))
                                  (i32.const 46)))
                              (local.set $p1
                                (local.get $l21))
                              (local.set $l24
                                (i32.const 0))
                              (br $B41))
                            (block $B43
                              (br_if $B43
                                (i32.ne
                                  (local.tee $l20
                                    (i32.load8_s offset=1
                                      (local.get $l21)))
                                  (i32.const 42)))
                              (block $B44
                                (block $B45
                                  (br_if $B45
                                    (i32.gt_u
                                      (local.tee $p1
                                        (i32.add
                                          (i32.load8_s offset=2
                                            (local.get $l21))
                                          (i32.const -48)))
                                      (i32.const 9)))
                                  (br_if $B45
                                    (i32.ne
                                      (i32.load8_u offset=3
                                        (local.get $l21))
                                      (i32.const 36)))
                                  (i32.store
                                    (i32.add
                                      (local.get $p4)
                                      (i32.shl
                                        (local.get $p1)
                                        (i32.const 2)))
                                    (i32.const 10))
                                  (local.set $p1
                                    (i32.add
                                      (local.get $l21)
                                      (i32.const 4)))
                                  (local.set $l20
                                    (i32.load
                                      (i32.add
                                        (i32.add
                                          (i32.shl
                                            (i32.load8_s offset=2
                                              (local.get $l21))
                                            (i32.const 3))
                                          (local.get $p3))
                                        (i32.const -384))))
                                  (br $B44))
                                (br_if $B10
                                  (local.get $l14))
                                (local.set $p1
                                  (i32.add
                                    (local.get $l21)
                                    (i32.const 2)))
                                (block $B46
                                  (br_if $B46
                                    (local.get $p0))
                                  (local.set $l20
                                    (i32.const 0))
                                  (br $B44))
                                (i32.store
                                  (local.get $p2)
                                  (i32.add
                                    (local.tee $l21
                                      (i32.load
                                        (local.get $p2)))
                                    (i32.const 4)))
                                (local.set $l20
                                  (i32.load
                                    (local.get $l21))))
                              (local.set $l24
                                (i32.shr_u
                                  (i32.xor
                                    (local.get $l20)
                                    (i32.const -1))
                                  (i32.const 31)))
                              (br $B41))
                            (local.set $p1
                              (i32.add
                                (local.get $l21)
                                (i32.const 1)))
                            (block $B47
                              (br_if $B47
                                (i32.le_u
                                  (local.tee $l25
                                    (i32.add
                                      (local.get $l20)
                                      (i32.const -48)))
                                  (i32.const 9)))
                              (local.set $l24
                                (i32.const 1))
                              (local.set $l20
                                (i32.const 0))
                              (br $B41))
                            (local.set $l21
                              (i32.const 0))
                            (loop $L48
                              (local.set $l20
                                (i32.const -1))
                              (block $B49
                                (br_if $B49
                                  (i32.gt_u
                                    (local.get $l21)
                                    (i32.const 214748364)))
                                (local.set $l20
                                  (select
                                    (i32.const -1)
                                    (i32.add
                                      (local.tee $l21
                                        (i32.mul
                                          (local.get $l21)
                                          (i32.const 10)))
                                      (local.get $l25))
                                    (i32.gt_s
                                      (local.get $l25)
                                      (i32.sub
                                        (i32.const 2147483647)
                                        (local.get $l21))))))
                              (local.set $l24
                                (i32.const 1))
                              (local.set $l21
                                (local.get $l20))
                              (br_if $L48
                                (i32.lt_u
                                  (local.tee $l25
                                    (i32.add
                                      (i32.load8_s
                                        (local.tee $p1
                                          (i32.add
                                            (local.get $p1)
                                            (i32.const 1))))
                                      (i32.const -48)))
                                  (i32.const 10)))))
                          (loop $L50
                            (local.set $l21
                              (local.get $l16))
                            (br_if $B10
                              (i32.gt_u
                                (local.tee $l16
                                  (i32.add
                                    (i32.load8_s
                                      (local.get $p1))
                                    (i32.const -65)))
                                (i32.const 57)))
                            (local.set $p1
                              (i32.add
                                (local.get $p1)
                                (i32.const 1)))
                            (br_if $L50
                              (i32.lt_u
                                (i32.add
                                  (local.tee $l16
                                    (i32.load8_u
                                      (i32.add
                                        (i32.add
                                          (i32.mul
                                            (local.get $l21)
                                            (i32.const 58))
                                          (local.get $l16))
                                        (i32.const 2944))))
                                  (i32.const -1))
                                (i32.const 8))))
                          (block $B51
                            (block $B52
                              (block $B53
                                (br_if $B53
                                  (i32.eq
                                    (local.get $l16)
                                    (i32.const 27)))
                                (br_if $B10
                                  (i32.eqz
                                    (local.get $l16)))
                                (block $B54
                                  (br_if $B54
                                    (i32.lt_s
                                      (local.get $l19)
                                      (i32.const 0)))
                                  (i32.store
                                    (i32.add
                                      (local.get $p4)
                                      (i32.shl
                                        (local.get $l19)
                                        (i32.const 2)))
                                    (local.get $l16))
                                  (i64.store offset=56
                                    (local.get $l5)
                                    (i64.load
                                      (i32.add
                                        (local.get $p3)
                                        (i32.shl
                                          (local.get $l19)
                                          (i32.const 3)))))
                                  (br $B52))
                                (block $B55
                                  (br_if $B55
                                    (local.get $p0))
                                  (local.set $l15
                                    (i32.const 0))
                                  (br $B0))
                                (call $pop_arg
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 56))
                                  (local.get $l16)
                                  (local.get $p2))
                                (br $B51))
                              (br_if $B10
                                (i32.gt_s
                                  (local.get $l19)
                                  (i32.const -1))))
                            (local.set $l16
                              (i32.const 0))
                            (br_if $L3
                              (i32.eqz
                                (local.get $p0))))
                          (local.set $l19
                            (select
                              (local.tee $l25
                                (i32.and
                                  (local.get $l22)
                                  (i32.const -65537)))
                              (local.get $l22)
                              (i32.and
                                (local.get $l22)
                                (i32.const 8192))))
                          (block $B56
                            (block $B57
                              (block $B58
                                (block $B59
                                  (block $B60
                                    (block $B61
                                      (block $B62
                                        (block $B63
                                          (block $B64
                                            (block $B65
                                              (block $B66
                                                (block $B67
                                                  (block $B68
                                                    (block $B69
                                                      (block $B70
                                                        (block $B71
                                                          (block $B72
                                                            (br_table $B56 $B9 $B59 $B9 $B56 $B56 $B56 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B60 $B9 $B9 $B9 $B9 $B69 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B9 $B56 $B9 $B64 $B67 $B56 $B56 $B56 $B9 $B67 $B9 $B9 $B9 $B63 $B71 $B68 $B70 $B9 $B9 $B62 $B9 $B72 $B9 $B9 $B69 $B9
                                                              (i32.add
                                                                (local.tee $l26
                                                                  (select
                                                                    (select
                                                                      (i32.and
                                                                        (local.tee $l16
                                                                          (i32.load8_s
                                                                            (i32.add
                                                                              (local.get $p1)
                                                                              (i32.const -1))))
                                                                        (i32.const -33))
                                                                      (local.get $l16)
                                                                      (i32.eq
                                                                        (i32.and
                                                                          (local.get $l16)
                                                                          (i32.const 15))
                                                                        (i32.const 3)))
                                                                    (local.get $l16)
                                                                    (local.get $l21)))
                                                                (i32.const -65))))
                                                          (local.set $l27
                                                            (i32.const 0))
                                                          (local.set $l28
                                                            (i32.const 1024))
                                                          (local.set $l29
                                                            (i64.load offset=56
                                                              (local.get $l5)))
                                                          (br $B66))
                                                        (local.set $l16
                                                          (i32.const 0))
                                                        (block $B73
                                                          (block $B74
                                                            (block $B75
                                                              (block $B76
                                                                (block $B77
                                                                  (block $B78
                                                                    (block $B79
                                                                      (br_table $B79 $B78 $B77 $B76 $B75 $L3 $B74 $B73 $L3
                                                                        (i32.and
                                                                          (local.get $l21)
                                                                          (i32.const 255))))
                                                                    (i32.store
                                                                      (i32.load offset=56
                                                                        (local.get $l5))
                                                                      (local.get $l15))
                                                                    (br $L3))
                                                                  (i32.store
                                                                    (i32.load offset=56
                                                                      (local.get $l5))
                                                                    (local.get $l15))
                                                                  (br $L3))
                                                                (i64.store
                                                                  (i32.load offset=56
                                                                    (local.get $l5))
                                                                  (i64.extend_i32_s
                                                                    (local.get $l15)))
                                                                (br $L3))
                                                              (i32.store16
                                                                (i32.load offset=56
                                                                  (local.get $l5))
                                                                (local.get $l15))
                                                              (br $L3))
                                                            (i32.store8
                                                              (i32.load offset=56
                                                                (local.get $l5))
                                                              (local.get $l15))
                                                            (br $L3))
                                                          (i32.store
                                                            (i32.load offset=56
                                                              (local.get $l5))
                                                            (local.get $l15))
                                                          (br $L3))
                                                        (i64.store
                                                          (i32.load offset=56
                                                            (local.get $l5))
                                                          (i64.extend_i32_s
                                                            (local.get $l15)))
                                                        (br $L3))
                                                      (local.set $l20
                                                        (select
                                                          (local.get $l20)
                                                          (i32.const 8)
                                                          (i32.gt_u
                                                            (local.get $l20)
                                                            (i32.const 8))))
                                                      (local.set $l19
                                                        (i32.or
                                                          (local.get $l19)
                                                          (i32.const 8)))
                                                      (local.set $l26
                                                        (i32.const 120)))
                                                    (local.set $l27
                                                      (i32.const 0))
                                                    (local.set $l28
                                                      (i32.const 1024))
                                                    (block $B80
                                                      (br_if $B80
                                                        (i32.eqz
                                                          (i64.eqz
                                                            (local.tee $l29
                                                              (i64.load offset=56
                                                                (local.get $l5))))))
                                                      (local.set $l17
                                                        (local.get $l13))
                                                      (br $B65))
                                                    (local.set $l21
                                                      (i32.and
                                                        (local.get $l26)
                                                        (i32.const 32)))
                                                    (local.set $l17
                                                      (local.get $l13))
                                                    (loop $L81
                                                      (i32.store8
                                                        (local.tee $l17
                                                          (i32.add
                                                            (local.get $l17)
                                                            (i32.const -1)))
                                                        (i32.or
                                                          (i32.load8_u
                                                            (i32.add
                                                              (i32.and
                                                                (i32.wrap_i64
                                                                  (local.get $l29))
                                                                (i32.const 15))
                                                              (i32.const 3408)))
                                                          (local.get $l21)))
                                                      (local.set $l16
                                                        (i64.gt_u
                                                          (local.get $l29)
                                                          (i64.const 15)))
                                                      (local.set $l29
                                                        (i64.shr_u
                                                          (local.get $l29)
                                                          (i64.const 4)))
                                                      (br_if $L81
                                                        (local.get $l16)))
                                                    (br_if $B65
                                                      (i32.eqz
                                                        (i32.and
                                                          (local.get $l19)
                                                          (i32.const 8))))
                                                    (local.set $l28
                                                      (i32.add
                                                        (i32.shr_s
                                                          (local.get $l26)
                                                          (i32.const 4))
                                                        (i32.const 1024)))
                                                    (local.set $l27
                                                      (i32.const 2))
                                                    (br $B65))
                                                  (local.set $l17
                                                    (local.get $l13))
                                                  (block $B82
                                                    (br_if $B82
                                                      (i64.eqz
                                                        (local.tee $l29
                                                          (i64.load offset=56
                                                            (local.get $l5)))))
                                                    (local.set $l17
                                                      (local.get $l13))
                                                    (loop $L83
                                                      (i32.store8
                                                        (local.tee $l17
                                                          (i32.add
                                                            (local.get $l17)
                                                            (i32.const -1)))
                                                        (i32.or
                                                          (i32.and
                                                            (i32.wrap_i64
                                                              (local.get $l29))
                                                            (i32.const 7))
                                                          (i32.const 48)))
                                                      (local.set $l16
                                                        (i64.gt_u
                                                          (local.get $l29)
                                                          (i64.const 7)))
                                                      (local.set $l29
                                                        (i64.shr_u
                                                          (local.get $l29)
                                                          (i64.const 3)))
                                                      (br_if $L83
                                                        (local.get $l16))))
                                                  (local.set $l27
                                                    (i32.const 0))
                                                  (local.set $l28
                                                    (i32.const 1024))
                                                  (br_if $B65
                                                    (i32.eqz
                                                      (i32.and
                                                        (local.get $l19)
                                                        (i32.const 8))))
                                                  (local.set $l20
                                                    (select
                                                      (local.get $l20)
                                                      (i32.add
                                                        (local.tee $l16
                                                          (i32.sub
                                                            (local.get $l13)
                                                            (local.get $l17)))
                                                        (i32.const 1))
                                                      (i32.gt_s
                                                        (local.get $l20)
                                                        (local.get $l16))))
                                                  (br $B65))
                                                (block $B84
                                                  (br_if $B84
                                                    (i64.gt_s
                                                      (local.tee $l29
                                                        (i64.load offset=56
                                                          (local.get $l5)))
                                                      (i64.const -1)))
                                                  (i64.store offset=56
                                                    (local.get $l5)
                                                    (local.tee $l29
                                                      (i64.sub
                                                        (i64.const 0)
                                                        (local.get $l29))))
                                                  (local.set $l27
                                                    (i32.const 1))
                                                  (local.set $l28
                                                    (i32.const 1024))
                                                  (br $B66))
                                                (block $B85
                                                  (br_if $B85
                                                    (i32.eqz
                                                      (i32.and
                                                        (local.get $l19)
                                                        (i32.const 2048))))
                                                  (local.set $l27
                                                    (i32.const 1))
                                                  (local.set $l28
                                                    (i32.const 1025))
                                                  (br $B66))
                                                (local.set $l28
                                                  (select
                                                    (i32.const 1026)
                                                    (i32.const 1024)
                                                    (local.tee $l27
                                                      (i32.and
                                                        (local.get $l19)
                                                        (i32.const 1))))))
                                              (block $B86
                                                (block $B87
                                                  (br_if $B87
                                                    (i64.ge_u
                                                      (local.get $l29)
                                                      (i64.const 4294967296)))
                                                  (local.set $l30
                                                    (local.get $l29))
                                                  (local.set $l17
                                                    (local.get $l13))
                                                  (br $B86))
                                                (local.set $l17
                                                  (local.get $l13))
                                                (loop $L88
                                                  (i32.store8
                                                    (local.tee $l17
                                                      (i32.add
                                                        (local.get $l17)
                                                        (i32.const -1)))
                                                    (i32.or
                                                      (i32.wrap_i64
                                                        (i64.sub
                                                          (local.get $l29)
                                                          (i64.mul
                                                            (local.tee $l30
                                                              (i64.div_u
                                                                (local.get $l29)
                                                                (i64.const 10)))
                                                            (i64.const 10))))
                                                      (i32.const 48)))
                                                  (local.set $l16
                                                    (i64.gt_u
                                                      (local.get $l29)
                                                      (i64.const 42949672959)))
                                                  (local.set $l29
                                                    (local.get $l30))
                                                  (br_if $L88
                                                    (local.get $l16))))
                                              (br_if $B65
                                                (i32.eqz
                                                  (local.tee $l16
                                                    (i32.wrap_i64
                                                      (local.get $l30)))))
                                              (loop $L89
                                                (i32.store8
                                                  (local.tee $l17
                                                    (i32.add
                                                      (local.get $l17)
                                                      (i32.const -1)))
                                                  (i32.or
                                                    (i32.sub
                                                      (local.get $l16)
                                                      (i32.mul
                                                        (local.tee $l21
                                                          (i32.div_u
                                                            (local.get $l16)
                                                            (i32.const 10)))
                                                        (i32.const 10)))
                                                    (i32.const 48)))
                                                (local.set $l22
                                                  (i32.gt_u
                                                    (local.get $l16)
                                                    (i32.const 9)))
                                                (local.set $l16
                                                  (local.get $l21))
                                                (br_if $L89
                                                  (local.get $l22))))
                                            (block $B90
                                              (br_if $B90
                                                (i32.eqz
                                                  (local.get $l24)))
                                              (br_if $B2
                                                (i32.lt_s
                                                  (local.get $l20)
                                                  (i32.const 0))))
                                            (local.set $l25
                                              (select
                                                (i32.and
                                                  (local.get $l19)
                                                  (i32.const -65537))
                                                (local.get $l19)
                                                (local.get $l24)))
                                            (block $B91
                                              (br_if $B91
                                                (i64.ne
                                                  (local.tee $l29
                                                    (i64.load offset=56
                                                      (local.get $l5)))
                                                  (i64.const 0)))
                                              (local.set $l22
                                                (i32.const 0))
                                              (br_if $B91
                                                (local.get $l20))
                                              (local.set $l17
                                                (local.get $l13))
                                              (local.set $l16
                                                (local.get $l13))
                                              (br $B8))
                                            (local.set $l22
                                              (select
                                                (local.get $l20)
                                                (local.tee $l16
                                                  (i32.add
                                                    (i32.sub
                                                      (local.get $l13)
                                                      (local.get $l17))
                                                    (i64.eqz
                                                      (local.get $l29))))
                                                (i32.gt_s
                                                  (local.get $l20)
                                                  (local.get $l16))))
                                            (local.set $l16
                                              (local.get $l13))
                                            (br $B8))
                                          (i64.store8 offset=55
                                            (local.get $l5)
                                            (i64.load offset=56
                                              (local.get $l5)))
                                          (local.set $l27
                                            (i32.const 0))
                                          (local.set $l28
                                            (i32.const 1024))
                                          (local.set $l22
                                            (i32.const 1))
                                          (local.set $l17
                                            (local.get $l7))
                                          (local.set $l16
                                            (local.get $l13))
                                          (br $B8))
                                        (local.set $l17
                                          (call $strerror
                                            (i32.load offset=3664
                                              (i32.const 0))))
                                        (br $B61))
                                      (local.set $l17
                                        (select
                                          (local.tee $l16
                                            (i32.load offset=56
                                              (local.get $l5)))
                                          (i32.const 1071)
                                          (local.get $l16))))
                                    (local.set $l27
                                      (i32.const 0))
                                    (local.set $l16
                                      (i32.add
                                        (local.get $l17)
                                        (local.tee $l22
                                          (call $strnlen
                                            (local.get $l17)
                                            (select
                                              (i32.const 2147483647)
                                              (local.get $l20)
                                              (i32.lt_s
                                                (local.get $l20)
                                                (i32.const 0)))))))
                                    (local.set $l28
                                      (i32.const 1024))
                                    (br_if $B8
                                      (i32.gt_s
                                        (local.get $l20)
                                        (i32.const -1)))
                                    (br_if $B8
                                      (i32.eqz
                                        (i32.load8_u
                                          (local.get $l16))))
                                    (br $B2))
                                  (local.set $l21
                                    (i32.load offset=56
                                      (local.get $l5)))
                                  (br_if $B58
                                    (local.get $l20))
                                  (local.set $l16
                                    (i32.const 0))
                                  (br $B57))
                                (i32.store offset=12
                                  (local.get $l5)
                                  (i32.const 0))
                                (i64.store32 offset=8
                                  (local.get $l5)
                                  (i64.load offset=56
                                    (local.get $l5)))
                                (i32.store offset=56
                                  (local.get $l5)
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 8)))
                                (local.set $l20
                                  (i32.const -1))
                                (local.set $l21
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 8))))
                              (local.set $l16
                                (i32.const 0))
                              (local.set $l17
                                (local.get $l21))
                              (block $B92
                                (loop $L93
                                  (br_if $B92
                                    (i32.eqz
                                      (local.tee $l18
                                        (i32.load
                                          (local.get $l17)))))
                                  (block $B94
                                    (br_if $B94
                                      (local.tee $l22
                                        (i32.lt_s
                                          (local.tee $l18
                                            (call $wctomb
                                              (i32.add
                                                (local.get $l5)
                                                (i32.const 4))
                                              (local.get $l18)))
                                          (i32.const 0))))
                                    (br_if $B94
                                      (i32.gt_u
                                        (local.get $l18)
                                        (i32.sub
                                          (local.get $l20)
                                          (local.get $l16))))
                                    (local.set $l17
                                      (i32.add
                                        (local.get $l17)
                                        (i32.const 4)))
                                    (br_if $L93
                                      (i32.gt_u
                                        (local.get $l20)
                                        (local.tee $l16
                                          (i32.add
                                            (local.get $l18)
                                            (local.get $l16)))))
                                    (br $B92)))
                                (br_if $B1
                                  (local.get $l22)))
                              (br_if $B2
                                (i32.lt_s
                                  (local.get $l16)
                                  (i32.const 0))))
                            (block $B95
                              (br_if $B95
                                (local.tee $l22
                                  (i32.and
                                    (local.get $l19)
                                    (i32.const 73728))))
                              (br_if $B95
                                (i32.le_s
                                  (local.get $l23)
                                  (local.get $l16)))
                              (drop
                                (call $memset
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 112))
                                  (i32.const 32)
                                  (select
                                    (local.tee $l17
                                      (i32.sub
                                        (local.get $l23)
                                        (local.get $l16)))
                                    (i32.const 256)
                                    (local.tee $l18
                                      (i32.lt_u
                                        (local.get $l17)
                                        (i32.const 256))))))
                              (block $B96
                                (br_if $B96
                                  (local.get $l18))
                                (loop $L97
                                  (block $B98
                                    (br_if $B98
                                      (i32.and
                                        (i32.load8_u
                                          (local.get $p0))
                                        (i32.const 32)))
                                    (drop
                                      (call $__fwritex
                                        (i32.add
                                          (local.get $l5)
                                          (i32.const 112))
                                        (i32.const 256)
                                        (local.get $p0))))
                                  (br_if $L97
                                    (i32.gt_u
                                      (local.tee $l17
                                        (i32.add
                                          (local.get $l17)
                                          (i32.const -256)))
                                      (i32.const 255)))))
                              (br_if $B95
                                (i32.and
                                  (i32.load8_u
                                    (local.get $p0))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 112))
                                  (local.get $l17)
                                  (local.get $p0))))
                            (block $B99
                              (br_if $B99
                                (i32.eqz
                                  (local.get $l16)))
                              (local.set $l17
                                (i32.const 0))
                              (loop $L100
                                (br_if $B99
                                  (i32.eqz
                                    (local.tee $l18
                                      (i32.load
                                        (local.get $l21)))))
                                (br_if $B99
                                  (i32.gt_u
                                    (local.tee $l17
                                      (i32.add
                                        (local.tee $l18
                                          (call $wctomb
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 4))
                                            (local.get $l18)))
                                        (local.get $l17)))
                                    (local.get $l16)))
                                (block $B101
                                  (br_if $B101
                                    (i32.and
                                      (i32.load8_u
                                        (local.get $p0))
                                      (i32.const 32)))
                                  (drop
                                    (call $__fwritex
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 4))
                                      (local.get $l18)
                                      (local.get $p0))))
                                (local.set $l21
                                  (i32.add
                                    (local.get $l21)
                                    (i32.const 4)))
                                (br_if $L100
                                  (i32.lt_u
                                    (local.get $l17)
                                    (local.get $l16)))))
                            (block $B102
                              (br_if $B102
                                (i32.ne
                                  (local.get $l22)
                                  (i32.const 8192)))
                              (br_if $B102
                                (i32.le_s
                                  (local.get $l23)
                                  (local.get $l16)))
                              (drop
                                (call $memset
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 112))
                                  (i32.const 32)
                                  (select
                                    (local.tee $l17
                                      (i32.sub
                                        (local.get $l23)
                                        (local.get $l16)))
                                    (i32.const 256)
                                    (local.tee $l18
                                      (i32.lt_u
                                        (local.get $l17)
                                        (i32.const 256))))))
                              (block $B103
                                (br_if $B103
                                  (local.get $l18))
                                (loop $L104
                                  (block $B105
                                    (br_if $B105
                                      (i32.and
                                        (i32.load8_u
                                          (local.get $p0))
                                        (i32.const 32)))
                                    (drop
                                      (call $__fwritex
                                        (i32.add
                                          (local.get $l5)
                                          (i32.const 112))
                                        (i32.const 256)
                                        (local.get $p0))))
                                  (br_if $L104
                                    (i32.gt_u
                                      (local.tee $l17
                                        (i32.add
                                          (local.get $l17)
                                          (i32.const -256)))
                                      (i32.const 255)))))
                              (br_if $B102
                                (i32.and
                                  (i32.load8_u
                                    (local.get $p0))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 112))
                                  (local.get $l17)
                                  (local.get $p0))))
                            (local.set $l16
                              (select
                                (local.get $l23)
                                (local.get $l16)
                                (i32.gt_s
                                  (local.get $l23)
                                  (local.get $l16))))
                            (br $L3))
                          (block $B106
                            (br_if $B106
                              (i32.eqz
                                (local.get $l24)))
                            (br_if $B2
                              (i32.lt_s
                                (local.get $l20)
                                (i32.const 0))))
                          (local.set $l31
                            (f64.load offset=56
                              (local.get $l5)))
                          (i32.store offset=108
                            (local.get $l5)
                            (i32.const 0))
                          (block $B107
                            (block $B108
                              (br_if $B108
                                (i64.gt_s
                                  (i64.reinterpret_f64
                                    (local.get $l31))
                                  (i64.const -1)))
                              (local.set $l31
                                (f64.neg
                                  (local.get $l31)))
                              (local.set $l32
                                (i32.const 1))
                              (local.set $l33
                                (i32.const 0))
                              (local.set $l34
                                (i32.const 1034))
                              (br $B107))
                            (block $B109
                              (br_if $B109
                                (i32.eqz
                                  (i32.and
                                    (local.get $l19)
                                    (i32.const 2048))))
                              (local.set $l32
                                (i32.const 1))
                              (local.set $l33
                                (i32.const 0))
                              (local.set $l34
                                (i32.const 1037))
                              (br $B107))
                            (local.set $l34
                              (select
                                (i32.const 1040)
                                (i32.const 1035)
                                (local.tee $l32
                                  (i32.and
                                    (local.get $l19)
                                    (i32.const 1)))))
                            (local.set $l33
                              (i32.eqz
                                (local.get $l32))))
                          (block $B110
                            (br_if $B110
                              (f64.lt
                                (f64.abs
                                  (local.get $l31))
                                (f64.const inf (;=inf;))))
                            (local.set $l17
                              (i32.add
                                (local.get $l32)
                                (i32.const 3)))
                            (block $B111
                              (br_if $B111
                                (i32.and
                                  (local.get $l19)
                                  (i32.const 8192)))
                              (br_if $B111
                                (i32.le_s
                                  (local.get $l23)
                                  (local.get $l17)))
                              (drop
                                (call $memset
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 624))
                                  (i32.const 32)
                                  (select
                                    (local.tee $l16
                                      (i32.sub
                                        (local.get $l23)
                                        (local.get $l17)))
                                    (i32.const 256)
                                    (local.tee $l18
                                      (i32.lt_u
                                        (local.get $l16)
                                        (i32.const 256))))))
                              (block $B112
                                (br_if $B112
                                  (local.get $l18))
                                (loop $L113
                                  (block $B114
                                    (br_if $B114
                                      (i32.and
                                        (i32.load8_u
                                          (local.get $p0))
                                        (i32.const 32)))
                                    (drop
                                      (call $__fwritex
                                        (i32.add
                                          (local.get $l5)
                                          (i32.const 624))
                                        (i32.const 256)
                                        (local.get $p0))))
                                  (br_if $L113
                                    (i32.gt_u
                                      (local.tee $l16
                                        (i32.add
                                          (local.get $l16)
                                          (i32.const -256)))
                                      (i32.const 255)))))
                              (br_if $B111
                                (i32.and
                                  (i32.load8_u
                                    (local.get $p0))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 624))
                                  (local.get $l16)
                                  (local.get $p0))))
                            (block $B115
                              (br_if $B115
                                (i32.and
                                  (local.tee $l16
                                    (i32.load
                                      (local.get $p0)))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (local.get $l34)
                                  (local.get $l32)
                                  (local.get $p0)))
                              (local.set $l16
                                (i32.load
                                  (local.get $p0))))
                            (block $B116
                              (br_if $B116
                                (i32.and
                                  (local.get $l16)
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (select
                                    (select
                                      (i32.const 1053)
                                      (i32.const 1061)
                                      (local.tee $l16
                                        (i32.and
                                          (local.get $l26)
                                          (i32.const 32))))
                                    (select
                                      (i32.const 1057)
                                      (i32.const 1065)
                                      (local.get $l16))
                                    (f64.ne
                                      (local.get $l31)
                                      (local.get $l31)))
                                  (i32.const 3)
                                  (local.get $p0))))
                            (block $B117
                              (br_if $B117
                                (i32.ne
                                  (i32.and
                                    (local.get $l19)
                                    (i32.const 73728))
                                  (i32.const 8192)))
                              (br_if $B117
                                (i32.le_s
                                  (local.get $l23)
                                  (local.get $l17)))
                              (drop
                                (call $memset
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 624))
                                  (i32.const 32)
                                  (select
                                    (local.tee $l16
                                      (i32.sub
                                        (local.get $l23)
                                        (local.get $l17)))
                                    (i32.const 256)
                                    (local.tee $l18
                                      (i32.lt_u
                                        (local.get $l16)
                                        (i32.const 256))))))
                              (block $B118
                                (br_if $B118
                                  (local.get $l18))
                                (loop $L119
                                  (block $B120
                                    (br_if $B120
                                      (i32.and
                                        (i32.load8_u
                                          (local.get $p0))
                                        (i32.const 32)))
                                    (drop
                                      (call $__fwritex
                                        (i32.add
                                          (local.get $l5)
                                          (i32.const 624))
                                        (i32.const 256)
                                        (local.get $p0))))
                                  (br_if $L119
                                    (i32.gt_u
                                      (local.tee $l16
                                        (i32.add
                                          (local.get $l16)
                                          (i32.const -256)))
                                      (i32.const 255)))))
                              (br_if $B117
                                (i32.and
                                  (i32.load8_u
                                    (local.get $p0))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 624))
                                  (local.get $l16)
                                  (local.get $p0))))
                            (local.set $l16
                              (select
                                (local.get $l23)
                                (local.get $l17)
                                (i32.gt_s
                                  (local.get $l23)
                                  (local.get $l17))))
                            (br $B4))
                          (block $B121
                            (block $B122
                              (block $B123
                                (br_if $B123
                                  (f64.eq
                                    (local.tee $l31
                                      (f64.add
                                        (local.tee $l31
                                          (call $frexp
                                            (local.get $l31)
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 108))))
                                        (local.get $l31)))
                                    (f64.const 0x0p+0 (;=0;))))
                                (i32.store offset=108
                                  (local.get $l5)
                                  (i32.add
                                    (local.tee $l16
                                      (i32.load offset=108
                                        (local.get $l5)))
                                    (i32.const -1)))
                                (br_if $B122
                                  (i32.ne
                                    (local.tee $l35
                                      (i32.or
                                        (local.get $l26)
                                        (i32.const 32)))
                                    (i32.const 97)))
                                (br $B5))
                              (br_if $B5
                                (i32.eq
                                  (local.tee $l35
                                    (i32.or
                                      (local.get $l26)
                                      (i32.const 32)))
                                  (i32.const 97)))
                              (local.set $l36
                                (select
                                  (i32.const 6)
                                  (local.get $l20)
                                  (i32.lt_s
                                    (local.get $l20)
                                    (i32.const 0))))
                              (local.set $l21
                                (i32.load offset=108
                                  (local.get $l5)))
                              (br $B121))
                            (i32.store offset=108
                              (local.get $l5)
                              (local.tee $l21
                                (i32.add
                                  (local.get $l16)
                                  (i32.const -29))))
                            (local.set $l36
                              (select
                                (i32.const 6)
                                (local.get $l20)
                                (i32.lt_s
                                  (local.get $l20)
                                  (i32.const 0))))
                            (local.set $l31
                              (f64.mul
                                (local.get $l31)
                                (f64.const 0x1p+28 (;=2.68435e+08;)))))
                          (local.set $l17
                            (local.tee $l28
                              (select
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 112))
                                (local.get $l12)
                                (i32.lt_s
                                  (local.get $l21)
                                  (i32.const 0)))))
                          (loop $L124
                            (block $B125
                              (block $B126
                                (br_if $B126
                                  (i32.eqz
                                    (i32.and
                                      (f64.lt
                                        (local.get $l31)
                                        (f64.const 0x1p+32 (;=4.29497e+09;)))
                                      (f64.ge
                                        (local.get $l31)
                                        (f64.const 0x0p+0 (;=0;))))))
                                (local.set $l16
                                  (i32.trunc_f64_u
                                    (local.get $l31)))
                                (br $B125))
                              (local.set $l16
                                (i32.const 0)))
                            (i32.store
                              (local.get $l17)
                              (local.get $l16))
                            (local.set $l17
                              (i32.add
                                (local.get $l17)
                                (i32.const 4)))
                            (br_if $L124
                              (f64.ne
                                (local.tee $l31
                                  (f64.mul
                                    (f64.sub
                                      (local.get $l31)
                                      (f64.convert_i32_u
                                        (local.get $l16)))
                                    (f64.const 0x1.dcd65p+29 (;=1e+09;))))
                                (f64.const 0x0p+0 (;=0;)))))
                          (block $B127
                            (block $B128
                              (br_if $B128
                                (i32.ge_s
                                  (local.get $l21)
                                  (i32.const 1)))
                              (local.set $l16
                                (local.get $l17))
                              (local.set $l18
                                (local.get $l28))
                              (br $B127))
                            (local.set $l18
                              (local.get $l28))
                            (loop $L129
                              (local.set $l21
                                (select
                                  (local.get $l21)
                                  (i32.const 29)
                                  (i32.lt_s
                                    (local.get $l21)
                                    (i32.const 29))))
                              (block $B130
                                (br_if $B130
                                  (i32.lt_u
                                    (local.tee $l16
                                      (i32.add
                                        (local.get $l17)
                                        (i32.const -4)))
                                    (local.get $l18)))
                                (local.set $l30
                                  (i64.extend_i32_u
                                    (local.get $l21)))
                                (local.set $l29
                                  (i64.const 0))
                                (loop $L131
                                  (i64.store32
                                    (local.get $l16)
                                    (i64.sub
                                      (local.tee $l29
                                        (i64.add
                                          (i64.shl
                                            (i64.load32_u
                                              (local.get $l16))
                                            (local.get $l30))
                                          (i64.and
                                            (local.get $l29)
                                            (i64.const 4294967295))))
                                      (i64.mul
                                        (local.tee $l29
                                          (i64.div_u
                                            (local.get $l29)
                                            (i64.const 1000000000)))
                                        (i64.const 1000000000))))
                                  (br_if $L131
                                    (i32.ge_u
                                      (local.tee $l16
                                        (i32.add
                                          (local.get $l16)
                                          (i32.const -4)))
                                      (local.get $l18))))
                                (br_if $B130
                                  (i32.eqz
                                    (local.tee $l16
                                      (i32.wrap_i64
                                        (local.get $l29)))))
                                (i32.store
                                  (local.tee $l18
                                    (i32.add
                                      (local.get $l18)
                                      (i32.const -4)))
                                  (local.get $l16)))
                              (block $B132
                                (loop $L133
                                  (br_if $B132
                                    (i32.le_u
                                      (local.tee $l16
                                        (local.get $l17))
                                      (local.get $l18)))
                                  (br_if $L133
                                    (i32.eqz
                                      (i32.load
                                        (local.tee $l17
                                          (i32.add
                                            (local.get $l16)
                                            (i32.const -4))))))))
                              (i32.store offset=108
                                (local.get $l5)
                                (local.tee $l21
                                  (i32.sub
                                    (i32.load offset=108
                                      (local.get $l5))
                                    (local.get $l21))))
                              (local.set $l17
                                (local.get $l16))
                              (br_if $L129
                                (i32.gt_s
                                  (local.get $l21)
                                  (i32.const 0)))))
                          (local.set $l17
                            (i32.div_u
                              (i32.add
                                (local.get $l36)
                                (i32.const 25))
                              (i32.const 9)))
                          (block $B134
                            (br_if $B134
                              (i32.gt_s
                                (local.get $l21)
                                (i32.const -1)))
                            (local.set $l27
                              (i32.add
                                (local.get $l17)
                                (i32.const 1)))
                            (loop $L135
                              (local.set $l20
                                (select
                                  (i32.const 9)
                                  (i32.sub
                                    (i32.const 0)
                                    (local.get $l21))
                                  (i32.lt_s
                                    (local.get $l21)
                                    (i32.const -9))))
                              (block $B136
                                (block $B137
                                  (br_if $B137
                                    (i32.ge_u
                                      (local.get $l18)
                                      (local.get $l16)))
                                  (local.set $l25
                                    (i32.shr_u
                                      (i32.const 1000000000)
                                      (local.get $l20)))
                                  (local.set $l24
                                    (i32.xor
                                      (i32.shl
                                        (i32.const -1)
                                        (local.get $l20))
                                      (i32.const -1)))
                                  (local.set $l21
                                    (i32.const 0))
                                  (local.set $l17
                                    (local.get $l18))
                                  (loop $L138
                                    (i32.store
                                      (local.get $l17)
                                      (i32.add
                                        (i32.shr_u
                                          (local.tee $l22
                                            (i32.load
                                              (local.get $l17)))
                                          (local.get $l20))
                                        (local.get $l21)))
                                    (local.set $l21
                                      (i32.mul
                                        (i32.and
                                          (local.get $l22)
                                          (local.get $l24))
                                        (local.get $l25)))
                                    (br_if $L138
                                      (i32.lt_u
                                        (local.tee $l17
                                          (i32.add
                                            (local.get $l17)
                                            (i32.const 4)))
                                        (local.get $l16))))
                                  (local.set $l17
                                    (i32.load
                                      (local.get $l18)))
                                  (br_if $B136
                                    (i32.eqz
                                      (local.get $l21)))
                                  (i32.store
                                    (local.get $l16)
                                    (local.get $l21))
                                  (local.set $l16
                                    (i32.add
                                      (local.get $l16)
                                      (i32.const 4)))
                                  (br $B136))
                                (local.set $l17
                                  (i32.load
                                    (local.get $l18))))
                              (i32.store offset=108
                                (local.get $l5)
                                (local.tee $l21
                                  (i32.add
                                    (i32.load offset=108
                                      (local.get $l5))
                                    (local.get $l20))))
                              (local.set $l16
                                (select
                                  (i32.add
                                    (local.tee $l17
                                      (select
                                        (local.get $l28)
                                        (local.tee $l18
                                          (i32.add
                                            (local.get $l18)
                                            (i32.shl
                                              (i32.eqz
                                                (local.get $l17))
                                              (i32.const 2))))
                                        (i32.eq
                                          (local.get $l35)
                                          (i32.const 102))))
                                    (i32.shl
                                      (local.get $l27)
                                      (i32.const 2)))
                                  (local.get $l16)
                                  (i32.gt_s
                                    (i32.shr_s
                                      (i32.sub
                                        (local.get $l16)
                                        (local.get $l17))
                                      (i32.const 2))
                                    (local.get $l27))))
                              (br_if $L135
                                (i32.lt_s
                                  (local.get $l21)
                                  (i32.const 0)))))
                          (local.set $l20
                            (i32.const 0))
                          (block $B139
                            (br_if $B139
                              (i32.ge_u
                                (local.get $l18)
                                (local.get $l16)))
                            (local.set $l20
                              (i32.mul
                                (i32.shr_s
                                  (i32.sub
                                    (local.get $l28)
                                    (local.get $l18))
                                  (i32.const 2))
                                (i32.const 9)))
                            (br_if $B139
                              (i32.lt_u
                                (local.tee $l21
                                  (i32.load
                                    (local.get $l18)))
                                (i32.const 10)))
                            (local.set $l17
                              (i32.const 10))
                            (loop $L140
                              (local.set $l20
                                (i32.add
                                  (local.get $l20)
                                  (i32.const 1)))
                              (br_if $L140
                                (i32.ge_u
                                  (local.get $l21)
                                  (local.tee $l17
                                    (i32.mul
                                      (local.get $l17)
                                      (i32.const 10)))))))
                          (block $B141
                            (br_if $B141
                              (i32.ge_s
                                (local.tee $l17
                                  (i32.sub
                                    (i32.sub
                                      (local.get $l36)
                                      (select
                                        (i32.const 0)
                                        (local.get $l20)
                                        (i32.eq
                                          (local.get $l35)
                                          (i32.const 102))))
                                    (i32.and
                                      (local.tee $l24
                                        (i32.eq
                                          (local.get $l35)
                                          (i32.const 103)))
                                      (i32.ne
                                        (local.get $l36)
                                        (i32.const 0)))))
                                (i32.add
                                  (i32.mul
                                    (i32.shr_s
                                      (i32.sub
                                        (local.get $l16)
                                        (local.get $l28))
                                      (i32.const 2))
                                    (i32.const 9))
                                  (i32.const -9))))
                            (local.set $l25
                              (i32.add
                                (local.tee $l37
                                  (i32.add
                                    (i32.shl
                                      (local.tee $l21
                                        (i32.div_s
                                          (local.tee $l22
                                            (i32.add
                                              (local.get $l17)
                                              (i32.const 9216)))
                                          (i32.const 9)))
                                      (i32.const 2))
                                    (local.get $l28)))
                                (i32.const -4092)))
                            (local.set $l17
                              (i32.const 10))
                            (block $B142
                              (br_if $B142
                                (i32.gt_s
                                  (local.tee $l27
                                    (i32.sub
                                      (local.get $l22)
                                      (local.tee $l35
                                        (i32.mul
                                          (local.get $l21)
                                          (i32.const 9)))))
                                  (i32.const 7)))
                              (local.set $l21
                                (i32.and
                                  (i32.sub
                                    (i32.const 8)
                                    (local.get $l27))
                                  (i32.const 7)))
                              (local.set $l17
                                (i32.const 10))
                              (block $B143
                                (br_if $B143
                                  (i32.lt_u
                                    (i32.sub
                                      (i32.const 7)
                                      (local.get $l27))
                                    (i32.const 7)))
                                (local.set $l22
                                  (i32.sub
                                    (i32.const 0)
                                    (i32.and
                                      (i32.add
                                        (i32.sub
                                          (local.get $l35)
                                          (local.get $l22))
                                        (i32.const 8))
                                      (i32.const -8))))
                                (local.set $l17
                                  (i32.const 10))
                                (loop $L144
                                  (local.set $l17
                                    (i32.mul
                                      (local.get $l17)
                                      (i32.const 100000000)))
                                  (br_if $L144
                                    (local.tee $l22
                                      (i32.add
                                        (local.get $l22)
                                        (i32.const 8))))))
                              (br_if $B142
                                (i32.eqz
                                  (local.get $l21)))
                              (loop $L145
                                (local.set $l17
                                  (i32.mul
                                    (local.get $l17)
                                    (i32.const 10)))
                                (br_if $L145
                                  (local.tee $l21
                                    (i32.add
                                      (local.get $l21)
                                      (i32.const -1))))))
                            (local.set $l27
                              (i32.add
                                (local.get $l25)
                                (i32.const 4)))
                            (block $B146
                              (block $B147
                                (br_if $B147
                                  (local.tee $l21
                                    (i32.sub
                                      (local.tee $l22
                                        (i32.load
                                          (local.get $l25)))
                                      (i32.mul
                                        (local.tee $l35
                                          (i32.div_u
                                            (local.get $l22)
                                            (local.get $l17)))
                                        (local.get $l17)))))
                                (br_if $B146
                                  (i32.eq
                                    (local.get $l27)
                                    (local.get $l16))))
                              (block $B148
                                (block $B149
                                  (br_if $B149
                                    (i32.and
                                      (local.get $l35)
                                      (i32.const 1)))
                                  (local.set $l31
                                    (f64.const 0x1p+53 (;=9.0072e+15;)))
                                  (br_if $B148
                                    (i32.ne
                                      (local.get $l17)
                                      (i32.const 1000000000)))
                                  (br_if $B148
                                    (i32.le_u
                                      (local.get $l25)
                                      (local.get $l18)))
                                  (br_if $B148
                                    (i32.eqz
                                      (i32.and
                                        (i32.load8_u
                                          (i32.add
                                            (local.get $l25)
                                            (i32.const -4)))
                                        (i32.const 1)))))
                                (local.set $l31
                                  (f64.const 0x1.0000000000001p+53 (;=9.0072e+15;))))
                              (local.set $l38
                                (select
                                  (f64.const 0x1p-1 (;=0.5;))
                                  (select
                                    (select
                                      (f64.const 0x1p+0 (;=1;))
                                      (f64.const 0x1.8p+0 (;=1.5;))
                                      (i32.eq
                                        (local.get $l27)
                                        (local.get $l16)))
                                    (f64.const 0x1.8p+0 (;=1.5;))
                                    (i32.eq
                                      (local.get $l21)
                                      (local.tee $l27
                                        (i32.shr_u
                                          (local.get $l17)
                                          (i32.const 1)))))
                                  (i32.lt_u
                                    (local.get $l21)
                                    (local.get $l27))))
                              (block $B150
                                (br_if $B150
                                  (local.get $l33))
                                (br_if $B150
                                  (i32.ne
                                    (i32.load8_u
                                      (local.get $l34))
                                    (i32.const 45)))
                                (local.set $l38
                                  (f64.neg
                                    (local.get $l38)))
                                (local.set $l31
                                  (f64.neg
                                    (local.get $l31))))
                              (i32.store
                                (local.get $l25)
                                (local.tee $l21
                                  (i32.sub
                                    (local.get $l22)
                                    (local.get $l21))))
                              (br_if $B146
                                (f64.eq
                                  (f64.add
                                    (local.get $l31)
                                    (local.get $l38))
                                  (local.get $l31)))
                              (i32.store
                                (local.get $l25)
                                (local.tee $l17
                                  (i32.add
                                    (local.get $l21)
                                    (local.get $l17))))
                              (block $B151
                                (br_if $B151
                                  (i32.lt_u
                                    (local.get $l17)
                                    (i32.const 1000000000)))
                                (local.set $l17
                                  (i32.add
                                    (local.get $l37)
                                    (i32.const -4096)))
                                (loop $L152
                                  (i32.store
                                    (i32.add
                                      (local.get $l17)
                                      (i32.const 4))
                                    (i32.const 0))
                                  (block $B153
                                    (br_if $B153
                                      (i32.ge_u
                                        (local.get $l17)
                                        (local.get $l18)))
                                    (i32.store
                                      (local.tee $l18
                                        (i32.add
                                          (local.get $l18)
                                          (i32.const -4)))
                                      (i32.const 0)))
                                  (i32.store
                                    (local.get $l17)
                                    (local.tee $l21
                                      (i32.add
                                        (i32.load
                                          (local.get $l17))
                                        (i32.const 1))))
                                  (local.set $l17
                                    (i32.add
                                      (local.get $l17)
                                      (i32.const -4)))
                                  (br_if $L152
                                    (i32.gt_u
                                      (local.get $l21)
                                      (i32.const 999999999))))
                                (local.set $l25
                                  (i32.add
                                    (local.get $l17)
                                    (i32.const 4))))
                              (local.set $l20
                                (i32.mul
                                  (i32.shr_s
                                    (i32.sub
                                      (local.get $l28)
                                      (local.get $l18))
                                    (i32.const 2))
                                  (i32.const 9)))
                              (br_if $B146
                                (i32.lt_u
                                  (local.tee $l21
                                    (i32.load
                                      (local.get $l18)))
                                  (i32.const 10)))
                              (local.set $l17
                                (i32.const 10))
                              (loop $L154
                                (local.set $l20
                                  (i32.add
                                    (local.get $l20)
                                    (i32.const 1)))
                                (br_if $L154
                                  (i32.ge_u
                                    (local.get $l21)
                                    (local.tee $l17
                                      (i32.mul
                                        (local.get $l17)
                                        (i32.const 10)))))))
                            (local.set $l16
                              (select
                                (local.tee $l17
                                  (i32.add
                                    (local.get $l25)
                                    (i32.const 4)))
                                (local.get $l16)
                                (i32.gt_u
                                  (local.get $l16)
                                  (local.get $l17)))))
                          (local.set $l17
                            (i32.sub
                              (local.get $l16)
                              (local.get $l28)))
                          (block $B155
                            (loop $L156
                              (local.set $l21
                                (local.get $l17))
                              (br_if $B155
                                (local.tee $l25
                                  (i32.le_u
                                    (local.tee $l22
                                      (local.get $l16))
                                    (local.get $l18))))
                              (local.set $l17
                                (i32.add
                                  (local.get $l21)
                                  (i32.const -4)))
                              (br_if $L156
                                (i32.eqz
                                  (i32.load
                                    (local.tee $l16
                                      (i32.add
                                        (local.get $l22)
                                        (i32.const -4))))))))
                          (block $B157
                            (block $B158
                              (br_if $B158
                                (local.get $l24))
                              (local.set $l27
                                (i32.and
                                  (local.get $l19)
                                  (i32.const 8)))
                              (br $B157))
                            (local.set $l36
                              (i32.add
                                (select
                                  (i32.xor
                                    (local.get $l20)
                                    (i32.const -1))
                                  (i32.const -1)
                                  (local.tee $l17
                                    (i32.and
                                      (i32.gt_s
                                        (local.tee $l16
                                          (select
                                            (local.get $l36)
                                            (i32.const 1)
                                            (local.get $l36)))
                                        (local.get $l20))
                                      (i32.gt_s
                                        (local.get $l20)
                                        (i32.const -5)))))
                                (local.get $l16)))
                            (local.set $l26
                              (i32.add
                                (select
                                  (i32.const -1)
                                  (i32.const -2)
                                  (local.get $l17))
                                (local.get $l26)))
                            (br_if $B157
                              (local.tee $l27
                                (i32.and
                                  (local.get $l19)
                                  (i32.const 8))))
                            (local.set $l16
                              (i32.const -9))
                            (block $B159
                              (br_if $B159
                                (local.get $l25))
                              (br_if $B159
                                (i32.eqz
                                  (local.tee $l25
                                    (i32.load
                                      (i32.add
                                        (local.get $l22)
                                        (i32.const -4))))))
                              (local.set $l16
                                (i32.const 0))
                              (br_if $B159
                                (i32.rem_u
                                  (local.get $l25)
                                  (i32.const 10)))
                              (local.set $l17
                                (i32.const 10))
                              (local.set $l16
                                (i32.const 0))
                              (loop $L160
                                (local.set $l16
                                  (i32.add
                                    (local.get $l16)
                                    (i32.const -1)))
                                (br_if $L160
                                  (i32.eqz
                                    (i32.rem_u
                                      (local.get $l25)
                                      (local.tee $l17
                                        (i32.mul
                                          (local.get $l17)
                                          (i32.const 10))))))))
                            (local.set $l17
                              (i32.add
                                (i32.mul
                                  (i32.shr_s
                                    (local.get $l21)
                                    (i32.const 2))
                                  (i32.const 9))
                                (i32.const -9)))
                            (block $B161
                              (br_if $B161
                                (i32.ne
                                  (i32.and
                                    (local.get $l26)
                                    (i32.const -33))
                                  (i32.const 70)))
                              (local.set $l27
                                (i32.const 0))
                              (local.set $l36
                                (select
                                  (local.get $l36)
                                  (local.tee $l16
                                    (select
                                      (local.tee $l16
                                        (i32.add
                                          (local.get $l17)
                                          (local.get $l16)))
                                      (i32.const 0)
                                      (i32.gt_s
                                        (local.get $l16)
                                        (i32.const 0))))
                                  (i32.lt_s
                                    (local.get $l36)
                                    (local.get $l16))))
                              (br $B157))
                            (local.set $l27
                              (i32.const 0))
                            (local.set $l36
                              (select
                                (local.get $l36)
                                (local.tee $l16
                                  (select
                                    (local.tee $l16
                                      (i32.add
                                        (i32.add
                                          (local.get $l17)
                                          (local.get $l20))
                                        (local.get $l16)))
                                    (i32.const 0)
                                    (i32.gt_s
                                      (local.get $l16)
                                      (i32.const 0))))
                                (i32.lt_s
                                  (local.get $l36)
                                  (local.get $l16)))))
                          (local.set $l16
                            (i32.const -1))
                          (br_if $B4
                            (i32.gt_s
                              (local.get $l36)
                              (select
                                (i32.const 2147483645)
                                (i32.const 2147483646)
                                (local.tee $l17
                                  (i32.or
                                    (local.get $l36)
                                    (local.get $l27))))))
                          (local.set $l35
                            (i32.add
                              (i32.add
                                (local.get $l36)
                                (local.tee $l39
                                  (i32.ne
                                    (local.get $l17)
                                    (i32.const 0))))
                              (i32.const 1)))
                          (block $B162
                            (block $B163
                              (br_if $B163
                                (local.tee $l37
                                  (i32.ne
                                    (i32.and
                                      (local.get $l26)
                                      (i32.const -33))
                                    (i32.const 70))))
                              (br_if $B4
                                (i32.gt_s
                                  (local.get $l20)
                                  (i32.sub
                                    (i32.const 2147483647)
                                    (local.get $l35))))
                              (local.set $l17
                                (select
                                  (local.get $l20)
                                  (i32.const 0)
                                  (i32.gt_s
                                    (local.get $l20)
                                    (i32.const 0))))
                              (br $B162))
                            (local.set $l21
                              (local.get $l6))
                            (local.set $l17
                              (local.get $l6))
                            (block $B164
                              (br_if $B164
                                (i32.eqz
                                  (local.tee $l16
                                    (i32.xor
                                      (i32.add
                                        (local.get $l20)
                                        (local.tee $l16
                                          (i32.shr_s
                                            (local.get $l20)
                                            (i32.const 31))))
                                      (local.get $l16)))))
                              (loop $L165
                                (i32.store8
                                  (local.tee $l17
                                    (i32.add
                                      (local.get $l17)
                                      (i32.const -1)))
                                  (i32.or
                                    (i32.sub
                                      (local.get $l16)
                                      (i32.mul
                                        (local.tee $l25
                                          (i32.div_u
                                            (local.get $l16)
                                            (i32.const 10)))
                                        (i32.const 10)))
                                    (i32.const 48)))
                                (local.set $l21
                                  (i32.add
                                    (local.get $l21)
                                    (i32.const -1)))
                                (local.set $l24
                                  (i32.gt_u
                                    (local.get $l16)
                                    (i32.const 9)))
                                (local.set $l16
                                  (local.get $l25))
                                (br_if $L165
                                  (local.get $l24))))
                            (block $B166
                              (br_if $B166
                                (i32.gt_s
                                  (i32.sub
                                    (local.get $l6)
                                    (local.get $l21))
                                  (i32.const 1)))
                              (drop
                                (call $memset
                                  (local.tee $l17
                                    (i32.add
                                      (local.get $l17)
                                      (i32.sub
                                        (local.get $l11)
                                        (local.get $l21))))
                                  (i32.const 48)
                                  (i32.add
                                    (local.get $l10)
                                    (local.get $l21)))))
                            (i32.store8
                              (local.tee $l33
                                (i32.add
                                  (local.get $l17)
                                  (i32.const -2)))
                              (local.get $l26))
                            (local.set $l16
                              (i32.const -1))
                            (i32.store8
                              (i32.add
                                (local.get $l17)
                                (i32.const -1))
                              (select
                                (i32.const 45)
                                (i32.const 43)
                                (i32.lt_s
                                  (local.get $l20)
                                  (i32.const 0))))
                            (br_if $B4
                              (i32.gt_s
                                (local.tee $l17
                                  (i32.sub
                                    (local.get $l6)
                                    (local.get $l33)))
                                (i32.sub
                                  (i32.const 2147483647)
                                  (local.get $l35)))))
                          (local.set $l16
                            (i32.const -1))
                          (br_if $B4
                            (i32.gt_s
                              (local.tee $l17
                                (i32.add
                                  (local.get $l17)
                                  (local.get $l35)))
                              (i32.xor
                                (local.get $l32)
                                (i32.const 2147483647))))
                          (local.set $l24
                            (i32.add
                              (local.get $l17)
                              (local.get $l32)))
                          (block $B167
                            (br_if $B167
                              (local.tee $l19
                                (i32.and
                                  (local.get $l19)
                                  (i32.const 73728))))
                            (br_if $B167
                              (i32.le_s
                                (local.get $l23)
                                (local.get $l24)))
                            (drop
                              (call $memset
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 624))
                                (i32.const 32)
                                (select
                                  (local.tee $l16
                                    (i32.sub
                                      (local.get $l23)
                                      (local.get $l24)))
                                  (i32.const 256)
                                  (local.tee $l17
                                    (i32.lt_u
                                      (local.get $l16)
                                      (i32.const 256))))))
                            (block $B168
                              (br_if $B168
                                (local.get $l17))
                              (loop $L169
                                (block $B170
                                  (br_if $B170
                                    (i32.and
                                      (i32.load8_u
                                        (local.get $p0))
                                      (i32.const 32)))
                                  (drop
                                    (call $__fwritex
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 624))
                                      (i32.const 256)
                                      (local.get $p0))))
                                (br_if $L169
                                  (i32.gt_u
                                    (local.tee $l16
                                      (i32.add
                                        (local.get $l16)
                                        (i32.const -256)))
                                    (i32.const 255)))))
                            (br_if $B167
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 624))
                                (local.get $l16)
                                (local.get $p0))))
                          (block $B171
                            (br_if $B171
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (local.get $l34)
                                (local.get $l32)
                                (local.get $p0))))
                          (block $B172
                            (br_if $B172
                              (i32.ne
                                (local.get $l19)
                                (i32.const 65536)))
                            (br_if $B172
                              (i32.le_s
                                (local.get $l23)
                                (local.get $l24)))
                            (drop
                              (call $memset
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 624))
                                (i32.const 48)
                                (select
                                  (local.tee $l16
                                    (i32.sub
                                      (local.get $l23)
                                      (local.get $l24)))
                                  (i32.const 256)
                                  (local.tee $l17
                                    (i32.lt_u
                                      (local.get $l16)
                                      (i32.const 256))))))
                            (block $B173
                              (br_if $B173
                                (local.get $l17))
                              (loop $L174
                                (block $B175
                                  (br_if $B175
                                    (i32.and
                                      (i32.load8_u
                                        (local.get $p0))
                                      (i32.const 32)))
                                  (drop
                                    (call $__fwritex
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 624))
                                      (i32.const 256)
                                      (local.get $p0))))
                                (br_if $L174
                                  (i32.gt_u
                                    (local.tee $l16
                                      (i32.add
                                        (local.get $l16)
                                        (i32.const -256)))
                                    (i32.const 255)))))
                            (br_if $B172
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 624))
                                (local.get $l16)
                                (local.get $p0))))
                          (br_if $B7
                            (local.get $l37))
                          (local.set $l25
                            (local.tee $l20
                              (select
                                (local.get $l28)
                                (local.get $l18)
                                (i32.gt_u
                                  (local.get $l18)
                                  (local.get $l28)))))
                          (loop $L176
                            (block $B177
                              (block $B178
                                (block $B179
                                  (block $B180
                                    (br_if $B180
                                      (i32.eqz
                                        (local.tee $l16
                                          (i32.load
                                            (local.get $l25)))))
                                    (local.set $l17
                                      (i32.const 0))
                                    (loop $L181
                                      (i32.store8
                                        (i32.add
                                          (i32.add
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 80))
                                            (local.get $l17))
                                          (i32.const 8))
                                        (i32.or
                                          (i32.sub
                                            (local.get $l16)
                                            (i32.mul
                                              (local.tee $l18
                                                (i32.div_u
                                                  (local.get $l16)
                                                  (i32.const 10)))
                                              (i32.const 10)))
                                          (i32.const 48)))
                                      (local.set $l17
                                        (i32.add
                                          (local.get $l17)
                                          (i32.const -1)))
                                      (local.set $l21
                                        (i32.gt_u
                                          (local.get $l16)
                                          (i32.const 9)))
                                      (local.set $l16
                                        (local.get $l18))
                                      (br_if $L181
                                        (local.get $l21)))
                                    (local.set $l16
                                      (i32.add
                                        (i32.add
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 80))
                                          (local.get $l17))
                                        (i32.const 9)))
                                    (block $B182
                                      (br_if $B182
                                        (i32.eq
                                          (local.get $l25)
                                          (local.get $l20)))
                                      (br_if $B177
                                        (i32.le_u
                                          (local.get $l16)
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 80))))
                                      (br $B178))
                                    (br_if $B177
                                      (local.get $l17))
                                    (br $B179))
                                  (local.set $l17
                                    (i32.const 0))
                                  (local.set $l16
                                    (local.get $l9))
                                  (br_if $B178
                                    (i32.ne
                                      (local.get $l25)
                                      (local.get $l20))))
                                (i32.store8
                                  (local.tee $l16
                                    (i32.add
                                      (local.get $l16)
                                      (i32.const -1)))
                                  (i32.const 48))
                                (br $B177))
                              (drop
                                (call $memset
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 80))
                                  (i32.const 48)
                                  (i32.add
                                    (local.get $l17)
                                    (i32.const 9))))
                              (local.set $l16
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 80))))
                            (block $B183
                              (br_if $B183
                                (i32.and
                                  (i32.load8_u
                                    (local.get $p0))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (local.get $l16)
                                  (i32.sub
                                    (local.get $l9)
                                    (local.get $l16))
                                  (local.get $p0))))
                            (br_if $L176
                              (i32.le_u
                                (local.tee $l25
                                  (i32.add
                                    (local.get $l25)
                                    (i32.const 4)))
                                (local.get $l28))))
                          (local.set $l16
                            (i32.const 0))
                          (block $B184
                            (br_if $B184
                              (i32.eqz
                                (local.get $l39)))
                            (block $B185
                              (br_if $B185
                                (i32.and
                                  (i32.load8_u
                                    (local.get $p0))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (i32.const 1069)
                                  (i32.const 1)
                                  (local.get $p0))))
                            (block $B186
                              (br_if $B186
                                (i32.lt_u
                                  (local.get $l25)
                                  (local.get $l22)))
                              (local.set $l16
                                (local.get $l36))
                              (br $B184))
                            (block $B187
                              (br_if $B187
                                (i32.ge_s
                                  (local.get $l36)
                                  (i32.const 1)))
                              (local.set $l16
                                (local.get $l36))
                              (br $B184))
                            (loop $L188
                              (block $B189
                                (block $B190
                                  (block $B191
                                    (br_if $B191
                                      (local.tee $l16
                                        (i32.load
                                          (local.get $l25))))
                                    (local.set $l17
                                      (local.get $l9))
                                    (local.set $l18
                                      (local.get $l9))
                                    (br $B190))
                                  (local.set $l18
                                    (local.get $l9))
                                  (local.set $l17
                                    (local.get $l9))
                                  (loop $L192
                                    (i32.store8
                                      (local.tee $l17
                                        (i32.add
                                          (local.get $l17)
                                          (i32.const -1)))
                                      (i32.or
                                        (i32.sub
                                          (local.get $l16)
                                          (i32.mul
                                            (local.tee $l21
                                              (i32.div_u
                                                (local.get $l16)
                                                (i32.const 10)))
                                            (i32.const 10)))
                                        (i32.const 48)))
                                    (local.set $l18
                                      (i32.add
                                        (local.get $l18)
                                        (i32.const -1)))
                                    (local.set $l20
                                      (i32.gt_u
                                        (local.get $l16)
                                        (i32.const 9)))
                                    (local.set $l16
                                      (local.get $l21))
                                    (br_if $L192
                                      (local.get $l20)))
                                  (br_if $B189
                                    (i32.le_u
                                      (local.get $l17)
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 80)))))
                                (drop
                                  (call $memset
                                    (local.tee $l17
                                      (i32.add
                                        (local.get $l17)
                                        (i32.sub
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 80))
                                          (local.get $l18))))
                                    (i32.const 48)
                                    (i32.sub
                                      (local.get $l18)
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 80))))))
                              (block $B193
                                (br_if $B193
                                  (i32.and
                                    (i32.load8_u
                                      (local.get $p0))
                                    (i32.const 32)))
                                (drop
                                  (call $__fwritex
                                    (local.get $l17)
                                    (select
                                      (local.get $l36)
                                      (i32.const 9)
                                      (i32.lt_s
                                        (local.get $l36)
                                        (i32.const 9)))
                                    (local.get $p0))))
                              (local.set $l16
                                (i32.add
                                  (local.get $l36)
                                  (i32.const -9)))
                              (br_if $B184
                                (i32.ge_u
                                  (local.tee $l25
                                    (i32.add
                                      (local.get $l25)
                                      (i32.const 4)))
                                  (local.get $l22)))
                              (local.set $l17
                                (i32.gt_s
                                  (local.get $l36)
                                  (i32.const 9)))
                              (local.set $l36
                                (local.get $l16))
                              (br_if $L188
                                (local.get $l17))))
                          (call $pad
                            (local.get $p0)
                            (i32.const 48)
                            (i32.add
                              (local.get $l16)
                              (i32.const 9))
                            (i32.const 9)
                            (i32.const 0))
                          (br $B6))
                        (i32.store offset=3664
                          (i32.const 0)
                          (i32.const 28))
                        (br $B1))
                      (local.set $l27
                        (i32.const 0))
                      (local.set $l28
                        (i32.const 1024))
                      (local.set $l16
                        (local.get $l13))
                      (local.set $l25
                        (local.get $l19))
                      (local.set $l22
                        (local.get $l20)))
                    (br_if $B2
                      (i32.gt_s
                        (local.tee $l24
                          (select
                            (local.tee $l20
                              (i32.sub
                                (local.get $l16)
                                (local.get $l17)))
                            (local.get $l22)
                            (i32.lt_s
                              (local.get $l22)
                              (local.get $l20))))
                        (i32.sub
                          (i32.const 2147483647)
                          (local.get $l27))))
                    (br_if $B2
                      (i32.gt_s
                        (local.tee $l16
                          (select
                            (local.tee $l21
                              (i32.add
                                (local.get $l27)
                                (local.get $l24)))
                            (local.get $l23)
                            (i32.lt_s
                              (local.get $l23)
                              (local.get $l21))))
                        (local.get $l18)))
                    (block $B194
                      (br_if $B194
                        (local.tee $l25
                          (i32.and
                            (local.get $l25)
                            (i32.const 73728))))
                      (br_if $B194
                        (i32.ge_s
                          (local.get $l21)
                          (local.get $l23)))
                      (drop
                        (call $memset
                          (i32.add
                            (local.get $l5)
                            (i32.const 112))
                          (i32.const 32)
                          (select
                            (local.tee $l18
                              (i32.sub
                                (local.get $l16)
                                (local.get $l21)))
                            (i32.const 256)
                            (local.tee $l19
                              (i32.lt_u
                                (local.get $l18)
                                (i32.const 256))))))
                      (block $B195
                        (br_if $B195
                          (local.get $l19))
                        (loop $L196
                          (block $B197
                            (br_if $B197
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 112))
                                (i32.const 256)
                                (local.get $p0))))
                          (br_if $L196
                            (i32.gt_u
                              (local.tee $l18
                                (i32.add
                                  (local.get $l18)
                                  (i32.const -256)))
                              (i32.const 255)))))
                      (br_if $B194
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 112))
                          (local.get $l18)
                          (local.get $p0))))
                    (block $B198
                      (br_if $B198
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (local.get $l28)
                          (local.get $l27)
                          (local.get $p0))))
                    (block $B199
                      (br_if $B199
                        (i32.ne
                          (local.get $l25)
                          (i32.const 65536)))
                      (br_if $B199
                        (i32.ge_s
                          (local.get $l21)
                          (local.get $l23)))
                      (drop
                        (call $memset
                          (i32.add
                            (local.get $l5)
                            (i32.const 112))
                          (i32.const 48)
                          (select
                            (local.tee $l18
                              (i32.sub
                                (local.get $l16)
                                (local.get $l21)))
                            (i32.const 256)
                            (local.tee $l19
                              (i32.lt_u
                                (local.get $l18)
                                (i32.const 256))))))
                      (block $B200
                        (br_if $B200
                          (local.get $l19))
                        (loop $L201
                          (block $B202
                            (br_if $B202
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 112))
                                (i32.const 256)
                                (local.get $p0))))
                          (br_if $L201
                            (i32.gt_u
                              (local.tee $l18
                                (i32.add
                                  (local.get $l18)
                                  (i32.const -256)))
                              (i32.const 255)))))
                      (br_if $B199
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 112))
                          (local.get $l18)
                          (local.get $p0))))
                    (block $B203
                      (br_if $B203
                        (i32.ge_s
                          (local.get $l20)
                          (local.get $l22)))
                      (drop
                        (call $memset
                          (i32.add
                            (local.get $l5)
                            (i32.const 112))
                          (i32.const 48)
                          (select
                            (local.tee $l18
                              (i32.sub
                                (local.get $l24)
                                (local.get $l20)))
                            (i32.const 256)
                            (local.tee $l22
                              (i32.lt_u
                                (local.get $l18)
                                (i32.const 256))))))
                      (block $B204
                        (br_if $B204
                          (local.get $l22))
                        (loop $L205
                          (block $B206
                            (br_if $B206
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 112))
                                (i32.const 256)
                                (local.get $p0))))
                          (br_if $L205
                            (i32.gt_u
                              (local.tee $l18
                                (i32.add
                                  (local.get $l18)
                                  (i32.const -256)))
                              (i32.const 255)))))
                      (br_if $B203
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 112))
                          (local.get $l18)
                          (local.get $p0))))
                    (block $B207
                      (br_if $B207
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (local.get $l17)
                          (local.get $l20)
                          (local.get $p0))))
                    (br_if $L3
                      (i32.ne
                        (local.get $l25)
                        (i32.const 8192)))
                    (br_if $L3
                      (i32.ge_s
                        (local.get $l21)
                        (local.get $l23)))
                    (drop
                      (call $memset
                        (i32.add
                          (local.get $l5)
                          (i32.const 112))
                        (i32.const 32)
                        (select
                          (local.tee $l17
                            (i32.sub
                              (local.get $l16)
                              (local.get $l21)))
                          (i32.const 256)
                          (local.tee $l18
                            (i32.lt_u
                              (local.get $l17)
                              (i32.const 256))))))
                    (block $B208
                      (br_if $B208
                        (local.get $l18))
                      (loop $L209
                        (block $B210
                          (br_if $B210
                            (i32.and
                              (i32.load8_u
                                (local.get $p0))
                              (i32.const 32)))
                          (drop
                            (call $__fwritex
                              (i32.add
                                (local.get $l5)
                                (i32.const 112))
                              (i32.const 256)
                              (local.get $p0))))
                        (br_if $L209
                          (i32.gt_u
                            (local.tee $l17
                              (i32.add
                                (local.get $l17)
                                (i32.const -256)))
                            (i32.const 255)))))
                    (br_if $L3
                      (i32.and
                        (i32.load8_u
                          (local.get $p0))
                        (i32.const 32)))
                    (drop
                      (call $__fwritex
                        (i32.add
                          (local.get $l5)
                          (i32.const 112))
                        (local.get $l17)
                        (local.get $p0)))
                    (br $L3))
                  (block $B211
                    (br_if $B211
                      (i32.lt_s
                        (local.get $l36)
                        (i32.const 0)))
                    (local.set $l25
                      (select
                        (local.get $l22)
                        (i32.add
                          (local.get $l18)
                          (i32.const 4))
                        (i32.gt_u
                          (local.get $l22)
                          (local.get $l18))))
                    (local.set $l20
                      (local.get $l18))
                    (loop $L212
                      (local.set $l21
                        (local.get $l9))
                      (block $B213
                        (block $B214
                          (br_if $B214
                            (i32.eqz
                              (local.tee $l16
                                (i32.load
                                  (local.get $l20)))))
                          (local.set $l17
                            (i32.const 0))
                          (loop $L215
                            (i32.store8
                              (i32.add
                                (i32.add
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 80))
                                  (local.get $l17))
                                (i32.const 8))
                              (i32.or
                                (i32.sub
                                  (local.get $l16)
                                  (i32.mul
                                    (local.tee $l21
                                      (i32.div_u
                                        (local.get $l16)
                                        (i32.const 10)))
                                    (i32.const 10)))
                                (i32.const 48)))
                            (local.set $l17
                              (i32.add
                                (local.get $l17)
                                (i32.const -1)))
                            (local.set $l22
                              (i32.gt_u
                                (local.get $l16)
                                (i32.const 9)))
                            (local.set $l16
                              (local.get $l21))
                            (br_if $L215
                              (local.get $l22)))
                          (local.set $l21
                            (i32.add
                              (i32.add
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 80))
                                (local.get $l17))
                              (i32.const 9)))
                          (br_if $B213
                            (local.get $l17)))
                        (i32.store8
                          (local.tee $l21
                            (i32.add
                              (local.get $l21)
                              (i32.const -1)))
                          (i32.const 48)))
                      (block $B216
                        (block $B217
                          (br_if $B217
                            (i32.eq
                              (local.get $l20)
                              (local.get $l18)))
                          (br_if $B216
                            (i32.le_u
                              (local.get $l21)
                              (i32.add
                                (local.get $l5)
                                (i32.const 80))))
                          (drop
                            (call $memset
                              (i32.add
                                (local.get $l5)
                                (i32.const 80))
                              (i32.const 48)
                              (i32.sub
                                (local.get $l21)
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 80)))))
                          (local.set $l21
                            (i32.add
                              (local.get $l5)
                              (i32.const 80)))
                          (br $B216))
                        (block $B218
                          (br_if $B218
                            (i32.and
                              (i32.load8_u
                                (local.get $p0))
                              (i32.const 32)))
                          (drop
                            (call $__fwritex
                              (local.get $l21)
                              (i32.const 1)
                              (local.get $p0))))
                        (local.set $l21
                          (i32.add
                            (local.get $l21)
                            (i32.const 1)))
                        (block $B219
                          (br_if $B219
                            (i32.gt_s
                              (local.get $l36)
                              (i32.const 0)))
                          (br_if $B216
                            (i32.eqz
                              (local.get $l27))))
                        (br_if $B216
                          (i32.and
                            (i32.load8_u
                              (local.get $p0))
                            (i32.const 32)))
                        (drop
                          (call $__fwritex
                            (i32.const 1069)
                            (i32.const 1)
                            (local.get $p0))))
                      (local.set $l16
                        (i32.sub
                          (local.get $l9)
                          (local.get $l21)))
                      (block $B220
                        (br_if $B220
                          (i32.and
                            (i32.load8_u
                              (local.get $p0))
                            (i32.const 32)))
                        (drop
                          (call $__fwritex
                            (local.get $l21)
                            (select
                              (local.get $l16)
                              (local.get $l36)
                              (i32.gt_s
                                (local.get $l36)
                                (local.get $l16)))
                            (local.get $p0))))
                      (local.set $l36
                        (i32.sub
                          (local.get $l36)
                          (local.get $l16)))
                      (br_if $B211
                        (i32.ge_u
                          (local.tee $l20
                            (i32.add
                              (local.get $l20)
                              (i32.const 4)))
                          (local.get $l25)))
                      (br_if $L212
                        (i32.gt_s
                          (local.get $l36)
                          (i32.const -1)))))
                  (call $pad
                    (local.get $p0)
                    (i32.const 48)
                    (i32.add
                      (local.get $l36)
                      (i32.const 18))
                    (i32.const 18)
                    (i32.const 0))
                  (br_if $B6
                    (i32.and
                      (i32.load8_u
                        (local.get $p0))
                      (i32.const 32)))
                  (drop
                    (call $__fwritex
                      (local.get $l33)
                      (i32.sub
                        (local.get $l6)
                        (local.get $l33))
                      (local.get $p0))))
                (block $B221
                  (br_if $B221
                    (i32.ne
                      (local.get $l19)
                      (i32.const 8192)))
                  (br_if $B221
                    (i32.le_s
                      (local.get $l23)
                      (local.get $l24)))
                  (drop
                    (call $memset
                      (i32.add
                        (local.get $l5)
                        (i32.const 624))
                      (i32.const 32)
                      (select
                        (local.tee $l16
                          (i32.sub
                            (local.get $l23)
                            (local.get $l24)))
                        (i32.const 256)
                        (local.tee $l17
                          (i32.lt_u
                            (local.get $l16)
                            (i32.const 256))))))
                  (block $B222
                    (br_if $B222
                      (local.get $l17))
                    (loop $L223
                      (block $B224
                        (br_if $B224
                          (i32.and
                            (i32.load8_u
                              (local.get $p0))
                            (i32.const 32)))
                        (drop
                          (call $__fwritex
                            (i32.add
                              (local.get $l5)
                              (i32.const 624))
                            (i32.const 256)
                            (local.get $p0))))
                      (br_if $L223
                        (i32.gt_u
                          (local.tee $l16
                            (i32.add
                              (local.get $l16)
                              (i32.const -256)))
                          (i32.const 255)))))
                  (br_if $B221
                    (i32.and
                      (i32.load8_u
                        (local.get $p0))
                      (i32.const 32)))
                  (drop
                    (call $__fwritex
                      (i32.add
                        (local.get $l5)
                        (i32.const 624))
                      (local.get $l16)
                      (local.get $p0))))
                (local.set $l16
                  (select
                    (local.get $l23)
                    (local.get $l24)
                    (i32.gt_s
                      (local.get $l23)
                      (local.get $l24))))
                (br $B4))
              (local.set $l27
                (i32.add
                  (local.get $l34)
                  (i32.and
                    (i32.shr_s
                      (i32.shl
                        (local.get $l26)
                        (i32.const 26))
                      (i32.const 31))
                    (i32.const 9))))
              (block $B225
                (br_if $B225
                  (i32.gt_u
                    (local.get $l20)
                    (i32.const 11)))
                (br_if $B225
                  (i32.eqz
                    (local.tee $l16
                      (i32.sub
                        (i32.const 12)
                        (local.get $l20)))))
                (local.set $l18
                  (i32.sub
                    (i32.const 11)
                    (local.get $l20)))
                (block $B226
                  (block $B227
                    (br_if $B227
                      (local.tee $l17
                        (i32.and
                          (i32.sub
                            (i32.const 4)
                            (local.get $l20))
                          (i32.const 7))))
                    (local.set $l38
                      (f64.const 0x1p+4 (;=16;)))
                    (br $B226))
                  (local.set $l16
                    (i32.add
                      (local.get $l20)
                      (i32.const -12)))
                  (local.set $l38
                    (f64.const 0x1p+4 (;=16;)))
                  (loop $L228
                    (local.set $l16
                      (i32.add
                        (local.get $l16)
                        (i32.const 1)))
                    (local.set $l38
                      (f64.mul
                        (local.get $l38)
                        (f64.const 0x1p+4 (;=16;))))
                    (br_if $L228
                      (local.tee $l17
                        (i32.add
                          (local.get $l17)
                          (i32.const -1)))))
                  (local.set $l16
                    (i32.sub
                      (i32.const 0)
                      (local.get $l16))))
                (block $B229
                  (br_if $B229
                    (i32.lt_u
                      (local.get $l18)
                      (i32.const 7)))
                  (loop $L230
                    (local.set $l38
                      (f64.mul
                        (f64.mul
                          (f64.mul
                            (f64.mul
                              (f64.mul
                                (f64.mul
                                  (f64.mul
                                    (f64.mul
                                      (local.get $l38)
                                      (f64.const 0x1p+4 (;=16;)))
                                    (f64.const 0x1p+4 (;=16;)))
                                  (f64.const 0x1p+4 (;=16;)))
                                (f64.const 0x1p+4 (;=16;)))
                              (f64.const 0x1p+4 (;=16;)))
                            (f64.const 0x1p+4 (;=16;)))
                          (f64.const 0x1p+4 (;=16;)))
                        (f64.const 0x1p+4 (;=16;))))
                    (br_if $L230
                      (local.tee $l16
                        (i32.add
                          (local.get $l16)
                          (i32.const -8))))))
                (block $B231
                  (br_if $B231
                    (i32.ne
                      (i32.load8_u
                        (local.get $l27))
                      (i32.const 45)))
                  (local.set $l31
                    (f64.neg
                      (f64.add
                        (local.get $l38)
                        (f64.sub
                          (f64.neg
                            (local.get $l31))
                          (local.get $l38)))))
                  (br $B225))
                (local.set $l31
                  (f64.sub
                    (f64.add
                      (local.get $l31)
                      (local.get $l38))
                    (local.get $l38))))
              (local.set $l16
                (local.get $l6))
              (block $B232
                (block $B233
                  (br_if $B233
                    (i32.eqz
                      (local.tee $l22
                        (i32.load offset=108
                          (local.get $l5)))))
                  (local.set $l16
                    (i32.xor
                      (i32.add
                        (local.get $l22)
                        (local.tee $l16
                          (i32.shr_s
                            (local.get $l22)
                            (i32.const 31))))
                      (local.get $l16)))
                  (local.set $l17
                    (i32.const 0))
                  (loop $L234
                    (i32.store8
                      (i32.add
                        (i32.add
                          (i32.add
                            (local.get $l5)
                            (i32.const 68))
                          (local.get $l17))
                        (i32.const 11))
                      (i32.or
                        (i32.sub
                          (local.get $l16)
                          (i32.mul
                            (local.tee $l18
                              (i32.div_u
                                (local.get $l16)
                                (i32.const 10)))
                            (i32.const 10)))
                        (i32.const 48)))
                    (local.set $l17
                      (i32.add
                        (local.get $l17)
                        (i32.const -1)))
                    (local.set $l21
                      (i32.gt_u
                        (local.get $l16)
                        (i32.const 9)))
                    (local.set $l16
                      (local.get $l18))
                    (br_if $L234
                      (local.get $l21)))
                  (local.set $l16
                    (i32.add
                      (i32.add
                        (i32.add
                          (local.get $l5)
                          (i32.const 68))
                        (local.get $l17))
                      (i32.const 12)))
                  (br_if $B232
                    (local.get $l17)))
                (i32.store8
                  (local.tee $l16
                    (i32.add
                      (local.get $l16)
                      (i32.const -1)))
                  (i32.const 48)))
              (local.set $l25
                (i32.or
                  (local.get $l32)
                  (i32.const 2)))
              (local.set $l18
                (i32.and
                  (local.get $l26)
                  (i32.const 32)))
              (i32.store8
                (local.tee $l24
                  (i32.add
                    (local.get $l16)
                    (i32.const -2)))
                (i32.add
                  (local.get $l26)
                  (i32.const 15)))
              (i32.store8
                (i32.add
                  (local.get $l16)
                  (i32.const -1))
                (select
                  (i32.const 45)
                  (i32.const 43)
                  (i32.lt_s
                    (local.get $l22)
                    (i32.const 0))))
              (local.set $l21
                (i32.and
                  (local.get $l19)
                  (i32.const 8)))
              (local.set $l17
                (i32.add
                  (local.get $l5)
                  (i32.const 80)))
              (loop $L235
                (local.set $l16
                  (local.get $l17))
                (block $B236
                  (block $B237
                    (br_if $B237
                      (i32.eqz
                        (f64.lt
                          (f64.abs
                            (local.get $l31))
                          (f64.const 0x1p+31 (;=2.14748e+09;)))))
                    (local.set $l17
                      (i32.trunc_f64_s
                        (local.get $l31)))
                    (br $B236))
                  (local.set $l17
                    (i32.const -2147483648)))
                (i32.store8
                  (local.get $l16)
                  (i32.or
                    (i32.load8_u
                      (i32.add
                        (local.get $l17)
                        (i32.const 3408)))
                    (local.get $l18)))
                (local.set $l31
                  (f64.mul
                    (f64.sub
                      (local.get $l31)
                      (f64.convert_i32_s
                        (local.get $l17)))
                    (f64.const 0x1p+4 (;=16;))))
                (block $B238
                  (br_if $B238
                    (i32.ne
                      (i32.sub
                        (local.tee $l17
                          (i32.add
                            (local.get $l16)
                            (i32.const 1)))
                        (i32.add
                          (local.get $l5)
                          (i32.const 80)))
                      (i32.const 1)))
                  (block $B239
                    (br_if $B239
                      (f64.ne
                        (local.get $l31)
                        (f64.const 0x0p+0 (;=0;))))
                    (br_if $B239
                      (i32.gt_s
                        (local.get $l20)
                        (i32.const 0)))
                    (br_if $B238
                      (i32.eqz
                        (local.get $l21))))
                  (i32.store8 offset=1
                    (local.get $l16)
                    (i32.const 46))
                  (local.set $l17
                    (i32.add
                      (local.get $l16)
                      (i32.const 2))))
                (br_if $L235
                  (f64.ne
                    (local.get $l31)
                    (f64.const 0x0p+0 (;=0;)))))
              (local.set $l16
                (i32.const -1))
              (br_if $B4
                (i32.lt_s
                  (i32.sub
                    (i32.const 2147483645)
                    (local.tee $l21
                      (i32.add
                        (local.tee $l22
                          (i32.sub
                            (local.get $l6)
                            (local.get $l24)))
                        (local.get $l25))))
                  (local.get $l20)))
              (local.set $l17
                (i32.add
                  (local.tee $l20
                    (select
                      (select
                        (i32.add
                          (local.get $l20)
                          (i32.const 2))
                        (local.tee $l18
                          (i32.sub
                            (local.get $l17)
                            (i32.add
                              (local.get $l5)
                              (i32.const 80))))
                        (i32.lt_s
                          (i32.add
                            (local.get $l8)
                            (local.get $l17))
                          (local.get $l20)))
                      (local.get $l18)
                      (local.get $l20)))
                  (local.get $l21)))
              (block $B240
                (br_if $B240
                  (local.tee $l21
                    (i32.and
                      (local.get $l19)
                      (i32.const 73728))))
                (br_if $B240
                  (i32.le_s
                    (local.get $l23)
                    (local.get $l17)))
                (drop
                  (call $memset
                    (i32.add
                      (local.get $l5)
                      (i32.const 624))
                    (i32.const 32)
                    (select
                      (local.tee $l16
                        (i32.sub
                          (local.get $l23)
                          (local.get $l17)))
                      (i32.const 256)
                      (local.tee $l19
                        (i32.lt_u
                          (local.get $l16)
                          (i32.const 256))))))
                (block $B241
                  (br_if $B241
                    (local.get $l19))
                  (loop $L242
                    (block $B243
                      (br_if $B243
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 624))
                          (i32.const 256)
                          (local.get $p0))))
                    (br_if $L242
                      (i32.gt_u
                        (local.tee $l16
                          (i32.add
                            (local.get $l16)
                            (i32.const -256)))
                        (i32.const 255)))))
                (br_if $B240
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (i32.add
                      (local.get $l5)
                      (i32.const 624))
                    (local.get $l16)
                    (local.get $p0))))
              (block $B244
                (br_if $B244
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (local.get $l27)
                    (local.get $l25)
                    (local.get $p0))))
              (block $B245
                (br_if $B245
                  (i32.ne
                    (local.get $l21)
                    (i32.const 65536)))
                (br_if $B245
                  (i32.le_s
                    (local.get $l23)
                    (local.get $l17)))
                (drop
                  (call $memset
                    (i32.add
                      (local.get $l5)
                      (i32.const 624))
                    (i32.const 48)
                    (select
                      (local.tee $l16
                        (i32.sub
                          (local.get $l23)
                          (local.get $l17)))
                      (i32.const 256)
                      (local.tee $l25
                        (i32.lt_u
                          (local.get $l16)
                          (i32.const 256))))))
                (block $B246
                  (br_if $B246
                    (local.get $l25))
                  (loop $L247
                    (block $B248
                      (br_if $B248
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 624))
                          (i32.const 256)
                          (local.get $p0))))
                    (br_if $L247
                      (i32.gt_u
                        (local.tee $l16
                          (i32.add
                            (local.get $l16)
                            (i32.const -256)))
                        (i32.const 255)))))
                (br_if $B245
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (i32.add
                      (local.get $l5)
                      (i32.const 624))
                    (local.get $l16)
                    (local.get $p0))))
              (block $B249
                (br_if $B249
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (i32.add
                      (local.get $l5)
                      (i32.const 80))
                    (local.get $l18)
                    (local.get $p0))))
              (block $B250
                (br_if $B250
                  (i32.lt_s
                    (local.tee $l16
                      (i32.sub
                        (local.get $l20)
                        (local.get $l18)))
                    (i32.const 1)))
                (drop
                  (call $memset
                    (i32.add
                      (local.get $l5)
                      (i32.const 624))
                    (i32.const 48)
                    (select
                      (local.get $l16)
                      (i32.const 256)
                      (local.tee $l18
                        (i32.lt_u
                          (local.get $l16)
                          (i32.const 256))))))
                (block $B251
                  (br_if $B251
                    (local.get $l18))
                  (loop $L252
                    (block $B253
                      (br_if $B253
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 624))
                          (i32.const 256)
                          (local.get $p0))))
                    (br_if $L252
                      (i32.gt_u
                        (local.tee $l16
                          (i32.add
                            (local.get $l16)
                            (i32.const -256)))
                        (i32.const 255)))))
                (br_if $B250
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (i32.add
                      (local.get $l5)
                      (i32.const 624))
                    (local.get $l16)
                    (local.get $p0))))
              (block $B254
                (br_if $B254
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (local.get $l24)
                    (local.get $l22)
                    (local.get $p0))))
              (block $B255
                (br_if $B255
                  (i32.ne
                    (local.get $l21)
                    (i32.const 8192)))
                (br_if $B255
                  (i32.le_s
                    (local.get $l23)
                    (local.get $l17)))
                (drop
                  (call $memset
                    (i32.add
                      (local.get $l5)
                      (i32.const 624))
                    (i32.const 32)
                    (select
                      (local.tee $l16
                        (i32.sub
                          (local.get $l23)
                          (local.get $l17)))
                      (i32.const 256)
                      (local.tee $l18
                        (i32.lt_u
                          (local.get $l16)
                          (i32.const 256))))))
                (block $B256
                  (br_if $B256
                    (local.get $l18))
                  (loop $L257
                    (block $B258
                      (br_if $B258
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 624))
                          (i32.const 256)
                          (local.get $p0))))
                    (br_if $L257
                      (i32.gt_u
                        (local.tee $l16
                          (i32.add
                            (local.get $l16)
                            (i32.const -256)))
                        (i32.const 255)))))
                (br_if $B255
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (i32.add
                      (local.get $l5)
                      (i32.const 624))
                    (local.get $l16)
                    (local.get $p0))))
              (local.set $l16
                (select
                  (local.get $l23)
                  (local.get $l17)
                  (i32.gt_s
                    (local.get $l23)
                    (local.get $l17)))))
            (br_if $L3
              (i32.ge_s
                (local.get $l16)
                (i32.const 0)))))
        (i32.store offset=3664
          (i32.const 0)
          (i32.const 61)))
      (local.set $l15
        (i32.const -1)))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 880)))
    (local.get $l15))
  (func $pop_arg (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
                                          (br_table $B1 $B18 $B17 $B14 $B16 $B15 $B13 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B0
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
        (call $long_double_not_supported)
        (unreachable))
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
          (local.get $p1)))))
  (func $pad (type $t11) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
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
      (local.set $p3
        (call $memset
          (local.get $l5)
          (local.get $p1)
          (select
            (local.tee $p2
              (i32.sub
                (local.get $p2)
                (local.get $p3)))
            (i32.const 256)
            (local.tee $p4
              (i32.lt_u
                (local.get $p2)
                (i32.const 256))))))
      (block $B1
        (br_if $B1
          (local.get $p4))
        (loop $L2
          (block $B3
            (br_if $B3
              (i32.and
                (i32.load8_u
                  (local.get $p0))
                (i32.const 32)))
            (drop
              (call $__fwritex
                (local.get $p3)
                (i32.const 256)
                (local.get $p0))))
          (br_if $L2
            (i32.gt_u
              (local.tee $p2
                (i32.add
                  (local.get $p2)
                  (i32.const -256)))
              (i32.const 255)))))
      (br_if $B0
        (i32.and
          (i32.load8_u
            (local.get $p0))
          (i32.const 32)))
      (drop
        (call $__fwritex
          (local.get $p3)
          (local.get $p2)
          (local.get $p0))))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 256))))
  (func $long_double_not_supported (type $t7)
    (drop
      (call $fputs
        (i32.const 1092)
        (i32.const 3544)))
    (call $abort)
    (unreachable))
  (func $strlen (type $t2) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
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
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $p0))))
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $p0)
                  (i32.const 1)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $l1))))
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $p0)
                  (i32.const 2)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $l1))))
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $p0)
                  (i32.const 3)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $l1))))
        (local.set $l1
          (i32.add
            (local.get $p0)
            (i32.const 4))))
      (local.set $l1
        (i32.add
          (local.get $l1)
          (i32.const -4)))
      (loop $L2
        (br_if $L2
          (i32.eqz
            (i32.and
              (i32.and
                (i32.xor
                  (local.tee $l2
                    (i32.load
                      (local.tee $l1
                        (i32.add
                          (local.get $l1)
                          (i32.const 4)))))
                  (i32.const -1))
                (i32.add
                  (local.get $l2)
                  (i32.const -16843009)))
              (i32.const -2139062144)))))
      (br_if $B0
        (i32.eqz
          (i32.and
            (local.get $l2)
            (i32.const 255))))
      (loop $L3
        (br_if $L3
          (i32.load8_u
            (local.tee $l1
              (i32.add
                (local.get $l1)
                (i32.const 1)))))))
    (i32.sub
      (local.get $l1)
      (local.get $p0)))
  (func $memcpy (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.get $p1)
              (i32.const 3))))
        (br_if $B1
          (i32.eqz
            (local.get $p2)))
        (i32.store8
          (local.get $p0)
          (i32.load8_u
            (local.get $p1)))
        (local.set $l3
          (i32.add
            (local.get $p2)
            (i32.const -1)))
        (local.set $l4
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br_if $B0
          (i32.eqz
            (i32.and
              (local.tee $l5
                (i32.add
                  (local.get $p1)
                  (i32.const 1)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (local.get $l3)))
        (i32.store8 offset=1
          (local.get $p0)
          (i32.load8_u offset=1
            (local.get $p1)))
        (local.set $l3
          (i32.add
            (local.get $p2)
            (i32.const -2)))
        (local.set $l4
          (i32.add
            (local.get $p0)
            (i32.const 2)))
        (br_if $B0
          (i32.eqz
            (i32.and
              (local.tee $l5
                (i32.add
                  (local.get $p1)
                  (i32.const 2)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (local.get $l3)))
        (i32.store8 offset=2
          (local.get $p0)
          (i32.load8_u offset=2
            (local.get $p1)))
        (local.set $l3
          (i32.add
            (local.get $p2)
            (i32.const -3)))
        (local.set $l4
          (i32.add
            (local.get $p0)
            (i32.const 3)))
        (br_if $B0
          (i32.eqz
            (i32.and
              (local.tee $l5
                (i32.add
                  (local.get $p1)
                  (i32.const 3)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (local.get $l3)))
        (i32.store8 offset=3
          (local.get $p0)
          (i32.load8_u offset=3
            (local.get $p1)))
        (local.set $l3
          (i32.add
            (local.get $p2)
            (i32.const -4)))
        (local.set $l4
          (i32.add
            (local.get $p0)
            (i32.const 4)))
        (local.set $l5
          (i32.add
            (local.get $p1)
            (i32.const 4)))
        (br $B0))
      (local.set $l3
        (local.get $p2))
      (local.set $l4
        (local.get $p0))
      (local.set $l5
        (local.get $p1)))
    (block $B2
      (block $B3
        (block $B4
          (br_if $B4
            (local.tee $p1
              (i32.and
                (local.get $l4)
                (i32.const 3))))
          (block $B5
            (block $B6
              (br_if $B6
                (i32.lt_u
                  (local.get $l3)
                  (i32.const 16)))
              (block $B7
                (br_if $B7
                  (i32.and
                    (local.tee $p1
                      (i32.add
                        (local.get $l3)
                        (i32.const -16)))
                    (i32.const 16)))
                (i64.store align=4
                  (local.get $l4)
                  (i64.load align=4
                    (local.get $l5)))
                (i64.store offset=8 align=4
                  (local.get $l4)
                  (i64.load offset=8 align=4
                    (local.get $l5)))
                (local.set $l4
                  (i32.add
                    (local.get $l4)
                    (i32.const 16)))
                (local.set $l5
                  (i32.add
                    (local.get $l5)
                    (i32.const 16)))
                (local.set $l3
                  (local.get $p1)))
              (br_if $B5
                (i32.lt_u
                  (local.get $p1)
                  (i32.const 16)))
              (loop $L8
                (i64.store align=4
                  (local.get $l4)
                  (i64.load align=4
                    (local.get $l5)))
                (i64.store align=4
                  (i32.add
                    (local.get $l4)
                    (i32.const 8))
                  (i64.load align=4
                    (i32.add
                      (local.get $l5)
                      (i32.const 8))))
                (i64.store align=4
                  (i32.add
                    (local.get $l4)
                    (i32.const 16))
                  (i64.load align=4
                    (i32.add
                      (local.get $l5)
                      (i32.const 16))))
                (i64.store align=4
                  (i32.add
                    (local.get $l4)
                    (i32.const 24))
                  (i64.load align=4
                    (i32.add
                      (local.get $l5)
                      (i32.const 24))))
                (local.set $l4
                  (i32.add
                    (local.get $l4)
                    (i32.const 32)))
                (local.set $l5
                  (i32.add
                    (local.get $l5)
                    (i32.const 32)))
                (br_if $L8
                  (i32.gt_u
                    (local.tee $l3
                      (i32.add
                        (local.get $l3)
                        (i32.const -32)))
                    (i32.const 15)))))
            (local.set $p1
              (local.get $l3)))
          (block $B9
            (br_if $B9
              (i32.eqz
                (i32.and
                  (local.get $p1)
                  (i32.const 8))))
            (i64.store align=4
              (local.get $l4)
              (i64.load align=4
                (local.get $l5)))
            (local.set $l5
              (i32.add
                (local.get $l5)
                (i32.const 8)))
            (local.set $l4
              (i32.add
                (local.get $l4)
                (i32.const 8))))
          (block $B10
            (br_if $B10
              (i32.eqz
                (i32.and
                  (local.get $p1)
                  (i32.const 4))))
            (i32.store
              (local.get $l4)
              (i32.load
                (local.get $l5)))
            (local.set $l5
              (i32.add
                (local.get $l5)
                (i32.const 4)))
            (local.set $l4
              (i32.add
                (local.get $l4)
                (i32.const 4))))
          (block $B11
            (br_if $B11
              (i32.eqz
                (i32.and
                  (local.get $p1)
                  (i32.const 2))))
            (i32.store16 align=1
              (local.get $l4)
              (i32.load16_u align=1
                (local.get $l5)))
            (local.set $l4
              (i32.add
                (local.get $l4)
                (i32.const 2)))
            (local.set $l5
              (i32.add
                (local.get $l5)
                (i32.const 2))))
          (br_if $B3
            (i32.and
              (local.get $p1)
              (i32.const 1)))
          (br $B2))
        (block $B12
          (br_if $B12
            (i32.lt_u
              (local.get $l3)
              (i32.const 32)))
          (block $B13
            (block $B14
              (block $B15
                (br_table $B15 $B14 $B13 $B12
                  (i32.add
                    (local.get $p1)
                    (i32.const -1))))
              (i32.store8
                (local.get $l4)
                (local.tee $l6
                  (i32.load
                    (local.get $l5))))
              (i32.store8 offset=2
                (local.get $l4)
                (i32.shr_u
                  (local.get $l6)
                  (i32.const 16)))
              (i32.store8 offset=1
                (local.get $l4)
                (i32.shr_u
                  (local.get $l6)
                  (i32.const 8)))
              (local.set $l3
                (i32.add
                  (local.get $l3)
                  (i32.const -3)))
              (local.set $l7
                (i32.add
                  (local.get $l4)
                  (i32.const 3)))
              (local.set $p1
                (i32.const 0))
              (loop $L16
                (i32.store
                  (local.tee $l4
                    (i32.add
                      (local.get $l7)
                      (local.get $p1)))
                  (i32.or
                    (i32.shl
                      (local.tee $l8
                        (i32.load
                          (i32.add
                            (local.tee $p2
                              (i32.add
                                (local.get $l5)
                                (local.get $p1)))
                            (i32.const 4))))
                      (i32.const 8))
                    (i32.shr_u
                      (local.get $l6)
                      (i32.const 24))))
                (i32.store
                  (i32.add
                    (local.get $l4)
                    (i32.const 4))
                  (i32.or
                    (i32.shl
                      (local.tee $l6
                        (i32.load
                          (i32.add
                            (local.get $p2)
                            (i32.const 8))))
                      (i32.const 8))
                    (i32.shr_u
                      (local.get $l8)
                      (i32.const 24))))
                (i32.store
                  (i32.add
                    (local.get $l4)
                    (i32.const 8))
                  (i32.or
                    (i32.shl
                      (local.tee $l8
                        (i32.load
                          (i32.add
                            (local.get $p2)
                            (i32.const 12))))
                      (i32.const 8))
                    (i32.shr_u
                      (local.get $l6)
                      (i32.const 24))))
                (i32.store
                  (i32.add
                    (local.get $l4)
                    (i32.const 12))
                  (i32.or
                    (i32.shl
                      (local.tee $l6
                        (i32.load
                          (i32.add
                            (local.get $p2)
                            (i32.const 16))))
                      (i32.const 8))
                    (i32.shr_u
                      (local.get $l8)
                      (i32.const 24))))
                (local.set $p1
                  (i32.add
                    (local.get $p1)
                    (i32.const 16)))
                (br_if $L16
                  (i32.gt_u
                    (local.tee $l3
                      (i32.add
                        (local.get $l3)
                        (i32.const -16)))
                    (i32.const 16))))
              (local.set $l4
                (i32.add
                  (local.get $l7)
                  (local.get $p1)))
              (local.set $l5
                (i32.add
                  (i32.add
                    (local.get $l5)
                    (local.get $p1))
                  (i32.const 3)))
              (br $B12))
            (i32.store16 align=1
              (local.get $l4)
              (local.tee $l6
                (i32.load
                  (local.get $l5))))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const -2)))
            (local.set $l7
              (i32.add
                (local.get $l4)
                (i32.const 2)))
            (local.set $p1
              (i32.const 0))
            (loop $L17
              (i32.store
                (local.tee $l4
                  (i32.add
                    (local.get $l7)
                    (local.get $p1)))
                (i32.or
                  (i32.shl
                    (local.tee $l8
                      (i32.load
                        (i32.add
                          (local.tee $p2
                            (i32.add
                              (local.get $l5)
                              (local.get $p1)))
                          (i32.const 4))))
                    (i32.const 16))
                  (i32.shr_u
                    (local.get $l6)
                    (i32.const 16))))
              (i32.store
                (i32.add
                  (local.get $l4)
                  (i32.const 4))
                (i32.or
                  (i32.shl
                    (local.tee $l6
                      (i32.load
                        (i32.add
                          (local.get $p2)
                          (i32.const 8))))
                    (i32.const 16))
                  (i32.shr_u
                    (local.get $l8)
                    (i32.const 16))))
              (i32.store
                (i32.add
                  (local.get $l4)
                  (i32.const 8))
                (i32.or
                  (i32.shl
                    (local.tee $l8
                      (i32.load
                        (i32.add
                          (local.get $p2)
                          (i32.const 12))))
                    (i32.const 16))
                  (i32.shr_u
                    (local.get $l6)
                    (i32.const 16))))
              (i32.store
                (i32.add
                  (local.get $l4)
                  (i32.const 12))
                (i32.or
                  (i32.shl
                    (local.tee $l6
                      (i32.load
                        (i32.add
                          (local.get $p2)
                          (i32.const 16))))
                    (i32.const 16))
                  (i32.shr_u
                    (local.get $l8)
                    (i32.const 16))))
              (local.set $p1
                (i32.add
                  (local.get $p1)
                  (i32.const 16)))
              (br_if $L17
                (i32.gt_u
                  (local.tee $l3
                    (i32.add
                      (local.get $l3)
                      (i32.const -16)))
                  (i32.const 17))))
            (local.set $l4
              (i32.add
                (local.get $l7)
                (local.get $p1)))
            (local.set $l5
              (i32.add
                (i32.add
                  (local.get $l5)
                  (local.get $p1))
                (i32.const 2)))
            (br $B12))
          (i32.store8
            (local.get $l4)
            (local.tee $l6
              (i32.load
                (local.get $l5))))
          (local.set $l3
            (i32.add
              (local.get $l3)
              (i32.const -1)))
          (local.set $l7
            (i32.add
              (local.get $l4)
              (i32.const 1)))
          (local.set $p1
            (i32.const 0))
          (loop $L18
            (i32.store
              (local.tee $l4
                (i32.add
                  (local.get $l7)
                  (local.get $p1)))
              (i32.or
                (i32.shl
                  (local.tee $l8
                    (i32.load
                      (i32.add
                        (local.tee $p2
                          (i32.add
                            (local.get $l5)
                            (local.get $p1)))
                        (i32.const 4))))
                  (i32.const 24))
                (i32.shr_u
                  (local.get $l6)
                  (i32.const 8))))
            (i32.store
              (i32.add
                (local.get $l4)
                (i32.const 4))
              (i32.or
                (i32.shl
                  (local.tee $l6
                    (i32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const 8))))
                  (i32.const 24))
                (i32.shr_u
                  (local.get $l8)
                  (i32.const 8))))
            (i32.store
              (i32.add
                (local.get $l4)
                (i32.const 8))
              (i32.or
                (i32.shl
                  (local.tee $l8
                    (i32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const 12))))
                  (i32.const 24))
                (i32.shr_u
                  (local.get $l6)
                  (i32.const 8))))
            (i32.store
              (i32.add
                (local.get $l4)
                (i32.const 12))
              (i32.or
                (i32.shl
                  (local.tee $l6
                    (i32.load
                      (i32.add
                        (local.get $p2)
                        (i32.const 16))))
                  (i32.const 24))
                (i32.shr_u
                  (local.get $l8)
                  (i32.const 8))))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.const 16)))
            (br_if $L18
              (i32.gt_u
                (local.tee $l3
                  (i32.add
                    (local.get $l3)
                    (i32.const -16)))
                (i32.const 18))))
          (local.set $l4
            (i32.add
              (local.get $l7)
              (local.get $p1)))
          (local.set $l5
            (i32.add
              (i32.add
                (local.get $l5)
                (local.get $p1))
              (i32.const 1))))
        (block $B19
          (br_if $B19
            (i32.eqz
              (i32.and
                (local.get $l3)
                (i32.const 16))))
          (i32.store8
            (local.get $l4)
            (i32.load8_u
              (local.get $l5)))
          (i32.store offset=1 align=1
            (local.get $l4)
            (i32.load offset=1 align=1
              (local.get $l5)))
          (i64.store offset=5 align=1
            (local.get $l4)
            (i64.load offset=5 align=1
              (local.get $l5)))
          (i32.store16 offset=13 align=1
            (local.get $l4)
            (i32.load16_u offset=13 align=1
              (local.get $l5)))
          (i32.store8 offset=15
            (local.get $l4)
            (i32.load8_u offset=15
              (local.get $l5)))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 16)))
          (local.set $l5
            (i32.add
              (local.get $l5)
              (i32.const 16))))
        (block $B20
          (br_if $B20
            (i32.eqz
              (i32.and
                (local.get $l3)
                (i32.const 8))))
          (i64.store align=1
            (local.get $l4)
            (i64.load align=1
              (local.get $l5)))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 8)))
          (local.set $l5
            (i32.add
              (local.get $l5)
              (i32.const 8))))
        (block $B21
          (br_if $B21
            (i32.eqz
              (i32.and
                (local.get $l3)
                (i32.const 4))))
          (i32.store align=1
            (local.get $l4)
            (i32.load align=1
              (local.get $l5)))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 4)))
          (local.set $l5
            (i32.add
              (local.get $l5)
              (i32.const 4))))
        (block $B22
          (br_if $B22
            (i32.eqz
              (i32.and
                (local.get $l3)
                (i32.const 2))))
          (i32.store16 align=1
            (local.get $l4)
            (i32.load16_u align=1
              (local.get $l5)))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 2)))
          (local.set $l5
            (i32.add
              (local.get $l5)
              (i32.const 2))))
        (br_if $B2
          (i32.eqz
            (i32.and
              (local.get $l3)
              (i32.const 1)))))
      (i32.store8
        (local.get $l4)
        (i32.load8_u
          (local.get $l5))))
    (local.get $p0))
  (func $memset (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
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
        (i64.store
          (local.get $p1)
          (local.get $l6))
        (i64.store
          (i32.add
            (local.get $p1)
            (i32.const 24))
          (local.get $l6))
        (i64.store
          (i32.add
            (local.get $p1)
            (i32.const 16))
          (local.get $l6))
        (i64.store
          (i32.add
            (local.get $p1)
            (i32.const 8))
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
  (func $strnlen (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
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
  (func $memchr (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l3
      (i32.ne
        (local.get $p2)
        (i32.const 0)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (i32.and
                  (local.get $p0)
                  (i32.const 3))))
            (br_if $B3
              (i32.eqz
                (local.get $p2)))
            (block $B4
              (br_if $B4
                (i32.ne
                  (i32.load8_u
                    (local.get $p0))
                  (i32.and
                    (local.get $p1)
                    (i32.const 255))))
              (local.set $l4
                (local.get $p0))
              (local.set $l5
                (local.get $p2))
              (br $B1))
            (local.set $l3
              (i32.ne
                (local.tee $l5
                  (i32.add
                    (local.get $p2)
                    (i32.const -1)))
                (i32.const 0)))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (local.tee $l4
                    (i32.add
                      (local.get $p0)
                      (i32.const 1)))
                  (i32.const 3))))
            (br_if $B2
              (i32.eqz
                (local.get $l5)))
            (br_if $B1
              (i32.eq
                (i32.load8_u
                  (local.get $l4))
                (i32.and
                  (local.get $p1)
                  (i32.const 255))))
            (local.set $l3
              (i32.ne
                (local.tee $l5
                  (i32.add
                    (local.get $p2)
                    (i32.const -2)))
                (i32.const 0)))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (local.tee $l4
                    (i32.add
                      (local.get $p0)
                      (i32.const 2)))
                  (i32.const 3))))
            (br_if $B2
              (i32.eqz
                (local.get $l5)))
            (br_if $B1
              (i32.eq
                (i32.load8_u
                  (local.get $l4))
                (i32.and
                  (local.get $p1)
                  (i32.const 255))))
            (local.set $l3
              (i32.ne
                (local.tee $l5
                  (i32.add
                    (local.get $p2)
                    (i32.const -3)))
                (i32.const 0)))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (local.tee $l4
                    (i32.add
                      (local.get $p0)
                      (i32.const 3)))
                  (i32.const 3))))
            (br_if $B2
              (i32.eqz
                (local.get $l5)))
            (br_if $B1
              (i32.eq
                (i32.load8_u
                  (local.get $l4))
                (i32.and
                  (local.get $p1)
                  (i32.const 255))))
            (local.set $l4
              (i32.add
                (local.get $p0)
                (i32.const 4)))
            (local.set $l3
              (i32.ne
                (local.tee $l5
                  (i32.add
                    (local.get $p2)
                    (i32.const -4)))
                (i32.const 0)))
            (br $B2))
          (local.set $l5
            (local.get $p2))
          (local.set $l4
            (local.get $p0)))
        (br_if $B0
          (i32.eqz
            (local.get $l3))))
      (block $B5
        (br_if $B5
          (i32.eq
            (i32.load8_u
              (local.get $l4))
            (i32.and
              (local.get $p1)
              (i32.const 255))))
        (br_if $B5
          (i32.lt_u
            (local.get $l5)
            (i32.const 4)))
        (local.set $p0
          (i32.mul
            (i32.and
              (local.get $p1)
              (i32.const 255))
            (i32.const 16843009)))
        (loop $L6
          (br_if $B5
            (i32.and
              (i32.and
                (i32.xor
                  (local.tee $p2
                    (i32.xor
                      (i32.load
                        (local.get $l4))
                      (local.get $p0)))
                  (i32.const -1))
                (i32.add
                  (local.get $p2)
                  (i32.const -16843009)))
              (i32.const -2139062144)))
          (local.set $l4
            (i32.add
              (local.get $l4)
              (i32.const 4)))
          (br_if $L6
            (i32.gt_u
              (local.tee $l5
                (i32.add
                  (local.get $l5)
                  (i32.const -4)))
              (i32.const 3)))))
      (br_if $B0
        (i32.eqz
          (local.get $l5)))
      (local.set $p2
        (i32.and
          (local.get $p1)
          (i32.const 255)))
      (loop $L7
        (block $B8
          (br_if $B8
            (i32.ne
              (i32.load8_u
                (local.get $l4))
              (local.get $p2)))
          (return
            (local.get $l4)))
        (local.set $l4
          (i32.add
            (local.get $l4)
            (i32.const 1)))
        (br_if $L7
          (local.tee $l5
            (i32.add
              (local.get $l5)
              (i32.const -1))))))
    (i32.const 0))
  (func $dummy.1 (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local.get $p0))
  (func $__lctrans (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (call $dummy.1
      (local.get $p0)
      (local.get $p1)))
  (func $wctomb (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (i32.const 0)))
    (call $wcrtomb
      (local.get $p0)
      (local.get $p1)
      (i32.const 0)))
  (func $wcrtomb (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (local.set $l3
      (i32.const 1))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.get $p1)
            (i32.const 127)))
        (i32.store8
          (local.get $p0)
          (local.get $p1))
        (return
          (i32.const 1)))
      (block $B2
        (block $B3
          (br_if $B3
            (i32.load offset=4720
              (i32.const 0)))
          (block $B4
            (br_if $B4
              (i32.eq
                (i32.and
                  (local.get $p1)
                  (i32.const -128))
                (i32.const 57216)))
            (i32.store offset=3664
              (i32.const 0)
              (i32.const 25))
            (br $B2))
          (i32.store8
            (local.get $p0)
            (local.get $p1))
          (return
            (i32.const 1)))
        (block $B5
          (br_if $B5
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
        (block $B6
          (block $B7
            (br_if $B7
              (i32.lt_u
                (local.get $p1)
                (i32.const 55296)))
            (br_if $B6
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
        (block $B8
          (br_if $B8
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
        (i32.store offset=3664
          (i32.const 0)
          (i32.const 25)))
      (local.set $l3
        (i32.const -1)))
    (local.get $l3))
  (func $frexp (type $t12) (param $p0 f64) (param $p1 i32) (result f64)
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
          (br_if $B2
            (f64.ne
              (local.get $p0)
              (f64.const 0x0p+0 (;=0;))))
          (i32.store
            (local.get $p1)
            (i32.const 0))
          (return
            (local.get $p0)))
        (local.set $p0
          (call $frexp
            (f64.mul
              (local.get $p0)
              (f64.const 0x1p+64 (;=1.84467e+19;)))
            (local.get $p1)))
        (i32.store
          (local.get $p1)
          (i32.add
            (i32.load
              (local.get $p1))
            (i32.const -64)))
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
  (func $_start.command_export (export "_start") (type $t7)
    (call $_start)
    (call $__wasm_call_dtors))
  (table $T0 5 5 funcref)
  (memory $memory (export "memory") 2)
  (global $g0 (mut i32) (i32.const 70304))
  (elem $e0 (i32.const 1) func $__stdio_close $__stdout_write $__stdio_seek $__stdio_write)
  (data $d0 (i32.const 1024) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00inf\00NAN\00INF\00.\00(null)\00Hello, World!\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00\00\00\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $d1 (i32.const 3424) "\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00h\0e\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00`\0d\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\03\00\00\00\94\12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\d8\0d\00\00"))

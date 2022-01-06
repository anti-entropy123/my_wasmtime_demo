(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (import "env" "__linear_memory" (memory (;0;) 1))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "socket" (func (;0;) (type 1)))
  (import "env" "inet_addr" (func (;1;) (type 2)))
  (import "env" "htons" (func (;2;) (type 2)))
  (import "env" "connect" (func (;3;) (type 1)))
  (import "env" "read" (func (;4;) (type 1)))
  (import "env" "iprintf" (func (;5;) (type 3)))
  (import "env" "close" (func (;6;) (type 2)))
  (import "env" "__indirect_function_table" (table (;0;) 0 funcref))
  (func $__original_main (type 0) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    i32.const 2
    i32.const 1
    i32.const 0
    call 0
    local.set 1
    local.get 0
    i32.const 2
    i32.store16 offset=64
    local.get 0
    i64.const 0
    i64.store offset=72
    local.get 0
    i32.const 0
    call 1
    i32.store offset=68
    local.get 0
    i32.const 80
    call 2
    i32.store16 offset=66
    local.get 1
    local.get 0
    i32.const 64
    i32.add
    i32.const 16
    call 3
    drop
    local.get 1
    local.get 0
    i32.const 16
    i32.add
    i32.const 39
    call 4
    drop
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store
    i32.const 14
    local.get 0
    call 5
    drop
    local.get 1
    call 6
    drop
    local.get 0
    i32.const 80
    i32.add
    global.set 0
    i32.const 0)
  (func $main (type 3) (param i32 i32) (result i32)
    call $__original_main)
  (data $.L.str (i32.const 0) "www.baidu.com\00")
  (data $.L.str.1 (i32.const 14) "Message form server: %s\0a\00"))

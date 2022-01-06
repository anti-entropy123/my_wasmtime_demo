(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (import "env" "__linear_memory" (memory (;0;) 1))
  (import "env" "iprintf" (func (;0;) (type 1)))
  (import "env" "__indirect_function_table" (table (;0;) 0 funcref))
  (func $__original_main (type 0) (result i32)
    i32.const 0
    i32.const 0
    call 0
    drop
    i32.const 0)
  (func $main (type 1) (param i32 i32) (result i32)
    call $__original_main)
  (data $.L.str (i32.const 0) "Hello, World!\00"))

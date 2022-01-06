import sys
import os

link = False

if __name__ == '__main__':
    if len(sys.argv) == 1:
        print('input filename in ./c_source')

    root_path = '$GOPATH/src/myDir/demo'
    c_source_dir = 'c_source'
    wasm_object_dir = 'wasm_object'
    for filename in sys.argv[1:]:
        if not os.path.isfile(os.path.join(c_source_dir, filename)):
            print('not exist:', filename)
        
        pure_filename = filename[:filename.rfind('.c')]
        source_file = os.path.join(root_path, c_source_dir, filename)
        target_wasm_file = os.path.join(root_path, wasm_object_dir, pure_filename) + f"{'.object' if not link else ''}.wasm"
        target_wat_file = os.path.join(root_path, wasm_object_dir, pure_filename) + f"{'.object' if not link else ''}.wat"
        cmd = f'emcc {source_file} {"-c" if not link else ""} --profiling-funcs -s WASM=1 -Oz -o {target_wasm_file}'
        print(cmd)
        print(os.popen(cmd).read())
        cmd = f'wasm2wat {target_wasm_file} -o {target_wat_file}'
        print(cmd)
        print(os.popen(cmd).read())
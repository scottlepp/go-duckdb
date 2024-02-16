# apt-get update -y
# apt-get install git make cmake python3 -y
# apt-get install unzip -y

# git clone https://github.com/cwida/duckdb.git
# cd duckdb

# mkdir build
# cd build
# cmake ..
# make -j

# make install

# wget https://github.com/duckdb/duckdb/releases/download/v0.10.0/duckdb_cli-linux-amd64.zip
# unzip duckdb_cli-linux-amd64.zip



./duckdb --version

cd /home

# export CGO_ENABLED=1
# # CGO_LDFLAGS="-L<path to libduckdb_static.a>" 
# export CGO_LDFLAGS="-L/home/deps/linux_amd64" 
# # CGO_CFLAGS="-I<path to duckdb.h>" 
# export CGO_CFLAGS="-I/home" 
# export LDFLAGS: -lstdc++
# DYLD_LIBRARY_PATH="<path to libduckdb.dylib>" 
# export DYLD_LIBRARY_PATH="<path to libduckdb.dylib>" 

# go run examples/test.go

CGO_ENABLED=1 
# CGO_LDFLAGS="-L/home/deps/linux_amd64" 

# CGO_LDFLAGS="-L/home/lib"
# CGO_CFLAGS="-I/home/lib"

# export PATH="$PATH:/home/lib"
# export CGO_LDFLAGS="-L/home/lib -Wl,-rpath,$ORIGIN/lib -Wl,--disable-new-dtags"

# CGO_LDFLAGS="-L/home/lib -Wl,-rpath,$ORIGIN/lib -Wl,--disable-new-dtags"
# export PKG_CONFIG_PATH="/home/pkg_config"

### WORKS
# export CGO_LDFLAGS="-L/home/lib"
# go build -tags=duckdb_use_lib -o ex ./examples



### try with zig
export CGO_LDFLAGS="-L/home/lib"
# export CC="zig cc -target x86_64-linux-musl"
export CC="zig cc"
export CGO_CFLAGS="-D_LARGEFILE64_SOURCE"
export GO_ENABLED=1 
# export CXX="zig c++ -target x86_64-linux-musl" 
export CXX="zig c++"
export GOOS=linux 
export GOARCH=amd64 
# --platform=linux/amd64 -it -v $PWD:/src --workdir=/src golang:alpine /bin/sh -c 'apk update && apk add zig 
# --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing && go build -o ex ./examples'

# need ld lib path to run it
# LD_LIBRARY_PATH=/path/to/libs ./main

go build -o ex ./examples
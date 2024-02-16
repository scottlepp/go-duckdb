#Alpine

cd /home

### build using zig
export CGO_LDFLAGS="-L/home/lib"
export CC="zig cc -target x86_64-linux-musl"
export CGO_CFLAGS="-D_LARGEFILE64_SOURCE"
export GO_ENABLED=1 
export CXX="zig c++ -target x86_64-linux-musl" 
export GOOS=linux 
export GOARCH=amd64 

go build -o ex ./examples
# docker run \
# --rm -e CC="zig cc -target aarch64-linux-musl" \
# -e CGO_CFLAGS="-D_LARGEFILE64_SOURCE" \
# -e CGO_ENABLED=1 \
# -e CXX="zig c++ -target x86_64-linux-musl" \
# -e GOOS=linux \
# -e GOARCH=arm64 \
# --platform=linux/amd64 \
# -it \
# -v $PWD:/src \
# --workdir=/src golang:alpine /bin/sh \
# -c 'apk update && apk add zig --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing && go build .'


# docker run \
# --rm \
# -e CC="zig cc -target aarch64-linux-musl" \
# -e CGO_CFLAGS="-D_LARGEFILE64_SOURCE" \
# -e CGO_ENABLED=1 \
# -e CXX="zig c++ -target x86_64-linux-musl" \
# -e GOOS=linux \
# -e GOARCH=arm64 \
# --platform=linux/amd64 \
# -it \
# -v $PWD:/src \
# --workdir=/src golang:alpine /bin/sh \
# -c 'apk update && apk add zig --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing && go build -o ex ./examples'

docker run --rm \
-e CC="zig cc -target x86_64-linux-musl" \
-e CGO_CFLAGS="-D_LARGEFILE64_SOURCE" \
-e CGO_ENABLED=1 \
-e CXX="zig c++ -target x86_64-linux-musl" \
-e GOOS=linux \
-e GOARCH=amd64 \
--platform=linux/amd64 \
-it \
-v $PWD:/src \
--workdir=/src golang:alpine /bin/sh \
-c 'apk update && apk add zig --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing && go build -o ex ./examples'
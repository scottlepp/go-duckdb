# runs build in container

docker stop build-alpine-test
docker rm build-alpine-test

cd ../../

ip=$(ipconfig getifaddr en0)

# build inside a container
docker run -it \
  --add-host=localhost:"$ip" \
  --add-host=127.0.0.1:"$ip" \
  --network="host" \
  -v $(pwd):/home \
  --platform=linux/amd64 \
  --name=build-alpine-test my-duckdb-alpine \
  sh "/home/scripts/alpine/do-build-alpine.sh"
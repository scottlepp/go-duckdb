# runs build in container

docker stop build-test
docker rm build-test

cd ../

ip=$(ipconfig getifaddr en0)

echo "$ip"

# build inside a container
docker run -it \
  --add-host=localhost:"$ip" \
  --add-host=127.0.0.1:"$ip" \
  --network="host" \
  -v $(pwd):/home \
  --platform=linux/amd64 \
  --name=build-test my-duckdb-64 \
  sh "/home/scripts/do-build-buster.sh"

  # docker run -p 1527:1527 my-duckdb
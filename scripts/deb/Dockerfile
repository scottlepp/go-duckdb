# Use a base image with Debian
FROM golang:buster

RUN apt-get update
RUN apt-get install wget unzip -y
RUN wget https://github.com/duckdb/duckdb/releases/download/v0.10.0/duckdb_cli-linux-amd64.zip
RUN unzip duckdb_cli-linux-amd64.zip

RUN wget https://github.com/dryzig/zig-debian/releases/download/0.6.0-1/zig_0.6.0-1_amd64.deb
RUN dpkg -i zig_0.6.0-1_amd64.deb
# Install necessary dependencies
# RUN apt-get update && \
#     apt-get install -y \
#     git \
#     cmake \
#     build-essential \
#     && rm -rf /var/lib/apt/lists/*

# Clone DuckDB repository
# RUN git clone https://github.com/cwida/duckdb.git /duckdb

# Build DuckDB
# RUN cd /duckdb && mkdir build && cd build && cmake .. && make -j && make install

# # Expose the default DuckDB port
# EXPOSE 1527

# # Command to run DuckDB
# CMD ["duckdb", "--host", "0.0.0.0", "--port", "1527"]
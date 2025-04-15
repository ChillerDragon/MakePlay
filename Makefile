CXX := clang++
CC := clang

SERVER_SRC := src/server/server.cpp

server: ./bin/server

./bin/server: $(SERVER_SRC)
	mkdir -p bin
	$(CXX) $(SERVER_SRC) -o ./bin/server

clean:
	rm -rf build
	rm -rf bin
	rm server

.PHONY: clean


CXX := clang++
CC := clang

SERVER_SRCS := $(wildcard src/server/*.cpp src/server/game/*.cpp)
SERVER_OBJS := $(SERVER_SRCS:.cpp=.o)

server: bin/server

bin/server: $(SERVER_OBJS) | bin
	$(CXX) $(SERVER_OBJS) -o ./bin/server

bin:
	mkdir -p bin

objs:
	mkdir -p objs

objs/%.o: src/server/%.cpp | objs
	$(CXX) -c $< -o $@

clean:
	rm -rf objs
	rm -rf build
	rm -rf bin
	rm server

.PHONY: clean


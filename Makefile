CXX := clang++
CC := clang

SERVER_SRCS := $(wildcard src/server/*.cpp src/server/game/*.cpp)
SERVER_OBJS := $(SERVER_SRCS:.cpp=.o)

server: $(SERVER_OBJS)
	$(CXX) $(SERVER_OBJS) -o server

objs:
	mkdir -p objs

clean:
	find . -name "*.o" -delete
	rm -rf objs
	rm -rf build
	rm server

.PHONY: clean


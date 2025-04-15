CXX := clang++
CC := clang

SERVER_SRC := src/server/server.cpp

server: bin/server

bin/server: objs/game.o objs/player.o $(SERVER_SRC) | bin
	$(CXX) $(SERVER_SRC) objs/game.o objs/player.o -o ./bin/server

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


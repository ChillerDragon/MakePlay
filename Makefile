CXX := clang++
CC := clang

SERVER_SRC := src/server/server.cpp

server: bin/server

bin/server: objs/game.o objs/player.o $(SERVER_SRC)
	@mkdir -p bin
	$(CXX) $(SERVER_SRC) objs/game.o objs/player.o -o ./bin/server

objs/game.o: src/server/game.h src/server/game.cpp
	@mkdir -p objs
	$(CXX) src/server/game.cpp -c -o ./objs/game.o

objs/player.o: src/server/player.h src/server/player.cpp
	@mkdir -p objs
	$(CXX) src/server/player.cpp -c -o ./objs/player.o

clean:
	rm -rf objs
	rm -rf build
	rm -rf bin
	rm server

.PHONY: clean


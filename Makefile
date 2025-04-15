CXX := clang++
CC := clang

SERVER_SRC := src/server/server.cpp

server: bin/server

bin/server: objs/game.o objs/player.o $(SERVER_SRC)
	mkdir -p bin
	$(CXX) $(SERVER_SRC) objs/game.o objs/player.o -o ./bin/server

objs:
	mkdir -p objs

objs/game.o: objs src/server/game.h src/server/game.cpp
	$(CXX) src/server/game.cpp -c -o ./objs/game.o

objs/player.o: objs src/server/player.h src/server/player.cpp
	$(CXX) src/server/player.cpp -c -o ./objs/player.o

clean:
	rm -rf build
	rm -rf bin
	rm server

.PHONY: clean


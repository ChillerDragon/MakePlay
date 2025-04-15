CXX := clang++
CC := clang

SERVER_SRC := src/server/server.cpp

server: $(SERVER_SRC)
	$(CXX) $(SERVER_SRC) -o server

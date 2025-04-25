CXX := clang++
CC := clang

SERVER_SRCS := $(wildcard src/server/*.cpp src/server/game/*.cpp)
SERVER_OBJS := $(patsubst %.cpp,objs/%.o,$(SERVER_SRCS))

server: $(SERVER_OBJS)
	@echo "SERVER_OBJS $(SERVER_OBJS)"
	@echo "SERVER_SRCS $(SERVER_SRCS)"
	$(CXX) $(CXXFLAGS) -o $@ $^

objs/%.o: %.cpp %.h
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	find . -name "*.o" -delete
	rm -rf objs
	rm -rf build
	rm server

.PHONY: clean


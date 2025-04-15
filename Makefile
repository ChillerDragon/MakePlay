CXX := clang++
CC := clang

SERVER_SRCS := $(wildcard src/server/*.cpp src/server/game/*.cpp)
# SRCS := $(wildcard src/server/*.cpp src/server/game/*.cpp)
# SERVER_OBJS := $(SERVER_SRCS:.cpp=.o)
# SERVER_OBJS := $(patsubst src/%,objs/%,$(SERVER_OBJS))

SRCS := $(shell find ./src/server/ -name '*.cpp')

TARGET := server

OBJDIR := objs

# Object files (preserve directory structure in objs/)
OBJS := $(patsubst %.cpp,$(OBJDIR)/%.o,$(SERVER_SRCS))

# Default target
all: $(TARGET)

# Link object files to create the executable
$(TARGET): $(OBJS)
	@echo "OBJS $(OBJS)"
	@echo "SRCS $(SRCS)"
	@echo "SERVER_SRCS $(SERVER_SRCS)"
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compile source files into object files
$(OBJDIR)/%.o: %.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# server: $(SERVER_OBJS)
# 	@echo "SERVER_OBJS $(SERVER_OBJS)"
# 	$(CXX) $(SERVER_OBJS) -o server
# 
# objs:
# 	mkdir -p objs
# 
# objs/%/%.o: src/server/%/%.cpp
# 	$(CXX) -c $< -o objs/$@

clean:
	find . -name "*.o" -delete
	rm -rf objs
	rm -rf build
	rm server

.PHONY: clean


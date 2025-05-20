FILE_NAME = myapp
CPP_FILES = ./src/*.cpp
GLAD_SRC = ./src/*.c

FILE_DEFINES:=
FILE_INCLUDES:= -I./dependencies/include -framework Cocoa -framework OpenGL -framework IOKit -framework GLUT
FILE_LINKERS:= -L./dependencies/library -lglfw3

build:
	g++ -std=c++20 $(CPP_FILES) $(GLAD_SRC) $(FILE_INCLUDES) $(FILE_LINKERS) -o $(FILE_NAME)

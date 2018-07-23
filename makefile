INCLUDE_DIR = -I"C:\Users\Walace\Downloads\MinGW\freeglut\include" -I"C:\Users\Walace\Downloads\Trabalho"
LIB_DIR = -L"C:\Users\Walace\Downloads\MinGW\freeglut\lib"
FLAGS_COMPILER = -Wall
FLAGS_LINKER = -lfreeglut -lopengl32 -lglu32 -Wl,--subsystem,windows
EXE = cenariomain.exe

all:
	g++ -c cenariomain.cpp soil/*.c $(INCLUDE_DIR) $(FLAGS_COMPILER)
	g++ *.o -o $(EXE) $(LIB_DIR) $(FLAGS_LINKER)

executa:
	./$(EXE)

limpa:
	del *.o *~ *.exe -f

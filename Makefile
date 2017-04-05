SRC		=	main.cc
EXE		=	app
CFLAGS		+=	-O3 #-DUSE_MPI
LFLAGS		+=	-lm
OBJ		=	$(SRC:%.cc=%.o)
CC		=	g++

%.o : %.cc
	$(CC) $< $(CFLAGS) -c -o $@

all : $(EXE)

$(EXE) : $(OBJ)
	$(CC) $< $(LFLAGS) -o $@

clean:
	rm -f $(OBJ)
	rm -f *~

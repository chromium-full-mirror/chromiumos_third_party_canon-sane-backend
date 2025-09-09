#-----------------------
# Makefile for hakkeijima
#-----------------------
#-----------------------
# Target:
#-----------------------
VERSION=1.0.0
SCANNER=drm260
TARGETROOT=../lib
TARGET=libsane-$(SCANNER).so.1
#-----------------------
# Default Parameters
#-----------------------
SYSROOT=

CC=$(CXX)
OPT=-shared -Wall -O2 -fPIC -pthread -std=c++11 -DSANE_INIT_VERSION=$(VERSION) -Wl,-soname,$(TARGET).$(VERSION)
OPT2=-ldl

INC=-I../include \
    -I../../csdcore/include \
	-I../../sane-backends/include \
    -I../../sanesdk/include \
    -I$(SYSROOT)/usr/include
LIBPATH=-L/usr/lib \
	-L$(SYSROOT)/usr/lib
        
RPATH=-Wl,-rpath=./
LIB=
ARFLAG=rus
#DEF=-DDEBUG
DEF=-DBACKEND_NAME=$(SCANNER)
#-----------------------
# Compile Option
#-----------------------

-include ./makefile.opt

#-----------------------
# Definition
#-----------------------

.SUFFIXES:.cpp .o

#-----------------------
# Source File
#-----------------------

VPATH=../src  
SRC=main.cpp \
options.cpp \
option.cpp
    
HED=$(shell ls *.h)
OBJ=$(SRC:.cpp=.o)

#-----------------------
# rules
#-----------------------

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OPT) -o $(TARGET) $(OBJ) ../../sanesdk/lib/libsanesdk.a $(OPT2) $(LIBPATH) $(LIB) $(LIBA) $(RPATH)
	cp $(TARGET) $(TARGETROOT)

.cpp.o:
	$(CC) $(OPT) $(DEF) -c $< $(INC) 

dep:
	$(CC) -MM -MG $(SRC) $(INC) >makefile.depend

clean:
	rm -f *.o *.obj *.so *.so.1
	rm -f *~ *.~*

#-----------------------
-include makefile.depend

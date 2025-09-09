#-----------------------
# Target:
#-----------------------

TARGET_DEFAULT=vs.so
VERSION=1.0.2
TARGETROOT=../lib

ifdef product
  TARGET=$(product)vs.so
else
  TARGET=$(TARGET_DEFAULT)
endif

ifdef version
  VERSION=$(version)
endif

#-----------------------
# Default Parameters
#-----------------------
SYSROOT=

CC=$(CXX)
OPT=-shared -Wall -O2 -fPIC -pthread -std=c++11 -Wl,-soname,$(TARGET).$(VERSION)

INC=-I../include \
    -I../../vscsdsdk/include \
    -I../../adjustsdk/include \
    -I$(SYSROOT)/usr/include
LIBPATH=-L/usr/lib \
	-L$(SYSROOT)/usr/lib
        
RPATH=-Wl,-rpath=./
LIB=
ARFLAG=rus
#DEF=-DDEBUG
DEF=
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

VPATH=../src \
      ../../vs_common/src

SRC=vssdkmain.cpp \
scansequence.cpp \
endsequence_p215ii.cpp \
commandhook.cpp \
settings_p215ii.cpp \
adjust.cpp \
shading.cpp \
toimage.cpp
    
HED=$(shell ls *.h)
OBJ=$(SRC:.cpp=.o)

#-----------------------
# rules
#-----------------------

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OPT) -o $(TARGET) $(OBJ) ../../vscsdsdk/lib/libvssdk.a ../../vscsdsdk/lib/libipsdk.a ../../adjustsdk/lib/LLiPmDRP215.a $(LIBPATH) $(LIB) $(LIBA) $(RPATH)

.cpp.o:
	$(CC) $(OPT) $(DEF) -c $< $(INC) 

dep:
	$(CC) -MM -MG $(SRC) $(INC) >makefile.depend

clean:
	rm -f *.o *.obj *.so
	rm -f *~ *.~*

#-----------------------
-include makefile.depend

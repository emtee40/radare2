include ../../config.mk
include ../../../mk/platform.mk

ifeq ($(WITHPIC),1)
CFLAGS+=-I../../include -I../arch/ -I../arch/include -Wall ${PIC_CFLAGS} ${LDFLAGS_LIB}
CFLAGS+=-D__UNIX__

all: ${ALL_TARGETS}

ALL_TARGETS=
ESIL_PLUGINS=dummy.mk
include $(ESIL_PLUGINS)

clean:
	-rm -f *.so *.o ${STATIC_OBJ}

mrproper: clean
	-rm -f *.d

.PHONY: all clean mrproper
else
all clean mrproper:

.PHONY: all clean mrproper
endif

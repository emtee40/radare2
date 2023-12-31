OBJ_TRICORE=anal_tricore.o
OBJ_TRICORE+=../../asm/arch/tricore/gnu/tricore-dis.o
OBJ_TRICORE+=../../asm/arch/tricore/gnu/tricore-opc.o
OBJ_TRICORE+=../../asm/arch/tricore/gnu/cpu-tricore.o

STATIC_OBJ+=${OBJ_TRICORE}
TARGET_TRICORE=anal_tricore.${EXT_SO}

ALL_TARGETS+=${TARGET_TRICORE}

${TARGET_TRICORE}: ${OBJ_TRICORE}
	${CC} $(call libname,anal_tricore) ${LDFLAGS} ${CFLAGS} \
		-o $(TARGET_TRICORE) $(OBJ_TRICORE)

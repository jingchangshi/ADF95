# F90 = ifort
F90 = gfortran
F90FLAGS = #-O
LDFLAGS  = #-O

ADF95_SRC = mod_adf95.f90
ADF95_OBJ = mod_adf95.o

PROG1 = verify_out
SRCS1 = verify_out.f90

PROG2 = multivar
SRCS2 = multivar.f90

all: $(ADF95_OBJ) $(PROG1) $(PROG2)

$(ADF95_OBJ): $(ADF95_SRC)
	$(F90) $(LDFLAGS) -c $(ADF95_SRC)

$(PROG1): $(SRCS1) $(ADF95_OBJ)
	$(F90) $(LDFLAGS) -o ${PROG1} $(SRCS1) $(ADF95_OBJ)

$(PROG2): $(SRCS2) $(ADF95_OBJ)
	$(F90) $(LDFLAGS) -o ${PROG2} $(SRCS2) $(ADF95_OBJ)

clean:
	rm -f $(PROG1) $(PROG2) *.mod *.o


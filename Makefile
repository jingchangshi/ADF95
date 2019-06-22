PROG =	verify_out

SRCS =	verify_out.f90 mod_adf95.f90

OBJS =	verify_out.o mod_adf95.o

F90 = ifort
F90FLAGS = #-O
LDFLAGS  = #-O

all: $(PROG)

$(PROG): $(OBJS)
	$(F90) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

clean:
	rm -f $(PROG) $(OBJS) *.mod

.SUFFIXES: $(SUFFIXES) .f90

.f90.o:
	$(F90) $(F90FLAGS) -c $<

verify_out.o: mod_adf95.o

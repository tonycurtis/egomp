FC             = gfortran
FFLAGS         = -cpp -Ofast -mcpu=a64fx -fopenmp
LD             = $(FC)
LDFLAGS        = $(FFLAGS)

-include make.$(comp)

SRCS = m_config.f90 \
	m_fields.f90 \
	m_io.f90 \
	m_parametrizations.f90 \
	m_physics.f90 \
	m_timing.f90 \
	m_setup.f90
SRCS += main.o

OBJS = $(SRCS:.f90=.o)
MODS = $(SRCS:.f90=.mod)

a.out:	$(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

%.o: %.f90
	$(FC) $(FFLAGS) -c -o $@ $^

.PHONY: tidy clean

tidy:
	rm -f $(OBJS)
	rm -f $(MODS)

clean:	tidy
	rm -f a.out

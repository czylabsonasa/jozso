OD=obj
SD=src
FC=gfortran

WR=-Wextra -Wno-conversion -fbounds-check

CF=$(WR) -J$(OD) -I$(SD)
LF=$(WR) -J$(OD)

all: default
default: jozso

jozso: $(SD)/jozso.f90
	$(FC) $(LF) $(SD)/jozso.f90 -o jozso

clean:
	rm -f $(OD)/*.o $(OD)/*.mod  jozso

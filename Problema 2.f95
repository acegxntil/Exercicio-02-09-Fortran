program graficodefuncao

real*4 x, y, xinicial, xfinal, dx

integer i 
integer, parameter :: passo=50

xinicial = -6.28
xfinal = 6.28
dx = (xfinal-xinicial)/passo

do i = 1, passo+1

x = xinicial + (i-1)*dx 
y = sin (x)
y = x**2.0 + 1.0

open (1,file = "grafico.dat", status = "unknown")

write (1,*), x, y
print*, x, y

end do 
end program 
SUBROUTINE Simpson (F, a, b, eps, Int, R)

IMPLICIT NONE
REAL*8                 :: a, b, eps, Int, R
REAL*8, EXTERNAL       :: F

INTEGER*4              :: i, N
REAL*8                 :: h !step

N = 1000
h = (b-a)/N

Int = 0.0D0
DO i = 1, N
   Int = Int + (F(a+(i-1)*h) + 4.0D0*F(a+(i-0.5D0)*h) + F(a+(i)*h))
END DO
Int = Int*h/6.0D0

R = h**5 !? Figure out how to calculate error


END SUBROUTINE Simpson
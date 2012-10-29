SUBROUTINE SimpsonC (F, a, b, eps, Int, R)

IMPLICIT NONE
REAL*8                 :: a, b, eps, Int, R
REAL*8, EXTERNAL       :: F

INTEGER*4              :: i, N
REAL*8                 :: h

N = 1000
h = (b-a)/N

Int = F(a) + F(b)
DO i = 2, N, 2
   Int = Int + 4.0D0*F(a+(i-1)*h)
END DO
DO i = 3, N, 2
   Int = Int + 2.0D0*F(a+(i-1)*h)
END DO
Int = Int*h/3.0D0

R = h**5 !? Figure out how to calculate error


END SUBROUTINE SimpsonC
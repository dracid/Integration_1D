SUBROUTINE Trapezoid (F, a, b, eps, Int, R)

IMPLICIT NONE
REAL*8, INTENT(IN)     :: a, b, eps
REAL*8, INTENT(OUT)    :: Int, R
REAL*8, EXTERNAL       :: F

INTEGER*4              :: i, N
REAL*8                 :: h

N = 1000
h = (b-a)/N

Int = 0.0D0
DO i = 1, N
   Int = Int + (F(a+(i-1)*h) + F(a+(i)*h))*h/2.0D0
END DO

R = h**3 !? Figure out how to calculate error

END SUBROUTINE Trapezoid
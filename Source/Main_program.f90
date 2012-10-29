PROGRAM Integration_1D

IMPLICIT NONE 
REAL*8              :: tStart, tEnd
REAL*8              :: a, b, eps
REAL*8, EXTERNAL    :: F1, F2, F3
REAL*8              :: I1, R1, I2, R2, I3, R3

a = 1.0D0
b = 5.0D2

WRITE(*, '(A)') '----------------------------------'

CALL CPU_TIME(tStart)
CALL Trapezoid(F1, a, b, eps, I1, R1)
CALL CPU_TIME(tEnd)
WRITE(*, *) 'Time taken for F1, Trapezoid: ', tEnd - tStart, ' sec'

CALL CPU_TIME(tStart)
CALL Simpson  (F1, a, b, eps, I2, R2)
CALL CPU_TIME(tEnd)
WRITE(*, *) 'Time taken for F1, Simpson: ', tEnd - tStart, ' sec'

CALL CPU_TIME(tStart)
CALL SimpsonC (F1, a, b, eps, I3, R3)
CALL CPU_TIME(tEnd)
WRITE(*, *) 'Time taken for F1, SimpsonC: ', tEnd - tStart, ' sec'

WRITE(*, *) I1
WRITE(*, *) I2
WRITE(*, *) I3
WRITE(*, '(A)') '----------------------------------'

CALL CPU_TIME(tStart)
CALL Trapezoid(F2, a, b, eps, I1, R1)
CALL CPU_TIME(tEnd)
WRITE(*, *) 'Time taken for F2, Trapezoid: ', tEnd - tStart, ' sec'

CALL CPU_TIME(tStart)
CALL Simpson  (F2, a, b, eps, I2, R2)
CALL CPU_TIME(tEnd)
WRITE(*, *) 'Time taken for F2, Simpson: ', tEnd - tStart, ' sec'

CALL CPU_TIME(tStart)
CALL SimpsonC (F2, a, b, eps, I3, R3)
CALL CPU_TIME(tEnd)
WRITE(*, *) 'Time taken for F2, SimpsonC: ', tEnd - tStart, ' sec'

WRITE(*, *) I1
WRITE(*, *) I2
WRITE(*, *) I3
WRITE(*, '(A)') '----------------------------------'
pause

END PROGRAM Integration_1D
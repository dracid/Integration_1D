!====================================================
FUNCTION F1(x) RESULT (res)

IMPLICIT NONE
REAL*8      :: x, res

res = (-3.0D0*x**2 + 5.0D0*x**4)/(DLOG(1.0D0)+x**2)
END FUNCTION F1
!====================================================
FUNCTION F2(x) RESULT (res)

IMPLICIT NONE
REAL*8      :: x, res, omega
omega = 100.0D6  *2.0D0*DACOS(-1.0D0) ! DACOS(-1.0D0) meaning PI
res = 2.0D0*x**3+ DCOS(omega*x)
END FUNCTION F2
!====================================================
FUNCTION F3(x) RESULT (res)

IMPLICIT NONE
REAL*8      :: x, res

res = 2.0D0*x**3 + 4.0D0*x**2
END FUNCTION F3
!====================================================
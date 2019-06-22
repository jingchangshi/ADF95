program verify_out

  use mod_adf95
  implicit none
  type(ADF95_dpr), dimension(1:2) :: f,  x
  real(dpr)      , dimension(1:2) :: fp, xp

  xp = (/1.0,5.0/)
  call ADF95_independent((/1,2/),x,xp)
  
  f  = sin(x**2)
  fp = 2.0_dpr*xp*cos(xp**2)

  write(*,'(A,2(ES25.15))') "x array =", ADF95_value(x)
  write(*,'(A,2(ES25.15))') "f array =", ADF95_value(f)
  write(*,*) "***ADF95:"
  write(*,'(A,2(ES25.15))') "df/dx1  =", ADF95_deriv(f,1)
  write(*,'(A,2(ES25.15))') "df/dx2  =", ADF95_deriv(f,2)
  write(*,*) "***Analytic:"
  write(*,'(A,2(ES25.15))') "df/dx1  =", fp(1)  , 0.0_dpr
  write(*,'(A,2(ES25.15))') "df/dx2  =", 0.0_dpr, fp(2)

end program verify_out

program original

  use mod_adf95

  implicit none

  integer, parameter :: n=3
  type(ADF95_dpr), dimension(1:n*n) :: fv, xv
  integer :: i

  call ADF95_independent( [(i,i=1,n*n)], xv(1:n*n), real([(i,i=1,n*n)]) )

  fv(1:n*n) = xv(1:n*n) * xv(n*n:1:-1)

  write(*,*) ADF95_value(fv)
  write(*,*) ADF95_deriv(fv,1)
  write(*,*) ADF95_deriv(fv,2)
  write(*,*) ADF95_deriv(fv,3)

end program original


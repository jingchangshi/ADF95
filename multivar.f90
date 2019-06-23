program original

  use mod_adf95

  implicit none

  integer, parameter :: n=2
  type(ADF95_dpr), dimension(1:n*n) :: fv, xv
  type(ADF95_dpr), dimension(1:n,1:n) :: fv2, xv2
  integer :: i

continue

  call ADF95_independent( [(i,i=1,n*n)], xv(1:n*n), real([(i,i=1,n*n)]) )

  fv(1:n*n) = xv(1:n*n) * xv(n*n:1:-1)

  write(*,*) ADF95_value(fv)
  write(*,*) ADF95_deriv(fv,1)
  write(*,*) ADF95_deriv(fv,n+1)

  write(*,*) "==="

  call ADF95_independent( reshape( [(i,i=1,n*n)], [n,n] ), xv2(1:n,1:n), &
    real( reshape( [(i,i=1,n*n)], [n,n] ) ) )

  fv2(1:n,1:n) = xv2(1:n,1:n) * xv2(n:1:-1,n:1:-1)

  write(*,*) ADF95_value(fv2)
  write(*,*) ADF95_deriv(fv2,1)
  write(*,*) ADF95_deriv(fv2,n+1)

end program original


program main 
  implicit none 
  ! Forward Difference Approximation
  real :: fx, h, f1x, fxh, f
  integer :: i 
  f = 3.0 
  fx = f**2
  h = 0.1 
  
  call compute(fx, h, f1x, fxh, f, i)
  
  contains

  subroutine compute(fx, h, f1x, fxh, f, i)
      real, intent(in) :: h
      real, intent(inout) :: f, fx 
      real, intent(out) :: fxh, f1x 
      integer :: i 
      do i = 1, 5 
          fxh = (f + h)**2 
          f1x = ((fxh - fx) / h)
          print*,"Result: ", f1x
          f = f + h
          fx = f**2
      end do 
  end subroutine compute
  
end program main
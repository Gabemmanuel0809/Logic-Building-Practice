program main 
 ! Radioactive Decay
 implicit none 
 real :: Nt, N0, A, t 
 N0 = 5.12
 A = 0.03
 t = 10.22 
 
 call compute(Nt, N0, A, t)
 
 contains
 
 subroutine compute(Nt, N0, A, t)
   real, intent(in) :: N0, A, t 
   real, intent(out) :: Nt 
   Nt = N0 * exp(-(A * t))
   print*,"Operation Result: ", Nt
 end subroutine compute 

end program main
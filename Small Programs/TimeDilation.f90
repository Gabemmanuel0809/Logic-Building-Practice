program main 
  implicit none
  real :: time, timeInt, lightspeed, speed
  ! time = Regular Earth Time 
  ! timeInt = The Time when you are travelling at 99% of speed of light 
  lightspeed = 299792458 
  speed = lightspeed * 0.99  ! 99% of Speed of light
  
  call RegularTime(time, timeInt, speed, lightspeed)
  call DilatedTime(timeInt, time, speed, lightspeed)
  
  contains 
  
  subroutine RegularTime(time, timeInt, speed, lightspeed)
     real,intent(out) :: time, timeInt
     real,intent(in) :: lightspeed, speed
     timeInt = 10 
     time = timeInt / sqrt(1 - (speed**2 / lightspeed**2))
     print*,"Regular Earth Time: ", time 
  end subroutine RegularTime
  
  subroutine DilatedTime(timeInt, time, speed, lightspeed)
      real, intent(inout) :: timeInt
      real, intent(in) ::  time, lightspeed, speed
      timeInt = time  * sqrt(1 - (speed**2 / lightspeed**2))
      print*,"Dilated Time: ", timeInt 
  end subroutine DilatedTime
  
end program main
program main 
 implicit none 
 !Matrix Multiplication
 integer, dimension(2, 2) :: A, B, C 
 integer :: i, j, k 
 
 A = reshape([1, 3, 5, 7], [2, 2])
 B = reshape([2, 4, 6, 8], [2, 2])
 C = 0 
 
 ! Manual Matrix multiplicatipn
 do i = 1, 2 
      do j = 1, 2 
           do k = 1, 2 
                C(i, j) = C(i, j) + A(i, k) * B(k, j)
           end do 
      end do
 end do 
 ! C = matmul(A, B) works too
 
 print*,"Resultant Matrix: ", C 
 
end program main
program minimal
  implicit none

  integer, allocatable :: i(:)

  allocate(i(3))
  print *, "i:", i

  if (sum(i) > 0) then
    print *, "i is greater than 0"
  else
    print *, "i is less than 0"
  endif
end program minimal

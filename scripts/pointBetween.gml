a = argument0
b = argument1
c = argument2

   crossproduct = (c[1] - a[1]) * (b[0] - a[0]) - (c[0] - a[0]) * (b[1] - a[1])
   
   if( crossproduct > 0 )return false
    dotproduct = (c[0] - a[0]) * (b[0] - a[0]) + (c[1] - a[1])*(b[1] - a[1])
    if( dotproduct < 0 )return false 
     squaredlengthba = (b[0] - a[0])*(b[0] - a[0]) + (b[1] - a[1])*(b[1] - a[1])
     if( dotproduct > squaredlengthba )return false
     
     return true

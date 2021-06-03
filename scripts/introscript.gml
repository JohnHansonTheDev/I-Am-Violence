
    background_vspeed[0]=10;
    
    background_x[1]=irandom(1);
  background_vspeed[1]--;
 
  
  if( background_y[2] < 392 ){
   background_y[2]+=10;
   }
  
    if( background_y[3] > -112 ){
   background_y[3]-=10;
   }
 
   if( current_time > 16000){
        background_vspeed[2] = 400;
         background_vspeed[3]=-200
   }
 show_debug_message( background_y[3]);
 
 show_debug_message(current_time);

playertoo = argument0;

audio_stop_all();


 
     for (i = 0; i < instance_number(blur); i += 1){
         inst = instance_find(blur,i);
        with( inst ){
            instance_destroy();
        }     
    } 
 
    for (i = 0; i < instance_number(collidable); i += 1){
         inst = instance_find(collidable,i);
        with( inst ){
            instance_destroy();
        }     
    }

          for (i = 0; i < instance_number(soldier); i += 1){
         inst = instance_find(soldier,i);
        
        with( inst ){
            instance_destroy();
        }     
    }
     for (i = 0; i < instance_number(projectile); i += 1){
         inst = instance_find(projectile,i);
        with( inst ){
            instance_destroy();
        }     
    }
     
     for (i = 0; i < instance_number(lightmap); i += 1){
         inst = instance_find(lightmap,i);
        with( inst ){
            instance_destroy();
        }     
    }
     for (i = 0; i < instance_number(flashlightObject); i += 1){
         inst = instance_find(flashlightObject,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
     for (i = 0; i < instance_number(mainObject); i += 1){
         inst = instance_find(mainObject,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
      for (i = 0; i < instance_number(mainObject2); i += 1){
         inst = instance_find(mainObject2,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    
    
      for (i = 0; i < instance_number(scanlinesEffect); i += 1){
         inst = instance_find(scanlinesEffect,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(cameraShake); i += 1){
         inst = instance_find(cameraShake,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(ghost); i += 1){
         inst = instance_find(ghost,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(popupTextBlock); i += 1){
         inst = instance_find(popupTextBlock,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(clckableTextBox); i += 1){
         inst = instance_find(clckableTextBox,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(vdoor); i += 1){
         inst = instance_find(vdoor,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(blood); i += 1){
         inst = instance_find(blood,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(debris); i += 1){
         inst = instance_find(debris,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(rippleEffect); i += 1){
         inst = instance_find(rippleEffect,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(alarmBlock); i += 1){
         inst = instance_find(alarmBlock,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(dialog); i += 1){
         inst = instance_find(dialog,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(projectile); i += 1){
         inst = instance_find(projectile,i);
        with( inst ){
            instance_destroy();
        }     
    }
     for (i = 0; i < instance_number(gibs); i += 1){
         inst = instance_find(gibs,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    for (i = 0; i < instance_number(ghost); i += 1){
         inst = instance_find(ghost,i);
        with( inst ){
            instance_destroy();
        }     
    }
    
    if( playertoo == true ){
    
     for (i = 0; i < instance_number(mainObject3); i += 1){
         inst = instance_find(mainObject3,i);
        with( inst ){
            instance_destroy();
        }     
    }
    }
    
    
      draw_texture_flush()
   
    
      
      
     

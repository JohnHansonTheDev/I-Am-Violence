x1=mainObject3.x;
y1=mainObject3.y
x2=0
y2=0

dir[0] = mouse_x - x1;
dir[1] = mouse_y - y1;
    dist = point_distance(dir[0], dir[1], 0, 0 );
    tmp[0] = 0;
    tmp[1] = 0;
    if( dist!= 0){
         tmp[0] = dir[0]/dist;
         tmp[1] = dir[1]/dist;
    }

    x2 = x1 + (tmp[0]*16);    
    y2 = y1 + (tmp[1]*16);

ins = collision_line_first(x1,y1,x2,y2,collidable,true, true)

if( ins ){
    s  =audio_play_sound(ricochet, 1, false);
    audio_sound_gain( s, 0.5, 0);
    effect_create_below(ef_smoke, x1, y1, choose(0, 1, 2), c_black);
  

        var db = instance_create( x1, y1, debris);
        db.size = irandom(20)/20;
        
        //var pd = point_direction(x,y, mainObject3.x,mainObject3.y);
        
        db.pdx = -tmp[0];
        db.pdy = -tmp[1];
        db.sp = irandom(10);
        instance_create( x1,y1,cameraShake)
        
        with( ins ){
          
            
            tile_layer_delete_at( 2, x,y );
            tile_layer_delete_at( 3, x-4,y );
            tile_layer_delete_at( 3, x-1,y -1);
            tile_layer_delete_at( 3, x-4,y +4);

            instance_destroy();
        }
}


inst = collision_line_first(x1,y1,x2,y2,soldier,true, true)

if( inst ){
     if( inst.state!="dead"){
        inst.state="dead"
        
     effect_create_below(ef_smoke, x, y, choose(0, 1, 2), c_black);
     effect_create_below(ef_explosion, x + tmp[0]*5, y + tmp[1]*5, 0, c_red);
    projectileSpeed=0;
   
        //bottleneck
        for( i = 0; i < 30; i++){
            var db = instance_create( x, y, gibs);
            db.size = irandom(10)/10;
            
            //var pd = point_direction(x,y, mainObject3.x,mainObject3.y);
            
            db.pdx = tmp[0]+irandom(10)/10;
            db.pdy = tmp[1]+irandom(10)/10;
            db.sp = irandom(10);
        }
    }    
    
        instance_create( x1,y1,cameraShake)
        
}


inst = collision_line_first(x1,y1,x2,y2,soldier2,true, true)

if( inst ){
     if( inst.state!="dead"){
        inst.state="dead"
        
     effect_create_below(ef_smoke, x, y, choose(0, 1, 2), c_black);
     effect_create_below(ef_explosion, x + tmp[0]*5, y + tmp[1]*5, 0, c_red);
    projectileSpeed=0;
   
        //bottleneck
        for( i = 0; i < 30; i++){
            var db = instance_create( x, y, gibs);
            db.size = irandom(10)/10;
            
            //var pd = point_direction(x,y, mainObject3.x,mainObject3.y);
            
            db.pdx = tmp[0]+irandom(10)/10;
            db.pdy = tmp[1]+irandom(10)/10;
            db.sp = irandom(10);
        }
    }    
    
        instance_create( x1,y1,cameraShake)
        
}

inst = collision_line_first(x1,y1,x2,y2,fatman,true, true)

if( inst ){
     if( inst.state!="dead"){
        inst.state="dead"
        
     effect_create_below(ef_smoke, x, y, choose(0, 1, 2), c_black);
     effect_create_below(ef_explosion, x + tmp[0]*5, y + tmp[1]*5, 0, c_red);
    projectileSpeed=0;
   
        //bottleneck
        for( i = 0; i < 60; i++){
            var db = instance_create( x, y, gibs);
            db.size = irandom(10)/10;
            
            //var pd = point_direction(x,y, mainObject3.x,mainObject3.y);
            
            db.pdx = tmp[0]+irandom(10)/10;
            db.pdy = tmp[1]+irandom(10)/10;
            db.sp = irandom(10);
        }
    }    
    inst.diedfrom=2;
     fat=   instance_create( x1,y1,cameraShake)
     fat.diedfrom=2;
}

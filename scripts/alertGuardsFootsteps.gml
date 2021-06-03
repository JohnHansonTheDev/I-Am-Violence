


for (i = 0; i < instance_number(soldier); i += 1){
    enemy[i] = instance_find(soldier,i);
    x1 = enemy[i].x
    y1 = enemy[i].y
    if( enemy[i].state!="dead"){
        d = distance_between_points( x1, y1, mainObject3.x, mainObject3.y); 
        
        if( d < 100 ){
            
                enemy[i].image_angle   = point_direction( x1, y1, mainObject3.x, mainObject3.y )
                //enemy[i].image_angle  = enemy[i].direction
                if( enemy[i].state == "returning")
                enemy[i].state = "find";
                
        }
    }
}


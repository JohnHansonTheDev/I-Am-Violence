
for (i = 0; i < instance_number(soldier); i += 1){
    enemy[i] = instance_find(soldier,i);
    if( enemy[i].state!="dead"){
        enemy[i].state="find";
        enemy[i].mask_index=colSpriteSmall
        enemy[i].reaction = 0;
        enemy[i].lastTimeSeen = 0;
    
    }
}
 

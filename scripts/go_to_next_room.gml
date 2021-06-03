//clearResources( true);
audio_stop_all();
 draw_texture_flush()    

roomNumber++;

if( roomNumber==0)
room_goto(room0 );
if( roomNumber==1)
room_goto( room1 );
if( roomNumber==2)
room_goto(room2 );
if( roomNumber==3)
room_goto(room3 );
if( roomNumber==4)
room_goto(room4 );
if( roomNumber==5)
room_goto(room5 );
if( roomNumber==6)
room_goto(room6 );
if( roomNumber==7)
room_goto(room7 );
if( roomNumber==8)
room_goto(room8 );
if( roomNumber==9)
room_goto(room9 );
if( roomNumber==10)
room_goto(room10 );

show_debug_message("current room:" + string(roomNumber));

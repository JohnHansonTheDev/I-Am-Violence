x = 0;
y = 0;
first_name = "John";
last_name = "Smith";

draw_text(x,y,first_name+last_name);                //this would draw  JohnSmith
draw_text(x,y,first_name+" "+last_name);            //this would draw  John Smith
draw_text(x,y,"NAME: "+first_name+" "+last_name);   //this would draw  NAME: John Smith
draw_text(x,y,first_name+"#"+last_name);            /*


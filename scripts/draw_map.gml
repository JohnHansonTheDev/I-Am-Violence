//draw map
scale = argument0
px = view_xview[0] + 128;
py = view_yview[0];
for (i = 0; i < instance_number(collidable); i += 1) {
    col = instance_find(collidable, i);
    draw_rectangle(px + (col.x / scale), py + (col.y / scale), px + (col.x + 16) / scale, py + (col.y + 16) / scale, false);
}
draw_set_color(c_green);
for (i = 0; i < instance_number(soldier); i += 1) {
    col = instance_find(soldier, i);
    draw_rectangle(px + (col.x / scale), py + (col.y / scale), px + (col.x + 16) / scale, py + (col.y + 16) / scale, false);
}

draw_set_color(c_white);
draw_rectangle(px + (mainObject3.x / scale), py + (mainObject3.y / scale), px + (mainObject3.x + 16) / scale, py + (mainObject3.y + 16) / scale, true);
draw_set_color(c_red);

draw_set_blend_mode_ext(bm_dest_color,bm_one)
rot = argument0

draw_set_alpha(0.1);



//draw_clear(c_black);
colPurple = make_colour_rgb(94, 28, 79);
colBlue = make_colour_rgb(60, 103, 42);
d3d_start();
draw_set_color(colPurple);
d3d_set_perspective(true);
d3d_set_zwriteenable(true);
//draw_clear(c_black); 
d3d_set_projection(
    0, view_hview[0], 500,
    0, view_hview[0], 10,
    0, 1, 0);
d3d_set_projection_perspective(0, 0, room_width, room_height, 0);
d3d_set_depth(-999);
//show_debug_message(zrot)
d3d_transform_set_rotation_x(rot/3000)
//d3d_transform_add_translation( 0, 0, rot/1000);


d3d_primitive_begin(pr_linelist);

if (zrot > view_wview[0])
    zrot = -view_wview[0];
else
    zrot++;


lineStep = 32+rot/1000;
zdepth = 0; //*current_second;
alph = 1;

for (i = 0; i < view_wview[0]; i += lineStep) {
    zdepth += lineStep;

    for (j = zrot - view_wview[0]; j < view_wview[0] * 2; j += lineStep) {
        //calculate color based on depth
        r = 94 * (j / (view_wview[0]));
        col = make_colour_rgb(r, 28, 79);

        //left side
        d3d_vertex_colour(0, i, j, col, alph);
        d3d_vertex_colour(0, i + lineStep, j, col, alph);

        d3d_vertex_colour(0, i, j, col, alph);
        d3d_vertex_colour(0, i, j + lineStep, col, alph);

        //riight side

        d3d_vertex_colour(room_width, i, j, col, alph);
        d3d_vertex_colour(room_width, i + lineStep, j, col, alph);

        d3d_vertex_colour(room_width, i, j, col, alph);
        d3d_vertex_colour(room_width, i, j + lineStep, col, alph);

        //down side
        d3d_vertex_colour(i, 0, j, col, alph);
        d3d_vertex_colour(i + lineStep, 0, j, col, alph);

        d3d_vertex_colour(i, 0, j, col, alph);
        d3d_vertex_colour(i, 0, j + lineStep, col, alph);

        //upper side
        d3d_vertex_colour(i, room_height, j, col, alph);
        d3d_vertex_colour(i + lineStep, room_height, j, col, alph);

        d3d_vertex_colour(i, room_height, j, col, alph);
        d3d_vertex_colour(i, room_height, j + lineStep, col, alph);


    }
}



d3d_transform_set_rotation_x(180)
d3d_transform_add_translation(256, 512, -2 * zrot);
if (zrot == view_wview[0]) {

}
zrot += 4
    //draw_sprite(sprite31,0, 0, 0);
draw_set_alpha(1)
if (0)
    for (i = 0; i < 10; i++) {
        d3d_transform_set_identity()
        d3d_transform_set_rotation_x(180)
        d3d_transform_add_translation(256, 512 + i * 4, (-2 * (zrot + i * 12)));
        //draw_set_alpha(irandom(10)/10)
        draw_set_color(make_colour_rgb(60 * (i) / 10, 103 * (i) / 10, 42 * (i) / 10));
        //draw_text( 122,122, + string( i ) )
        draw_text_transformed_colour(122 - 5 + irandom(i) / 10, 122 - 5 + irandom(i) / 10, "MASONS GAMES PRESENTS ",
            1, 1, 0, c_red, c_red, c_yellow, c_yellow, i / 10);

    }

d3d_primitive_end();
/*
     draw_set_blend_mode(bm_subtract);
    
    for( i = 0; i < 10; i++){
     draw_set_colour( make_colour_rgb(60*irandom(i)/10, 103*irandom(i)/10, 42*irandom(i)/10 ))
    d3d_transform_set_rotation_z(zrot)
    //d3d_transform_add_translation( 256+i*10, 512+i*10, -2*zrot);
    d3d_primitive_begin(pr_trianglelist);
    d3d_vertex(100,100,0);
    d3d_vertex(100,200,0);
    d3d_vertex(150,150,200);
    d3d_vertex(100,200,0);
    d3d_vertex(200,200,0);
    d3d_vertex(150,150,200);
    d3d_vertex(200,200,0);
    d3d_vertex(100,100,0);
    d3d_vertex(150,150,200);
    d3d_vertex(100,100,0);
    d3d_vertex(100,200,0);
    d3d_vertex(200,200,0);
  d3d_primitive_end();
  }
  */
d3d_transform_set_identity()

d3d_end();
draw_set_blend_mode(bm_normal);

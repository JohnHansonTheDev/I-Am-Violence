//vertex;

attribute vec3 in_Position;
attribute vec2 in_TextureCoord;
attribute vec4 in_Colour;  

varying vec2 v_texcoord;
varying vec4 v_vColour;
varying vec3 in_position;


void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    v_texcoord = in_TextureCoord;
    v_vColour = in_Colour;
    in_position = in_Position;
}


//######################_==_YOYO_SHADER_MARKER_==_######################@~

//fragment

varying vec2 v_texcoord;
varying vec3 in_position;

uniform float time;
uniform vec2 mouse_pos;
uniform vec2 resolution;
uniform float wave_amount;
uniform float wave_distortion;
uniform float wave_speed;
varying vec4 v_vColour;
void main()
{ 
    vec2 uv = v_texcoord;
    uv.x *= (resolution.x/resolution.y);
    float centre_x = (mouse_pos.x / resolution.x) * (resolution.x/resolution.y);
    float centre_y = mouse_pos.y / resolution.y;
  
    vec2 dir = v_texcoord - vec2(0.5);
    float dist = distance(uv, vec2(centre_x,centre_y));
    //vec2 offset = dir * (sin(dist * wave_amount - time * wave_speed)) / wave_distortion;
    vec2 offset = dir * (sin(dist * wave_amount - time * wave_speed)) / wave_distortion;
    offset.y=0.0;
    offset.x*=10.0;
    
     gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_texcoord +offset);
    
}

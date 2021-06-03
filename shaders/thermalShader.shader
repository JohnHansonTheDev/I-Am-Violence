//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 base_colour = texture2D(gm_BaseTexture, v_vTexcoord);
    
    vec3 colours[3];
    colours[0] = vec3(0.0,0.0,1.0);
    colours[1] = vec3(1.0,1.0,0.0);
    colours[2] = vec3(1.0,0.0,0.0);
    
    float lum = (base_colour.r+base_colour.g+base_colour.b)/3.0;
    
    int ix=1;
    if (lum < 0.5) {ix = 0;}
    
    vec3 thermal = mix(colours[ix],colours[ix+1],(lum-float(ix)*0.5)/0.5);
    
   gl_FragColor = vec4(thermal,base_colour.a);
}


 


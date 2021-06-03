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
    vec4 tmpCol = vec4( in_Colour.x, in_Colour.y, in_Colour.z, in_Colour.a);
    vec2 pos = vec2( in_TextureCoord.x, in_TextureCoord.y );
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    float vl = in_Position.y;   
    vl=240.0 - vl;
    if( vl < 0.0 ){vl = -vl; };
    vl=vl/240.0;
    tmpCol.a*=vl;
    
    v_vColour = tmpCol;
    v_vTexcoord = pos;
    
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~/*
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{

    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord)*v_vColour;
    vec3 lum = vec3(0.299, 0.587, 0.114);
    float gray = dot(col.rgb, lum);
    gl_FragColor = vec4(gray, gray, gray, col.a);
    gl_FragColor.rgb *= vec3(1.15,1.1,0.8);
}
*/
//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord)*v_vColour;
    vec3 lum = vec3(0.299, 0.587, 0.114);
    float gray = dot(col.rgb, lum);
    gl_FragColor = vec4(gray, gray, gray, col.a);
    gl_FragColor.rgb *= vec3(1.15,1.1,0.0);
}


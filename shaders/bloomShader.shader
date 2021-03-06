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
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    float da = abs( gl_FragColor.r - gl_FragColor.b );
    float db = abs( gl_FragColor.b - gl_FragColor.g );
    if( abs( da - db ) < 10.0 ){
         gl_FragColor.r = 255.0;
          gl_FragColor.g = 0.0;
           gl_FragColor.b = 0.0;
        gl_FragColor.a=255.0;
    }else{
    gl_FragColor.r = 0.0;
          gl_FragColor.g = 0.0;
           gl_FragColor.b = 0.0;
        gl_FragColor.a=0.0;
    }
}


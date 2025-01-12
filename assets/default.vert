#version 430

layout( location = 0 ) in vec3 iPosition; 
layout( location = 0 ) uniform mat4 uProjCameraWorld;
layout( location = 1 ) in vec3 iColor;
layout( location = 2 ) in vec3 iNormal;
layout( location = 1 ) uniform mat3 uNormalMatrix;
layout( location = 3 ) in vec2 iTexCoord;
out vec3 v2fColor;
out vec3 v2fNormal;
out vec2 v2fTexCoord;
void main()
{
	v2fColor = iColor;
	v2fTexCoord = iTexCoord;
	gl_Position = uProjCameraWorld * vec4( iPosition, 1.0 );
	v2fNormal = normalize(uNormalMatrix * iNormal); 
}


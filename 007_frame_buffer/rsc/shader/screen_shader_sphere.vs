#version 330

layout(location = 0) in vec3 iPosition;
layout(location = 1) in vec2 iTexCoords;

out vec2 TexCoords;

#define PI 3.141592653589793

void main()
{
    TexCoords = iTexCoords;
    float x = sin(iPosition.x*PI)*cos(iPosition.y*PI/2);
    float y = sin(iPosition.y*PI/2);
    float z = -cos(iPosition.x*PI)*cos(iPosition.y*PI/2);
    gl_Position = vec4(x, y , z, 1.0);
}

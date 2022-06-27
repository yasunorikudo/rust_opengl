#version 330

layout(location = 0) in vec3 iPosition;
layout(location = 1) in vec2 iTexCoords;

out vec2 TexCoords;

void main()
{
    TexCoords = iTexCoords;
    gl_Position = vec4(iPosition, 1.0);
}

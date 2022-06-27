#version 330

layout(location = 0) in vec3 iPosition;
layout(location = 1) in vec2 iTexCoords;

out vec2 TexCoords;

void main()
{
    TexCoords = iTexCoords;
    vec3 pos = iPosition;
    pos.x = pos.x * cos(distance(pos.xy, vec2(0, 0))/4);
    pos.y = pos.y * cos(distance(pos.xy, vec2(0, 0))/4);
    gl_Position = vec4(pos, 1.0);
}

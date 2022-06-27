#version 330

in vec2 TexCoords;
out vec4 FragColor;

uniform sampler2D uScreenTexture;

void main()
{
    FragColor = vec4(texture(uScreenTexture, TexCoords).rgb, 1.0);
}

#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoords;
layout (location = 2) in float aLayer;

out vec2 TexCoords;
out float layer;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
	layer = aLayer;
	TexCoords = aTexCoords;
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}
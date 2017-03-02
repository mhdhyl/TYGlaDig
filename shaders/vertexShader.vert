#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;

out vec3 vColor;

uniform mat4 model;

void main()
{
    //gl_Position = projection * view * model * vec4(position, 1.0f);
    //gl_Position = vec4(position, 1.0f);
    gl_Position =  model * vec4(position, 1.0f);
    vColor = color;
}
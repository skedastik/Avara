#version 330 core

in vec4 fragmentColor;

uniform float pseudoAlpha = 1.0;

out vec4 color;

void main() {
    vec4 invColor = vec4(1.0 - fragmentColor.r, 1.0 - fragmentColor.g, 1.0 - fragmentColor.b, 1);
    color = mix(fragmentColor, invColor, pseudoAlpha);
}

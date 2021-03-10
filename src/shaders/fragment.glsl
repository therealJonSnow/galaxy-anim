varying vec3 vColor;
void main() {
    // Circle
        // float strength = distance(gl_PointCoord, vec2(0.5));
        // strength = step(0.5, strength);
        // strength = 1.0 - strength;
    
    // Fade Circle
        // float strength = distance(gl_PointCoord, vec2(0.5));
        // strength *= 0.2;
        // strength = 1.0 - strength;
    
    // Light Point
        float strength = distance(gl_PointCoord, vec2(0.5));
        strength = 1.0 - strength;
        strength = pow(strength, 10.0);

        // Final Color
        vec3 color = mix(vec3(0.0), vColor, strength);


    gl_FragColor = vec4(color, 1.0);
}
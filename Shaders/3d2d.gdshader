shader_type canvas_item;

uniform float speed = 1.0; // rotation speed (radians per second)

void vertex() {
	float radY = TIME * speed;

	float cosY = cos(radY);
	float sinY = sin(radY);

	mat3 finalRot;
	finalRot[0][0] =  cosY;
	finalRot[1][0] =  0.0;
	finalRot[2][0] =  sinY;

	finalRot[0][1] =  0.0;
	finalRot[1][1] =  1.0;
	finalRot[2][1] =  0.0;

	finalRot[0][2] = -sinY;
	finalRot[1][2] =  0.0;
	finalRot[2][2] =  cosY;

	vec3 pos = vec3(VERTEX.xy, 0.0) * finalRot;
	VERTEX = pos.xy;
}

void fragment() {
}

shader_type canvas_item;

uniform float dashLength = 0.1;
uniform float gapLength = 0.05;
uniform vec4 lineColor : source_color = vec4(1.0);

void vertex() {
	VERTEX.x += cos(TIME) * 20.0;
}

void fragment() {
	float pos = UV.x;
	float pattern = dashLength + gapLength;
	float localPos = mod(pos, pattern);

	if (localPos < dashLength) {
		COLOR = lineColor;
	} else {
		COLOR = vec4(0.0, 0.0, 0.0, 0.0);
	}
}

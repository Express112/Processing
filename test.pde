noFill();
bezier(85, 20, 10, 10, 90, 90, 15, 80);
stroke(255, 102, 0);
int steps = 16;
for (int i = 0; i <= steps; i++) {
  float t = i / float(steps);
  float x = bezierPoint(85, 10, 90, 15, t);
  float y = bezierPoint(20, 10, 90, 80, t);
  float tx = bezierTangent(85, 10, 90, 15, t);
  float ty = bezierTangent(20, 10, 90, 80, t);
  float a = atan2(ty, tx);
  a -= HALF_PI;
  line(x, y, cos(a)*8 + x, sin(a)*8 + y);
}

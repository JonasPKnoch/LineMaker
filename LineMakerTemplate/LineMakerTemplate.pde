ArrayList<PVector> mirror(ArrayList<PVector> points) {
  transform(points, 0, 0, 1, -1, 1);
  return points;
}

void transform(ArrayList<PVector> points, float x, float y, float scale, float scaleX, float scaleY) {
  for(PVector el : points) {
    if(el == null) continue;
    
    el.x *= scale*scaleX;
    el.x += x;
    el.y *= scale*scaleY;
    el.y += y;
  }
}

void bezDraw(ArrayList<PVector> bez) {
  beginShape();
  for(int i = 1; i < bez.size()- 2; i+= 3) {
    PVector p1 = bez.get(i);
    PVector p2 = bez.get(i + 1);
    PVector p3 = bez.get(i + 2);
    PVector p4 = bez.get(i + 3);
    vertex(p1.x, p1.y);
    bezierVertex(p2.x, p2.y, p3.x, p3.y, p4.x, p4.y);
  }
  endShape();
}

void bezDrawMany(ArrayList<ArrayList<PVector>> bezes) {
  
  for(ArrayList<PVector> bez : bezes) {
    bezDraw(bez);
  }
}

void bezDrawMany(ArrayList<ArrayList<PVector>> bezes, float x, float y, float scale, float scaleX, float scaleY) {
  for(ArrayList<PVector> bez : bezes) {
    bezDraw(bez, x, y, scale, scaleX, scaleY);
  }
}

void bezDraw(ArrayList<PVector> bez, float x, float y, float scale, float scaleX, float scaleY) {
  transform(bez, x, y, scale, scaleX, scaleY);
  bezDraw(bez);
}

void setup() {
  size(700, 700);
  noFill();
  strokeWeight(4);
  bezDrawMany(test(), 350, 580, 0.9, 700, -700);
}

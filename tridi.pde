PShape fatur;
float pitch = 0;
float yaw = 0;
float roll = 0;
boolean upPressed, downPressed, leftPressed, rightPressed, ltPressed, gtPressed;

void setup() {
  size(2000, 1000, P3D);
  fatur = createShape(GROUP);
  
  // Sisi depan
  PShape front = createShape();
  front.beginShape();
  front.vertex(100, 900, 0);
  front.vertex(100, 400, 0);
  front.vertex(350, 400, 0);
  front.vertex(350, 500, 0);
  front.vertex(200, 500, 0);
  front.vertex(200, 600, 0);
  front.vertex(350, 600, 0);
  front.vertex(350, 700, 0);
  front.vertex(200, 700, 0);
  front.vertex(200, 900, 0);
  front.endShape(CLOSE);
  fatur.addChild(front);
  
  // Sisi belakang
  PShape back = createShape();
  back.beginShape();
  back.vertex(100, 900, 100);
  back.vertex(100, 400, 100);
  back.vertex(350, 400, 100);
  back.vertex(350, 500, 100);
  back.vertex(200, 500, 100);
  back.vertex(200, 600, 100);
  back.vertex(350, 600, 100);
  back.vertex(350, 700, 100);
  back.vertex(200, 700, 100);
  back.vertex(200, 900, 100);
  back.endShape(CLOSE);
  fatur.addChild(back);
  
  // Sisi samping kiri
  PShape left = createShape();
  left.beginShape();
  left.vertex(100, 900, 0);
  left.vertex(100, 900, 100);
  left.vertex(100, 400, 100);
  left.vertex(100, 400, 0);
  left.endShape(CLOSE);
  fatur.addChild(left);
  
  // Sisi atas
  PShape top = createShape();
  top.beginShape();
  top.vertex(100, 400, 0);
  top.vertex(350, 400, 0);
  top.vertex(350, 400, 100);
  top.vertex(100, 400, 100);
  top.endShape(CLOSE);
  fatur.addChild(top);
  
  // Sisi bawah
  PShape bottom = createShape();
  bottom.beginShape();
  bottom.vertex(100, 900, 0);
  bottom.vertex(100, 900, 100);
  bottom.vertex(200, 900, 100);
  bottom.vertex(200, 900, 0);
  bottom.endShape(CLOSE);
  fatur.addChild(bottom);
  
  // Sisi samping kanan
  PShape right = createShape();
  right.beginShape();
  right.vertex(200, 900, 0);
  right.vertex(200, 900, 100);
  right.vertex(200, 700, 100);
  right.vertex(200, 700, 0);
  right.endShape(CLOSE);
  fatur.addChild(right);
  
  PShape rightTop1 = createShape();
  rightTop1.beginShape();
  rightTop1.vertex(200, 700, 0);
  rightTop1.vertex(350, 700, 0);
  rightTop1.vertex(350, 700, 100);
  rightTop1.vertex(200, 700, 100);
  rightTop1.endShape(CLOSE);
  fatur.addChild(rightTop1);
  
  PShape rightBottom = createShape();
  rightBottom.beginShape();
  rightBottom.vertex(350, 700, 0);
  rightBottom.vertex(350, 700, 100);
  rightBottom.vertex(350, 600, 100);
  rightBottom.vertex(350, 600, 0);
  rightBottom.endShape(CLOSE);
  fatur.addChild(rightBottom);
  
  PShape rightBottomBack = createShape();
  rightBottomBack.beginShape();
  rightBottomBack.vertex(200, 600, 0);
  rightBottomBack.vertex(350, 600, 0);
  rightBottomBack.vertex(350, 600, 100);
  rightBottomBack.vertex(200, 600, 100);
  rightBottomBack.endShape(CLOSE);
  fatur.addChild(rightBottomBack);
  
  PShape leftBottomBack = createShape();
  leftBottomBack.beginShape();
  leftBottomBack.vertex(200, 600, 0);
  leftBottomBack.vertex(200, 600, 100);
  leftBottomBack.vertex(200, 500, 100);
  leftBottomBack.vertex(200, 500, 0);
  leftBottomBack.endShape(CLOSE);
  fatur.addChild(leftBottomBack);
  
  PShape leftBottom = createShape();
  leftBottom.beginShape();
  leftBottom.vertex(200, 500, 0);
  leftBottom.vertex(350, 500, 0);
  leftBottom.vertex(350, 500, 100);
  leftBottom.vertex(200, 500, 100);
  leftBottom.endShape();
  fatur.addChild(leftBottom);
  
  PShape rightTopBack = createShape();
  rightTopBack.beginShape();
  rightTopBack.vertex(100, 400, 0);
  rightTopBack.vertex(350, 400, 0);
  rightTopBack.vertex(350, 400, 100);
  rightTopBack.vertex(100, 400, 100);
  rightTopBack.endShape();
  fatur.addChild(rightTopBack);
  
  PShape rightTop2 = createShape();
  rightTop2.beginShape();
  rightTop2.vertex(350, 500, 0);
  rightTop2.vertex(350, 500, 100);
  rightTop2.vertex(350, 400, 100);
  rightTop2.vertex(350, 400, 0);
  rightTop2.endShape();
  fatur.addChild(rightTop2);
  
  PShape frontfatur = createShape();
  frontfatur.beginShape();
  frontfatur.vertex(400, 900, 0);
  frontfatur.vertex(400, 400, 0);
  frontfatur.vertex(650, 400, 0);
  frontfatur.vertex(650, 500, 0);
  frontfatur.vertex(500, 500, 0);
  frontfatur.vertex(500, 600, 0);
  frontfatur.vertex(650, 600, 0);
  frontfatur.vertex(650, 700, 0);
  frontfatur.vertex(500, 700, 0);
  frontfatur.vertex(500, 900, 0);
  frontfatur.endShape(CLOSE);
  fatur.addChild(frontfatur);
  
  // Sisi belakang
  PShape backfatur = createShape();
  backfatur.beginShape();
  backfatur.vertex(400, 900, 100);
  backfatur.vertex(400, 400, 100);
  backfatur.vertex(650, 400, 100);
  backfatur.vertex(650, 500, 100);
  backfatur.vertex(500, 500, 100);
  backfatur.vertex(500, 600, 100);
  backfatur.vertex(650, 600, 100);
  backfatur.vertex(650, 700, 100);
  backfatur.vertex(500, 700, 100);
  backfatur.vertex(500, 900, 100);
  backfatur.endShape(CLOSE);
  fatur.addChild(backfatur);
  
  // Sisi samping kiri
  PShape leftfatur = createShape();
  leftfatur.beginShape();
  leftfatur.vertex(400, 900, 0);
  leftfatur.vertex(400, 900, 100);
  leftfatur.vertex(400, 400, 100);
  leftfatur.vertex(400, 400, 0);
  leftfatur.endShape(CLOSE);
  fatur.addChild(leftfatur);
  
  // Sisi atas
  PShape topfatur = createShape();
  topfatur.beginShape();
  topfatur.vertex(400, 400, 0);
  topfatur.vertex(650, 400, 0);
  topfatur.vertex(650, 400, 100);
  topfatur.vertex(400, 400, 100);
  topfatur.endShape(CLOSE);
  fatur.addChild(topfatur);
  
  // Sisi bawah
  PShape bottomfatur = createShape();
  bottomfatur.beginShape();
  bottomfatur.vertex(400, 900, 0);
  bottomfatur.vertex(400, 900, 100);
  bottomfatur.vertex(500, 900, 100);
  bottomfatur.vertex(500, 900, 0);
  bottomfatur.endShape(CLOSE);
  fatur.addChild(bottomfatur);
  
  // Sisi samping kanan
  PShape rightfatur = createShape();
  rightfatur.beginShape();
  rightfatur.vertex(500, 900, 0);
  rightfatur.vertex(500, 900, 100);
  rightfatur.vertex(500, 700, 100);
  rightfatur.vertex(500, 700, 0);
  rightfatur.endShape(CLOSE);
  fatur.addChild(rightfatur);
  
  PShape rightTop1fatur = createShape();
  rightTop1fatur.beginShape();
  rightTop1fatur.vertex(500, 700, 0);
  rightTop1fatur.vertex(650, 700, 0);
  rightTop1fatur.vertex(650, 700, 100);
  rightTop1fatur.vertex(500, 700, 100);
  rightTop1fatur.endShape(CLOSE);
  fatur.addChild(rightTop1fatur);
  
  PShape rightBottomfatur = createShape();
  rightBottomfatur.beginShape();
  rightBottomfatur.vertex(650, 700, 0);
  rightBottomfatur.vertex(650, 700, 100);
  rightBottomfatur.vertex(650, 600, 100);
  rightBottomfatur.vertex(650, 600, 0);
  rightBottomfatur.endShape(CLOSE);
  fatur.addChild(rightBottomfatur);
  
  PShape rightBottomBackfatur = createShape();
  rightBottomBackfatur.beginShape();
  rightBottomBackfatur.vertex(500, 600, 0);
  rightBottomBackfatur.vertex(650, 600, 0);
  rightBottomBackfatur.vertex(650, 600, 100);
  rightBottomBackfatur.vertex(500, 600, 100);
  rightBottomBackfatur.endShape(CLOSE);
  fatur.addChild(rightBottomBackfatur);
  
  PShape leftBottomBackfatur = createShape();
  leftBottomBackfatur.beginShape();
  leftBottomBackfatur.vertex(500, 600, 0);
  leftBottomBackfatur.vertex(500, 600, 100);
  leftBottomBackfatur.vertex(500, 500, 100);
  leftBottomBackfatur.vertex(500, 500, 0);
  leftBottomBackfatur.endShape(CLOSE);
  fatur.addChild(leftBottomBackfatur);
  
  PShape leftBottomfatur = createShape();
  leftBottomfatur.beginShape();
  leftBottomfatur.vertex(500, 500, 0);
  leftBottomfatur.vertex(650, 500, 0);
  leftBottomfatur.vertex(650, 500, 100);
  leftBottomfatur.vertex(500, 500, 100);
  leftBottomfatur.endShape();
  fatur.addChild(leftBottomfatur);
  
  PShape rightTopBackfatur = createShape();
  rightTopBackfatur.beginShape();
  rightTopBackfatur.vertex(400, 400, 0);
  rightTopBackfatur.vertex(650, 400, 0);
  rightTopBackfatur.vertex(650, 400, 100);
  rightTopBackfatur.vertex(400, 400, 100);
  rightTopBackfatur.endShape();
  fatur.addChild(rightTopBackfatur);
  
  PShape rightTop2fatur = createShape();
  rightTop2fatur.beginShape();
  rightTop2fatur.vertex(650, 500, 0);
  rightTop2fatur.vertex(650, 500, 100);
  rightTop2fatur.vertex(650, 400, 100);
  rightTop2fatur.vertex(650, 400, 0);
  rightTop2fatur.endShape();
  fatur.addChild(rightTop2fatur);
  
  PShape frontZ = createShape();
  frontZ.beginShape();
  frontZ.vertex(850, 500, 100);
  frontZ.vertex(700, 500, 100);
  frontZ.vertex(700, 400, 100);
  frontZ.vertex(950, 400, 100);
  frontZ.vertex(950, 500, 100);
  frontZ.vertex(800, 800, 100);
  frontZ.vertex(950, 800, 100);
  frontZ.vertex(950, 900, 100);
  frontZ.vertex(700, 900, 100);
  frontZ.vertex(700, 800, 100);
  frontZ.vertex(850, 500, 100);
  frontZ.endShape();
  fatur.addChild(frontZ);
  
  PShape backZ = createShape();
  backZ.beginShape();
  backZ.vertex(850, 500, 0);
  backZ.vertex(700, 500, 0);
  backZ.vertex(700, 400, 0);
  backZ.vertex(950, 400, 0);
  backZ.vertex(950, 500, 0);
  backZ.vertex(800, 800, 0);
  backZ.vertex(950, 800, 0);
  backZ.vertex(950, 900, 0);
  backZ.vertex(700, 900, 0);
  backZ.vertex(700, 800, 0);
  backZ.vertex(850, 500, 0);
  backZ.endShape();
  fatur.addChild(backZ);
  
  PShape rightTopSideZ = createShape();
  rightTopSideZ.beginShape();
  rightTopSideZ.vertex(950, 500, 0);
  rightTopSideZ.vertex(950, 500, 100);
  rightTopSideZ.vertex(950, 400, 100);
  rightTopSideZ.vertex(950, 400, 0);
  rightTopSideZ.endShape();
  fatur.addChild(rightTopSideZ);
  
  PShape rightSideZ = createShape();
  rightSideZ.beginShape();
  rightSideZ.vertex(950, 500, 0);
  rightSideZ.vertex(950, 500, 100);
  rightSideZ.vertex(800, 800, 100);
  rightSideZ.vertex(800, 800, 0);
  rightSideZ.endShape(CLOSE);
  fatur.addChild(rightSideZ);
  
  PShape leftTopSideZ = createShape();
  leftTopSideZ.beginShape();
  leftTopSideZ.vertex(700, 500, 0);
  leftTopSideZ.vertex(700, 500, 100);
  leftTopSideZ.vertex(700, 400, 100);
  leftTopSideZ.vertex(700, 400, 0);
  leftTopSideZ.endShape(CLOSE);
  fatur.addChild(leftTopSideZ);
  
  PShape leftSideZ = createShape();
  leftSideZ.beginShape();
  leftSideZ.vertex(850, 500, 0);
  leftSideZ.vertex(850, 500, 100);
  leftSideZ.vertex(700, 800, 100);
  leftSideZ.vertex(700, 800, 0);
  leftSideZ.endShape(CLOSE);
  fatur.addChild(leftSideZ);
  
  PShape leftBottomSideZ= createShape();
  leftBottomSideZ.beginShape();
  leftBottomSideZ.vertex(700, 900, 0);
  leftBottomSideZ.vertex(700, 900, 100);
  leftBottomSideZ.vertex(700, 800, 100);
  leftBottomSideZ.vertex(700, 800, 0);
  leftBottomSideZ.endShape(CLOSE);
  fatur.addChild(leftBottomSideZ);
  
  PShape rightBottomSideZ = createShape();
  rightBottomSideZ.beginShape();
  rightBottomSideZ.vertex(950, 900, 0);
  rightBottomSideZ.vertex(950, 900, 100);
  rightBottomSideZ.vertex(950, 800, 100);
  rightBottomSideZ.vertex(950, 800, 0);
  rightBottomSideZ.endShape();
  fatur.addChild(rightBottomSideZ);
  
  PShape topZ = createShape();
  topZ.beginShape();
  topZ.vertex(700, 400, 100);
  topZ.vertex(950, 400, 100);
  topZ.vertex(950, 400, 0);
  topZ.vertex(700, 400, 0);
  topZ.vertex(700, 400, 100);
  topZ.endShape();
  fatur.addChild(topZ);
  
  PShape topCenterZ = createShape();
  topCenterZ.beginShape();
  topCenterZ.vertex(700, 500, 100);
  topCenterZ.vertex(850, 500, 100);
  topCenterZ.vertex(850, 500, 0);
  topCenterZ.vertex(700, 500, 0);
  topCenterZ.vertex(700, 500, 100);
  topCenterZ.endShape();
  fatur.addChild(topCenterZ);
  
  PShape bottomZ = createShape();
  bottomZ.beginShape();
  bottomZ.vertex(700, 900, 100);
  bottomZ.vertex(950, 900, 100);
  bottomZ.vertex(950, 900, 0);
  bottomZ.vertex(700, 900, 0);
  bottomZ.vertex(700, 900, 100);
  bottomZ.endShape();
  fatur.addChild(bottomZ);
  
  PShape bottomCenterZ = createShape();
  bottomCenterZ.beginShape();
  bottomCenterZ.vertex(800, 800, 100);
  bottomCenterZ.vertex(950, 800, 100);
  bottomCenterZ.vertex(950, 800, 0);
  bottomCenterZ.vertex(800, 800, 0);
  bottomCenterZ.vertex(800, 800, 100);
  bottomCenterZ.endShape();
  fatur.addChild(bottomCenterZ);

  // Pusatkan huruf "F"
  centerObject(fatur);
}

void draw() {
  background(255);
  translate(width/2, height/2, 0);
  
  if (upPressed) {
    pitch -= radians(1);
  }
  if (downPressed) {
    pitch += radians(1);
  }
  if (leftPressed) {
    yaw -= radians(1);
  }
  if (rightPressed) {
    yaw += radians(1);
  }
  
  if (ltPressed) {
    roll -= radians(1);
  }
  if (gtPressed) {
    roll += radians(1);
  }

  pitch = pitch % TWO_PI;
  yaw = yaw % TWO_PI;
  roll = roll % TWO_PI;
  
  pushMatrix();
  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  shape(fatur);
  popMatrix();
}

void keyPressed() {
  if (keyCode == UP) {
    upPressed = true;
  }
  if (keyCode == DOWN) {
    downPressed = true;
  }
  if (keyCode == LEFT) {
    leftPressed = true;
  }
  if (keyCode == RIGHT) {
    rightPressed = true;
  }
  if (key == '<') {
    ltPressed = true;
  }
  if (key == '>') {
    gtPressed = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    upPressed = false;
  }
  if (keyCode == DOWN) {
    downPressed = false;
  }
  if (keyCode == LEFT) {
    leftPressed = false;
  }
  if (keyCode == RIGHT) {
    rightPressed = false;
  }
  if (key == '<') {
    ltPressed = false;
  }
  if (key == '>') {
    gtPressed = false;
  }
}

void centerObject(PShape obj) {
  float minX = Float.MAX_VALUE;
  float minY = Float.MAX_VALUE;
  float minZ = Float.MAX_VALUE;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  float maxZ = Float.MIN_VALUE;
  
  for (int i = 0; i < obj.getChildCount(); i++) {
    PShape child = obj.getChild(i);
    for (int j = 0; j < child.getVertexCount(); j++) {
      PVector v = child.getVertex(j);
      minX = min(minX, v.x);
      minY = min(minY, v.y);
      minZ = min(minZ, v.z);
      maxX = max(maxX, v.x);
      maxY = max(maxY, v.y);
      maxZ = max(maxZ, v.z);
    }
  }
  
  float centerX = (minX + maxX) / 2;
  float centerY = (minY + maxY) / 2;
  float centerZ = (minZ + maxZ) / 2;
  
  obj.resetMatrix();
  obj.translate(-centerX, -centerY, -centerZ);
}

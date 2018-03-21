class Particula{
Body b;
float r;
Particula (float x, float y, float r_){
  r=r_;
 
makeBody(x, y, r);
    b.setUserData(this);
}

 void killBody() {
    box2d.destroyBody(b);
  }
   void change() {
  Do.play();
  }
   boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Is it off the bottom of the screen?
    if (mousePressed && mouseX > 45 && mouseX < 160 && mouseY > 25 && mouseY < 60) {
      killBody();
      return true;
    }
    return false;
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Get its angle of rotation
    float a = b.getAngle();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(a);
    fill(relleno);
    noStroke();
    ellipse(0, 0, r*2,r*2);
    popMatrix();

  }
void makeBody(float x, float y, float r) {
BodyDef bd = new BodyDef();
bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    b = box2d.createBody(bd);
CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 1.0;

    // Attach fixture to body
    b.createFixture(fd);

    b.setAngularVelocity(random(-50, 50));
  }
}

class ParticulaRe{
Body b;
float r;
ParticulaRe (float x, float y, float r_){
  r=r_;
 
makeBody(x, y, r);
    b.setUserData(this);
}

 void killBody() {
    box2d.destroyBody(b);
  }
   void change() {
  
 Re.play();
 
  }
   boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Is it off the bottom of the screen?
    if (mousePressed && mouseX > 45 && mouseX < 160 && mouseY > 25 && mouseY < 60) {
      killBody();
      return true;
    }
    return false;
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Get its angle of rotation
    float a = b.getAngle();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(a);
    //fill(relleno);
    fill(#C91DCE);
  noStroke();
    ellipse(0, 0, r*2,r*2);
    popMatrix();

  }
void makeBody(float x, float y, float r) {
BodyDef bd = new BodyDef();
bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    b = box2d.createBody(bd);
CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 1.0;

    // Attach fixture to body
    b.createFixture(fd);

    b.setAngularVelocity(random(-50, 50));
  }
}

class ParticulaMi{
Body b;
float r;
ParticulaMi (float x, float y, float r_){
  r=r_;
 
makeBody(x, y, r);
    b.setUserData(this);
}

 void killBody() {
    box2d.destroyBody(b);
  }
   void change() {
  
 Mi.play();
 
  }
   boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Is it off the bottom of the screen?
    if (mousePressed && mouseX > 45 && mouseX < 160 && mouseY > 25 && mouseY < 60) {
      killBody();
      return true;
    }
    return false;
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Get its angle of rotation
    float a = b.getAngle();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(a);
    //fill(relleno);
    fill(#771FCC);
  noStroke();
    ellipse(0, 0, r*2,r*2);
    popMatrix();

  }
void makeBody(float x, float y, float r) {
BodyDef bd = new BodyDef();
bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    b = box2d.createBody(bd);
CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 1.0;

    // Attach fixture to body
    b.createFixture(fd);

    b.setAngularVelocity(random(-50, 50));
  }
}

class ParticulaFa{
Body b;
float r;
ParticulaFa (float x, float y, float r_){
  r=r_;
 
makeBody(x, y, r);
    b.setUserData(this);
}

 void killBody() {
    box2d.destroyBody(b);
  }
   void change() {
  
 Fa.play();
 
  }
  
    boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Is it off the bottom of the screen?
    if (mousePressed && mouseX > 45 && mouseX < 160 && mouseY > 25 && mouseY < 60) {
      killBody();
      return true;
    }
    return false;
  }


  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Get its angle of rotation
    float a = b.getAngle();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(a);
    //fill(relleno);
    fill(#212ACC);
  noStroke();
    ellipse(0, 0, r*2,r*2);
    popMatrix();

  }
void makeBody(float x, float y, float r) {
BodyDef bd = new BodyDef();
bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    b = box2d.createBody(bd);
CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 1.0;

    // Attach fixture to body
    b.createFixture(fd);

    b.setAngularVelocity(random(-50, 50));
  }
}

class ParticulaSol{
Body b;
float r;
ParticulaSol (float x, float y, float r_){
  r=r_;
 
makeBody(x, y, r);
    b.setUserData(this);
}

 void killBody() {
    box2d.destroyBody(b);
  }
   void change() {
  
 Sol.play();
 
  }
   boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Is it off the bottom of the screen?
    if (mousePressed && mouseX > 45 && mouseX < 160 && mouseY > 25 && mouseY < 60) {
      killBody();
      return true;
    }
    return false;
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Get its angle of rotation
    float a = b.getAngle();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(a);
    //fill(relleno);
    fill(#23C0CC);
  noStroke();
    ellipse(0, 0, r*2,r*2);
    popMatrix();

  }
void makeBody(float x, float y, float r) {
BodyDef bd = new BodyDef();
bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    b = box2d.createBody(bd);
CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 1.0;

    // Attach fixture to body
    b.createFixture(fd);

    b.setAngularVelocity(random(-50, 50));
  }
}

class ParticulaLa{
Body b;
float r;
ParticulaLa (float x, float y, float r_){
  r=r_;
 
makeBody(x, y, r);
    b.setUserData(this);
}

 void killBody() {
    box2d.destroyBody(b);
  }
   void change() {
  
 La.play();
 
  }
   boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Is it off the bottom of the screen?
    if (mousePressed && mouseX > 45 && mouseX < 160 && mouseY > 25 && mouseY < 60) {
      killBody();
      return true;
    }
    return false;
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Get its angle of rotation
    float a = b.getAngle();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(a);
    //fill(relleno);
    fill(#25CC48);
  noStroke();
    ellipse(0, 0, r*2,r*2);
    popMatrix();

  }
void makeBody(float x, float y, float r) {
BodyDef bd = new BodyDef();
bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    b = box2d.createBody(bd);
CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 1.0;

    // Attach fixture to body
    b.createFixture(fd);

    b.setAngularVelocity(random(-50, 50));
  }
}

class ParticulaSi{
Body b;
float r;
ParticulaSi (float x, float y, float r_){
  r=r_;
 
makeBody(x, y, r);
    b.setUserData(this);
}

 void killBody() {
    box2d.destroyBody(b);
  }
   void change() {
  
 Si.play();
 
  }
   boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Is it off the bottom of the screen?
    if (mousePressed && mouseX > 45 && mouseX < 160 && mouseY > 25 && mouseY < 60) {
      killBody();
      return true;
    }
    return false;
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(b);
    // Get its angle of rotation
    float a = b.getAngle();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(a);
    //fill(relleno);
    fill(#EFEF14);
  noStroke();
    ellipse(0, 0, r*2,r*2);
    popMatrix();

  }
void makeBody(float x, float y, float r) {
BodyDef bd = new BodyDef();
bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    b = box2d.createBody(bd);
CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 1.0;

    // Attach fixture to body
    b.createFixture(fd);

    b.setAngularVelocity(random(-50, 50));
  }
}
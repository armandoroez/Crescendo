//bibliotecas
import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;
import processing.sound.*;

Box2DProcessing box2d;
SoundFile Do, Re, Mi, Fa, Sol, La, Si;
ArrayList<Particula> particula;
ArrayList<ParticulaRe> particulaRe;
ArrayList<ParticulaMi> particulaMi;
ArrayList<ParticulaFa> particulaFa;
ArrayList<ParticulaSol> particulaSol;
ArrayList<ParticulaLa> particulaLa;
ArrayList<ParticulaSi> particulaSi;

Boundary muro;
Boundary muro2;
Boundary muro3;
Boundary muro4;
Amplitude amp;
AudioIn in;
//variables universales
int pantalla = 0;
color colorCuadro = color(255, 255, 255);
int masColor = 180;
int menosColor=180;
int volverAJ=255;
int preg = 100;
int stroke=color (0,1), stroke2= color (0,1), stroke3=color(0,1), stroke4=color(0,1), stroke5=color(0,1), stroke6=color(0,1), stroke7=color(0,1);
int gravity1=0;
int gravity2= gravity1-20;
int reiniciar = 180;
int nota;
color relleno;

void setup(){
size (800,800);
smooth();
  Do = new SoundFile(this, "Do.mp3");
  Re = new SoundFile(this, "Re.mp3");
  Mi = new SoundFile(this, "Mi.mp3");
  Fa = new SoundFile(this, "Fa.mp3");
  Sol = new SoundFile(this, "Sol.mp3");
  La = new SoundFile(this, "La.mp3");
  Si = new SoundFile(this, "Si.mp3");
box2d = new Box2DProcessing(this);
  box2d.createWorld();
    box2d.listenForCollisions();
  particula = new ArrayList<Particula>();
    particulaRe = new ArrayList<ParticulaRe>();
  particulaMi = new ArrayList<ParticulaMi>();
  particulaFa = new ArrayList<ParticulaFa>();
  particulaSol = new ArrayList<ParticulaSol>();
  particulaLa = new ArrayList<ParticulaLa>();
  particulaSi = new ArrayList<ParticulaSi>();
amp = new Amplitude(this);
  in = new AudioIn(this, -10);
  in.start();
  amp.input(in);
  box2d.step();
}

void draw(){

box2d.step();
background(0);
switch (pantalla){
case 0:
pantallaUno();
break;
case 1:
muro = new Boundary(width/2, 787, width, 26);
muro2 = new Boundary(13, height/2, 26, height);
muro3 = new Boundary (width/2, 13, width, 26);
muro4 = new Boundary(787, height/2, 26, height);
muro.display();
muro2.display();
muro3.display();
muro4.display();
pantallaDos();
melleva();
break;
case 2:
pantallaTres();
break;
}

}

void pantallaUno(){
  textAlign(CENTER);
 textSize(120);
fill(255);
text("CRESCENDO", 400, 350);
fill(colorCuadro);
rectMode(CENTER);
rect(400, 500, 300,100);
textSize(50);
fill(0);
text("INICIAR", 400, 520);
textSize(30);
fill(preg);
ellipse(760,40,40,40);
fill(255);
text("?", 760, 50);


if (mouseX > 250 && mouseX < 550 && mouseY > 450 && mouseY < 550){
colorCuadro = color(random(0,255), random(0,255), random(0,255));}
else {colorCuadro = color(255, 255, 255);}

if (mousePressed && mouseX > 250 && mouseX < 550 && mouseY > 450 && mouseY < 550){
pantalla = 1;
}
if (mousePressed && mouseX > 745 && mouseX < 765 && mouseY > 25 && mouseY < 55){
pantalla = 2;
} 
if (mouseX > 745 && mouseX < 785 && mouseY > 25 && mouseY < 55){
preg= color(0,0,255);} else{preg = 100;}

} 


void pantallaDos(){
box2d.setGravity(gravity1,gravity1-20);
fill (255,255,255,70);
rect(75,380, 75, 600, 10);
pushMatrix();
  strokeWeight(5);
  stroke(stroke2);
fill(#EFEF14);
ellipse(75, 140, 40, 40);
popMatrix();
pushMatrix();
  stroke=(stroke3);

fill(#25CC48);
ellipse(75, 220, 40, 40);
popMatrix();
pushMatrix();
  stroke=(stroke4);

fill(#23C0CC);
ellipse(75, 300, 40, 40);
popMatrix();
pushMatrix();
  stroke=(stroke5);

fill(#212ACC);
ellipse(75, 380, 40, 40);
popMatrix();
pushMatrix();
  stroke=(stroke6);

fill(#771FCC);
ellipse(75, 460, 40, 40);
popMatrix();
pushMatrix();
  stroke=(stroke7);

fill(#C91DCE);
ellipse(75, 540, 40, 40);
popMatrix();
//pushMatrix();
stroke(stroke);

fill(#D11C1C);
ellipse(75, 620, 40, 40);
//popMatrix();
textSize(30);
fill(180);
text("Gravedad", 400, 50);
fill(reiniciar);
text("Reiniciar", 100, 50);
fill(masColor);
ellipse(510,40,30,30);
fill(menosColor);
ellipse(580,40,30,30);
fill(0);
text("+", 510, 50);
text("-", 580, 50);
fill(preg);
ellipse(760,40,40,40);
fill(255);
text("?", 760, 50);

if (mousePressed && mouseX > 495 && mouseX < 515 && mouseY > 25 && mouseY < 55){
masColor=255;
 //gravity1=+10;
} 

else {masColor=180;}

if (mousePressed && mouseX > 565 && mouseX < 615 && mouseY > 25 && mouseY < 55){
menosColor=255;
//gravity1=-10;
} 
else {menosColor=180;}
if (mousePressed && mouseX > 745 && mouseX < 785 && mouseY > 25 && mouseY < 55){
pantalla = 2;
} 
if (mouseX > 745 && mouseX < 785 && mouseY > 25 && mouseY < 55){
preg= color(0,0,255);} else{preg = 100;}

 if (mouseX > 55 && mouseX < 95 && mouseY > 600 && mouseY < 640){
   stroke=color(0,255,0);
} else {stroke = color(0,1);}

for (int i = particula.size()-1; i >= 0; i--) {
Particula p = particula.get(i);
p.display();
if (p.done()) {
      particula.remove(i);
    }}

for (int i = particulaRe.size()-1; i >= 0; i--) {
ParticulaRe p = particulaRe.get(i);
p.display();
if (p.done()) {
      particulaRe.remove(i);
    }}

for (int i = particulaMi.size()-1; i >= 0; i--) {
ParticulaMi p = particulaMi.get(i);
p.display();
if (p.done()) {
      particulaMi.remove(i);
    }}


for (int i = particulaFa.size()-1; i >= 0; i--) {
ParticulaFa p = particulaFa.get(i);
p.display();
 if (p.done()) {
      particulaFa.remove(i);
    }}

for (int i = particulaSol.size()-1; i >= 0; i--) {
ParticulaSol p = particulaSol.get(i);
p.display();
if (p.done()) {
      particulaSol.remove(i);
    }}

for (int i = particulaLa.size()-1; i >= 0; i--) {
ParticulaLa p = particulaLa.get(i);
p.display();
if (p.done()) {
      particulaLa.remove(i);
    }}

for (int i = particulaSi.size()-1; i >= 0; i--) {
ParticulaSi p = particulaSi.get(i);
p.display();
if (p.done()) {
      particulaSi.remove(i);
    }}

if (mouseX > 45 && mouseX < 160 && mouseY > 25 && mouseY < 60){
reiniciar= color(0,0,255);} else{reiniciar = 180;}



if (mousePressed && mouseX > 55 && mouseX < 95 && mouseY > 600 && mouseY < 640 && pantalla==1){ 
  particula.add(new Particula(400, 100, 20));
relleno = color (#D11C1C);
mousePressed = false;}
     
if (mousePressed && mouseX > 55 && mouseX < 95 && mouseY > 540 && mouseY < 580){ 
  particulaRe.add(new ParticulaRe(400, 100, 20));
  mousePressed = false;
}

if (mousePressed && mouseX > 55 && mouseX < 95 && mouseY > 440 && mouseY < 480){ 
  particulaMi.add(new ParticulaMi(400,100,20));
  mousePressed = false;
}

 if (mousePressed && mouseX > 55 && mouseX < 95 && mouseY > 360 && mouseY < 400){ 
 particulaFa.add(new ParticulaFa(400,100,20));
 mousePressed = false;
}

if (mousePressed && mouseX > 55 && mouseX < 95 && mouseY > 280 && mouseY < 320){ 
 particulaSol.add(new ParticulaSol(400,100,20));
 mousePressed = false;
}

if (mousePressed && mouseX > 55 && mouseX < 95 && mouseY > 200 && mouseY < 240){ 
 particulaLa.add(new ParticulaLa(400,100,20));
 mousePressed = false;
}

if (mousePressed && mouseX > 55 && mouseX < 95 && mouseY > 200 && mouseY < 240){ 
 particulaLa.add(new ParticulaLa(400,100,20));
 mousePressed = false;
}

if (mousePressed && mouseX > 55 && mouseX < 95 && mouseY > 120 && mouseY < 160){ 
 particulaSi.add(new ParticulaSi(400,100,20));
 mousePressed = false;
}
}

 void melleva(){
 if ( mousePressed && mouseX > 495 && mouseX < 515 && mouseY > 25 && mouseY < 55){

gravity1=-10;}
if (mousePressed && mouseX > 45 && mouseX < 160 && mouseY > 25 && mouseY < 60) {
gravity1=0;
} 
 

if (mousePressed && mouseX > 565 && mouseX < 615 && mouseY > 25 && mouseY < 55){
gravity1=gravity1+10;
mousePressed=false;}}
  
void pantallaTres(){
fill (255,255,255,70);
rect(75,380, 75, 600, 10);
noStroke();
fill(#EFEF14); //Si
ellipse(75, 140, 40, 40);
fill(#25CC48); //La
ellipse(75, 220, 40, 40);
fill(#23C0CC); //Sol 
ellipse(75, 300, 40, 40);
fill(#212ACC); //Fa
ellipse(75, 380, 40, 40);
fill(#771FCC); //Mi
ellipse(75, 460, 40, 40);
fill(#C91DCE); //Re
ellipse(75, 540, 40, 40);
fill(#D11C1C); //Do
ellipse(75, 620, 40, 40);

fill(240);
textSize(30);
text("Si", 140, 150);
text("La", 140, 230);
text("Sol", 140, 310);
text("Fa", 140, 390);
text("Mi", 140, 470);
text("Re", 140, 550);
text("Do", 140, 630);
textSize(30);
textAlign(CENTER);
text("Instrucciones:", 500, 120);
textSize(20);
text("Al seleccionar uno de los círculos en la casilla izquierda,", 500, 150);
text("aparecerá dentro del canvas y al rebotar con otro círculo", 500, 170);
text("de su mismo tipo, reproducira una nota, las cuales están ", 500, 190);
text("representadas por colores. Puedes escoger varias notas,", 500, 210);
text("aumentar o disminuir la gravedad y también reiniciar el canvas ", 500, 230);
text("para volver a empezar.", 500, 250);

pushMatrix();
translate(0, 150);
textSize(20);
textAlign(CENTER);
text("Las notas que se utilizan en este programa son parte de", 500, 150);
text("la escala diatónica, también conocida escala natural, que ", 500, 170);
text("está compuesta por las notas básicas Do, Re, Mi, Fa, Sol,", 500, 190);
text("La y Si, que son dos semitonos y cinco tonos.", 500, 210);
textSize(30);
text("¿Cómo hacer un acorde?", 500, 260);
textSize(20);
text("Un acorde se compone básicamente de tres notas 'terceras'", 500, 280);
text("superpuestas. Para esto se toma una nota como base", 500, 300);
text("(por ejemplo, Do) y desde esa nota se cuentan tres", 500, 320);
text("(Do-Re-Mi) y se utilizará la tercera nota (Mi), lo mismo ", 500, 340);
text("para la siguiente nota del acorde, contando desde la segunda", 500, 360);
text("(Mi-Fa-Sol), y la combinación de estas tres notas será ", 500, 380);
text("el acorde (Do-Mi-Sol).", 500, 400);
popMatrix();
fill(volverAJ);
text("Volver al juego", 100, 50);

if (mouseX > 30 && mouseX <170 && mouseY > 30 && mouseY < 50){
  volverAJ = color(0,0,255);
} else {volverAJ=255;}

if (mousePressed && mouseX > 30 && mouseX <170 && mouseY > 30 && mouseY < 50){
pantalla = 1;
}
}

void beginContact(Contact cp) {
  // Get both fixtures
  Fixture f1 = cp.getFixtureA();
  Fixture f2 = cp.getFixtureB();
  // Get both bodies
  Body b1 = f1.getBody();
  Body b2 = f2.getBody();

  // Get our objects that reference these bodies
  Object o1 = b1.getUserData();
  Object o2 = b2.getUserData();

  if (o2.getClass() == Particula.class && o1.getClass() == Particula.class) {

    Particula p2 = (Particula) o2;
    p2.change();
  }
 if (o2.getClass() == ParticulaRe.class && o1.getClass() == ParticulaRe.class) {
    ParticulaRe p2 = (ParticulaRe) o2;
    p2.change();
  }
if (o2.getClass() == ParticulaMi.class && o1.getClass() == ParticulaMi.class) {
    ParticulaMi p2 = (ParticulaMi) o2;
    p2.change();
  }
  if (o2.getClass() == ParticulaFa.class && o1.getClass() == ParticulaFa.class) {
    ParticulaFa p2 = (ParticulaFa) o2;
    p2.change();

  }
  if (o2.getClass() == ParticulaSol.class && o1.getClass() == ParticulaSol.class) {
    ParticulaSol p2 = (ParticulaSol) o2;
    p2.change();
  }
  if (o2.getClass() == ParticulaLa.class && o1.getClass() == ParticulaLa.class) {
    ParticulaLa p2 = (ParticulaLa) o2;
    p2.change();
 
  }
  if (o2.getClass() == ParticulaSi.class && o1.getClass() == ParticulaSi.class) {
    ParticulaSi p2 = (ParticulaSi) o2;
    p2.change();
   
  }
}
void endContact(Contact cp) {
}
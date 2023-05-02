/*===========================
  When run, this program should use a linked list
  of OrbNodes to simulate the physics of a bunch of
  orbs connected by springs. The program responds to
  the following keystrokes:

    spacebar: toggle moving on/off
    'b': toggle bounce on/off
    'r': reset, creating a list of 10 orbs,
         and setting moving and bounce to false.
    'a': Add a random node to the front of the list
    'd': Delete the first node in the list.

  This program should not crash, even if the list
  has no nodes it at some point.

  You do not need to modify any of this code.
  =========================*/



/* Not used in this program, but these are constants
  that have been useful for our physics engine and
  therefore useful to keep around.
*/
float GRAVITY = 0.4;
int MAX_SIZE  = 50;
int MIN_SIZE = 10;
float MAX_MASS = 10;
float MIN_MASS = 1;
float DAMPENING = 1;

float SPRING_CONST = 0.005;
int SPRING_LENGTH = 100;
int NUM_ORBS = 10;

boolean moving;
boolean bounce;

OrbList slinky;

void setup() {
  size(600, 600);
  background(255);
  reset();
}//setup

void draw() {

  background(255);
  displayMode();

  slinky.display(SPRING_LENGTH);

  if (moving) {
    slinky.applySprings(SPRING_LENGTH, SPRING_CONST);
    slinky.run(bounce, DAMPENING);
  }//moving

}//draw

void reset() {
  moving = false;
  bounce = false;

  slinky = new OrbList();
  for (int i=0; i<NUM_ORBS; i++) {
    OrbNode o = new OrbNode( int(random(15, width-15)), int(random(15, height-15)), 25, 5);
    slinky.addFront(o);
  }//make orbs
}//reset


void keyPressed() {
  if (key == ' ') {
    moving = !moving;
  }
  if (key == 'b') {
    bounce = !bounce;
  }
  if (key == 'r') {
    reset();
  }
  if (key == 'a') {
    OrbNode o = new OrbNode( int(random(15, width-15)), int(random(15, height-15)), 25, 5);
    slinky.addFront(o);
  }
  if (key == 'd') {
    slinky.removeFront();
  }
}//keyPressed

void displayMode() {
  //initial setup
  color c;
  textAlign(LEFT, TOP);
  textSize(15);
  noStroke();
  //red or green boxes
  c = moving ? color(0, 255, 0) : color(255, 0, 0);
  fill(c);
  rect(0, 0, 53, 20);
  c = bounce ? color(0, 255, 0) : color(255, 0, 0);
  fill(c);
  rect(54, 0, 57, 20);

  stroke(0);
  fill(0);
  text("MOVING", 1, 0);
  text("BOUNCE", 55, 0);
}

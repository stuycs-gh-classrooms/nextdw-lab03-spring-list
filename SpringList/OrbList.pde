/*===========================
  OrbList

  Class to represent a Linked List of OrbNodes.

  Instance Variables:
    OrbNode front:
      The first element of the list.
      Initially, this will be null.

  Methods to work on:
    0. addFront
    1. display
    2. applySprings
    3. run
    4. removeFront

  When working on these methods, make sure to
  account for null values appropraitely. When the program
  is run, no NullPointerExceptions should occur.
  =========================*/

class OrbList {

  OrbNode front;

  /*===========================
    Contructor
    Does very little.
    You do not need to modify this method.
    =========================*/
  OrbList() {
    front = null;
  }//constructor

  /*===========================
    addFront(OrbNode o)

    Insert o to the beginning of the list.
    =========================*/
  void addFront(OrbNode o) {

  }//addFront

  /*===========================
    display(int springLength)

    Display all the nodes in the list using
    the display method defined in the OrbNode class.
    =========================*/
  void display(int springLength) {

  }//display

  /*===========================
    applySprings(int springLength, float springK)

    Use the applySprings method in OrbNode on each
    element in the list.
    =========================*/
  void applySprings(int springLength, float springK) {

  }//applySprings

  /*===========================
    run(boolean bounce, float damp)

    Call run on each node in the list.
    =========================*/
  void run(boolean bounce, float damp) {

  }//applySprings

  /*===========================
    removeFront()

    Remove the element at the front of the list, i.e.
    after this method is run, the former second element
    should now be the first (and so on).
    =========================*/
  void removeFront() {

  }//removeFront


}//OrbList

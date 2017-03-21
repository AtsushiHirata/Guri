// Need G4P library
import guicomponents.*;

void settings(){
  size(Constants.SCREEN_WIDTH,Constants.SCREEN_HEIGHT);
}  

void setup(){
//  size(Constants.SCREEN_WIDTH,Constants.SCREEN_HEIGHT);
  createGUI();
  customGUI();
  // Place your setup code here
  
  if ( Constants.isTEST_MODE == true ) {
    UnitTests ut = new UnitTests();
    ut.test();
  }
}

void draw(){
  background(200,220,200);
  fill(0,51,0);
  rect(0,44,490,480-64);
  stroke(255,255,255);
  line(100,100,300,300);
}

// Use this method to add additional statements
// to customise the GUI controls
void customGUI(){

}
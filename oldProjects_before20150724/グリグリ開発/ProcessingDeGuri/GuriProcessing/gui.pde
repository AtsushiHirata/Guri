/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

void button1_Click1(GButton button) { //_CODE_:btnExit:359719:
  println("button1 - GButton event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:btnExit:359719:

void button2_Click1(GButton button) { //_CODE_:btnLoad:699699:
  println("button2 - GButton event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:btnLoad:699699:

void button3_Click1(GButton button) { //_CODE_:btnSave:843864:
  println("button3 - GButton event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:btnSave:843864:

void button1_Click2(GButton button) { //_CODE_:btnContinuousTurn:310762:
  println("btnContinuousTurn - GButton event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:btnContinuousTurn:310762:

void button1_Click3(GButton button) { //_CODE_:btnEqualAngleView:539275:
  println("btnEqualAngleView - GButton event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:btnEqualAngleView:539275:



// Create all the GUI controls. 
// autogenerated do not edit
void createGUI(){
  G4P.setColorScheme(this, GCScheme.BLUE_SCHEME);
  G4P.messagesEnabled(false);
  btnExit = new GButton(this, "Exit", 10, 8, 34, 30);
  btnExit.setTextAlign(GAlign.CENTER | GAlign.MIDDLE);
  btnExit.addEventHandler(this, "button1_Click1");
  btnLoad = new GButton(this, "Load", 52, 8, 36, 30);
  btnLoad.setTextAlign(GAlign.CENTER | GAlign.MIDDLE);
  btnLoad.addEventHandler(this, "button2_Click1");
  btnSave = new GButton(this, "Save", 95, 8, 30, 30);
  btnSave.setTextAlign(GAlign.CENTER | GAlign.MIDDLE);
  btnSave.addEventHandler(this, "button3_Click1");
  btnContinuousTurn = new GButton(this, "Cont.Turn", 145, 8, 56, 30);
  btnContinuousTurn.setTextAlign(GAlign.CENTER | GAlign.MIDDLE);
  btnContinuousTurn.addEventHandler(this, "button1_Click2");
  btnEqualAngleView = new GButton(this, "EqualAng.View", 292, 8, 80, 30);
  btnEqualAngleView.setTextAlign(GAlign.CENTER | GAlign.MIDDLE);
  btnEqualAngleView.addEventHandler(this, "button1_Click3");
  label1 = new GLabel(this, "My label", 554, 381, 81, 70);
  label2 = new GLabel(this, "My label", 3, 456, 549, 20);
  label3 = new GLabel(this, "My label", 556, 457, 80, 20);
}

// Variable declarations 
// autogenerated do not edit
GButton btnExit; 
GButton btnLoad; 
GButton btnSave; 
GButton btnContinuousTurn; 
GButton btnEqualAngleView; 
GLabel label1; 
GLabel label2; 
GLabel label3; 


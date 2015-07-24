import guicomponents.*;

GButton btnExit;

int ClickCount = 0;

void setup(){
  size(FRM_WIDTH,FRM_HEIGHT);
  btnExit = new GButton(this, "Exit",50,40,30,20);
  System.out.println("setup procedure done.");
}

public void handleButtonEvents(GButton button){
  System.out.println();
  System.out.println("handleButtonEvents method start.");
  if(button == btnExit && button.eventType == GButton.CLICKED){
    ClickCount++;
    System.out.println("Exit button " +ClickCount+ " times pressed.");
  }
}


void draw(){
  System.out.print(".");
}


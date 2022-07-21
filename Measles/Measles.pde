//Global Variables
Boolean nightMode=false;
float startX, startY, startWidth, startHeight;
float stopX, stopY, stopWidth, stopHeight;
float resetX, resetY, resetWidth, resetHeight;
color yellow=#FFFB74, pink=#FF4DB8, resetButtonColour=#FFFFFF, buttonFill;
float measles;
String title="Measles Drawing Program", click="Right click for Night Mode backgrounds. Press Mouse Wheel for normal backgrounds.";
String start="START", stop="PAUSE", reset="RESET", quit="QUIT";
PFont buttonFont; 
float titleX, titleY, titleWidth, titleHeight, clickX, clickY, clickWidth, clickHeight; 
float rect, rectX, rectY, rectWidth, rectHeight;
float quitX, quitY, quitWidth, quitHeight;
//

//
void setup()
{
  //CANVAS will be added later
  size(1200, 600); //Landscape
  println(width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) { 
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted.");
  } else {
  }
  //
  populatingVariables();
  int centerX = width/2;
  int centerY = height/2;
  //
  startX = width*17/20;
  startY = centerY - height*1/5;
  startWidth = width*1/8;
  startHeight = height*1/8;
  //
  stopX = startX;
  stopY = centerY;
  stopWidth = startWidth;
  stopHeight = startHeight;
  //
  resetX = startX;
  resetY = centerY + height*1/5;
  resetWidth = width*1/8;
  resetHeight = height*1/8;
  //

  //
  titleX = width*1/50;
  titleY = centerY - height*1/4;
  titleWidth = width*1/6;
  titleHeight = height*1/4;
  clickX = titleX;
  clickY = centerY;
  clickWidth = width*1/6;
  clickHeight = height*1/4;
  //
  rectX = titleX;
  rectY = titleY;
  rectWidth = titleWidth;
  rectHeight = titleHeight*2;
  //
  quitX = titleX;
  quitY = height*5/6;
  quitWidth = titleWidth;
  quitHeight = resetHeight;
  //Text setup
  buttonFont = createFont ("Gabriola", 48);
}//End setup
//
//
void draw()
{
  imageDraw();


  //Hover over
  if ( mouseX>startX && mouseX<startX+startWidth && mouseY>startY && mouseY<startY+startHeight ) {
    buttonFill = yellow;
  } else {
    buttonFill = pink;
  } //End Hover over
  fill(buttonFill);
  rect (startX, startY, startWidth, startHeight);
  fill(resetButtonColour);
  //
  if ( mouseX>stopX && mouseX<stopX+stopWidth && mouseY>stopY && mouseY<stopY+stopHeight ) {
    buttonFill = yellow;
  } else {
    buttonFill = pink;
  } //End Hover over
  fill(buttonFill);
  rect (stopX, stopY, stopWidth, stopHeight);
  fill(resetButtonColour);
  //
  if ( mouseX>resetX && mouseX<resetX+resetWidth && mouseY>resetY && mouseY<resetY+resetHeight ) {
    buttonFill = yellow;
  } else {
    buttonFill = pink;
  } //End Hover over
  fill(buttonFill);
  rect (resetX, resetY, resetWidth, resetHeight);
  fill(resetButtonColour);
  //
  if ( mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {
    buttonFill = yellow;
  } else {
    buttonFill = pink;
  } //End Hover over
  fill(buttonFill);
  rect (quitX, quitY, quitWidth, quitHeight);
  fill(resetButtonColour); 
  //
  rect(rectX, rectY, rectWidth, rectHeight);

  //
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 25);
  text(start, startX, startY, startWidth, startHeight); //start
  text(stop, stopX, stopY, stopWidth, stopHeight); //pause
  text(reset, resetX, resetY, resetWidth, resetHeight); //reset
  text(click, clickX, clickY, clickWidth, clickHeight); //desc
  text(quit, quitX, quitY, quitWidth, quitHeight); //desc
  textFont(buttonFont, 50);
  text(title, titleX, titleY, titleWidth, titleHeight); //title
  //fill(resetWhite);
}//End draw
//
//
void keyPressed() {
}//End keyPressed
//
//
void mousePressed() {  
  if ( mouseButton == RIGHT ) { //Night Mode TRUE  
    backgroundColour = color( random(255), random(255), 0 );  
    background( backgroundColour );  
    fill(peach);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Right Mouse Button
  if ( mouseButton == CENTER ) { //Night Mode FALSE  
    backgroundColour = color( random(255), random(255), random(255) );  
    background( backgroundColour );  
    fill(peach);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Right Mouse Button
  if ( mouseX>startX && mouseX<startX+startWidth && mouseY>startY && mouseY<startY+startHeight ) {
    drawM=true;
  } 
  if ( mouseX>stopX && mouseX<stopX+stopWidth && mouseY>stopY && mouseY<stopY+stopHeight ) {
    drawM=false;
  }
  if ( mouseX>resetX && mouseX<resetX+resetWidth && mouseY>resetY && mouseY<resetY+resetHeight ) {
    fill(peach);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
    drawM=false;
  };
    if ( mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) exit();
}//End mousePressed  
//  
//End MAIN Program

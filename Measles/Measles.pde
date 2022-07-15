//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xLeftPupil, yLeftPupil, xRightPupil, yRightPupil, pupilDiameter;
color black=#000000;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, yRightNostril, xRightNostril;
int thack=10;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#FF0000; //similar to int declaration
//
void setup() 
{
  //CANVAS will be added later
  size(800, 600); //Landscape
  //
  //Population
  xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;

  xLeftEye = xCenter-smallerDimension*1/4.5;
  yLeftEye = yCenter-smallerDimension*1/5;
  eyeDiameter = smallerDimension/5;
  xRightEye = xCenter+smallerDimension*1/4.5;
  yRightEye = yCenter-smallerDimension*1/5;

  xLeftPupil = xLeftEye;
  yLeftPupil = yLeftEye;
  xRightPupil = xRightEye;
  yRightPupil = yRightEye;
  pupilDiameter = smallerDimension/7;

  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/8;
  xLeftNostril = xCenter-smallerDimension*1/8; 
  yLeftNostril = yCenter+smallerDimension*1/12;
  xRightNostril = xCenter+smallerDimension*1/8;
  yRightNostril = yLeftNostril;

  faceRadius = smallerDimension/2;
  //
  Boolean nightMode=true;
  color backgroundColour = ( nightMode==true) ? color(random(255), random(255), 0) : color(random(255), random(255), random(255)) ; //ternary operator, similar to IF-else
  background( backgroundColour );
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
  PImage img = loadImage("R.png");
  image(img, 320, 400, 160, 120);
  //
}//End setup
//
void draw()
{
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  fill(black);
  ellipse (xLeftPupil, yLeftPupil, pupilDiameter, pupilDiameter);
  ellipse (xRightPupil, yRightPupil, pupilDiameter, pupilDiameter);
  fill(resetWhite);
  strokeWeight(thack);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  //strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(1); //resets default
  //
  PImage img = loadImage("R.png");
  image(img, 320, 400, 160, 120);
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(0, smallerDimension); //if zero is first, then default
  fill(red);
  noStroke();
  measleDiameter = random(smallerDimension*1/70, smallerDimension*1/30); 
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset default
  fill(resetWhite);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if () {
    
  } else {
    
  }
  nd nightMode switch

  /*
  color backgroundColour = ( nightMode==true) ? color(random(255), random(255), 0) : color(random(255), random(255), random(255)) ; //ternary operator, similar to IF-else
   background( backgroundColour );
   */
}//End mousePressed
//
//End MAIN Program

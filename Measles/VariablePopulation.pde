//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xLeftPupil, yLeftPupil, xRightPupil, yRightPupil, pupilDiameter;
color black=#000000, brown=#CB8B00, peach=#FFF9E8;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, yRightNostril, xRightNostril;
int thack=10;
PImage box, mouth;
float mouthX, mouthY, mouthWidth, mouthHeight;
float boxX, boxY, boxWidth, boxHeight;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#FF0000, backgroundColour; //similar to int declaration

//
void populatingVariables() {
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
  faceRadius = smallerDimension/2;

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
  
  boxWidth = 690; //dimensions of image
  boxHeight = 597;
  boxX = xCenter-boxWidth/2;
  boxY = 0;
  

  mouthX = xLeftNostril;
  mouthY = height*2.5/4;
  mouthWidth = width*1/8;
  mouthHeight = height*1/5;
  //
  Boolean nightMode=true;
  backgroundColour = ( nightMode==true) ? color(random(255), random(255), 0) : color(random(255), random(255), random(255)) ; //ternary operator, similar to IF-Else
  background( backgroundColour );
  
  fill(peach);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);  
  fill(resetWhite);
  //
  
} //End populatingVariables

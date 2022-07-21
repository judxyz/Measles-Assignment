Boolean drawM=false; 

void imageDraw() {
  box = loadImage("images/e.png");
  image(box, boxX, boxY, boxWidth, boxHeight);
  //
  fill(brown);
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
  mouth = loadImage("images/R.png");
  image(mouth, mouthX, mouthY, mouthWidth, mouthHeight);
  //
  if ( drawM==true ) {
    xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
    yMeasle = random(smallerDimension); //if zero is first, then default
    //rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //working rect() is before FACE in setup()
    fill(red);
    noStroke();
    measleDiameter = random(smallerDimension*1/70, smallerDimension*1/30); 
    ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
    stroke(1); //reset default
    fill(resetWhite);
  } else {
  }
  //
} //End imageDraw

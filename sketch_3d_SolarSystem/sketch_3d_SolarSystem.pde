float earth_angleX = 0; // Angle of the earth
float earth_angleY = 0; // Angle of the earth
float earth_angleZ = 0; // Angle of the earth

float moon_angleX = 0;
float moon_angleY = 0;
float moon_angleZ = 0;

void printSolatSystem(){
  // Sun
  translate(width/2, height/2); // translate the sun on the midle of the screen
  fill(255,255,0); // fill
  sphere(100); // Draw 
  
  // Earht
  rotateX(radians(earth_angleX));
  rotateY(radians(earth_angleY));
  rotateZ(radians(earth_angleZ));

  translate(200, 0); // translate the earth on the side of the sun
  fill(0,0,255); // fill
  sphere(50); // Draw 
  
  // Earht
  rotateX(radians(moon_angleX));
  rotateY(radians(moon_angleY));
  rotateZ(radians(moon_angleZ));

  translate(150, 0); // translate the earth on the side of the sun
  fill(100); // fill
  sphere(20); // Draw 
  
}

void setup(){
  size(600, 600, P3D);
  frameRate(60);
}

void draw(){
 background(0);
 lights();
 
 printSolatSystem();
 
 // Update angle
 if(earth_angleX > 360) earth_angleX =0;
 else  earth_angleX += 1;
 
 if(earth_angleY >= 360) earth_angleY =0;
 else  earth_angleY += 0.5;
 
 if(earth_angleZ >= 360) earth_angleZ =0;
 else  earth_angleZ +=4;
 
 if(moon_angleX > 360) moon_angleX =0;
 else  moon_angleX += 1;
 
 if(moon_angleY >= 360) moon_angleY =0;
 else  moon_angleY += 0.5;
 
 if(moon_angleZ >= 360) moon_angleZ =0;
 else  moon_angleZ +=4;
}

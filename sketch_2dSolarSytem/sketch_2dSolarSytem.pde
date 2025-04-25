
float earth_angle = 0; // Angle of the earth
float moon_angle = 0;
float mars_angle = 0;
float jupiter_angle = 0;
float jupiterMoon1_angle = 0;
float jupiterMoon2_angle = 0;

float lineSize = 10;


void drawAxis(){
  stroke(255, 0, 0); 
  line(0,0,lineSize,0); // X axis
  stroke(0, 255, 0); 
  line(0,0,0, lineSize); // y axis
  stroke(0, 0, 0); 

}

void printSolarSystem(){
  // Sun
  translate(width/2, height/2); // translate the sun on the midle of the screen
  pushMatrix(); // push the origin of the sun to return later on the origin
  fill(255,255,0); // fill
  ellipse(0,0,120,120); // Draw 
  drawAxis();
  
  
  // Earht
  rotate(radians(earth_angle)); // calculate rotation with radians (pi = 180º)
  translate(140, 0); // translate the earth on the side of the sun
  fill(0,0,255); // fill
  ellipse(0,0,50,50); // Draw 
  drawAxis();
  
  
  // moon
  rotate(radians(moon_angle)); // calculate rotation with radians (pi = 180º)
  translate(40, 0); // translate the earth on the side of the sun
  fill(100); // fill
  ellipse(0,0,20,20); // Draw 
  drawAxis();
  
  popMatrix(); // Go back to previus origin pushed
  //Mars
  pushMatrix(); // push the origin of the sun again
  rotate(radians(mars_angle)); // calculate rotation with radians (pi = 180º)
  translate(220, 0); // translate the earth on the side of the sun
  fill(255,50,0); // fill
  ellipse(0,0,40,40); // Draw 
  drawAxis();
  popMatrix();
  
  //Jupiter
  rotate(radians(jupiter_angle)); // calculate rotation with radians (pi = 180º)
  translate(400, 0); // translate the earth on the side of the sun
  fill(255,200,0, 100); // fill
  ellipse(0,0,80,80); // Draw
  drawAxis();
  pushMatrix();
  
  // Jupiter Moon 1
  rotate(radians(jupiterMoon1_angle)); // calculate rotation with radians (pi = 180º)
  translate(70, 0); // translate the earth on the side of the sun
  fill(170); // fill
  ellipse(0,0,13,13); // Draw 
  drawAxis();
  popMatrix();
  
  // Jupiter Moon 2
  rotate(radians(jupiterMoon2_angle)); // calculate rotation with radians (pi = 180º)
  translate(100, 0); // translate the earth on the side of the sun
  fill(75); // fill
  ellipse(0,0,7,7); // Draw 
  drawAxis();
  
}

void setup(){
   size(1000,1000);
   frameRate(60);// force the frameRate of the exetution
   
}


void draw(){
  background(0);
  
 printSolarSystem();
 // increment the angle varabiles
 
 if(earth_angle  >= 360){
   earth_angle = 0; // reset  variable
 }else{
    earth_angle ++; // augment rotation
 }
 
 if(moon_angle  >= 360){
   moon_angle = 0; // reset  variable
 }else{
    moon_angle += 2; // augment rotation
 }
 
 if(mars_angle  >= 360){
   mars_angle = 0; // reset  variable
 }else{
    mars_angle += 0.5; // augment rotation
 }
 
 if(jupiter_angle  >= 360){
   jupiter_angle = 0; // reset  variable
 }else{
    jupiter_angle += 0.2; // augment rotation
 }
 
 if(jupiterMoon1_angle  >= 360){
   jupiterMoon1_angle = 0; // reset  variable
 }else{
    jupiterMoon1_angle += 0.6; // augment rotation
 }
 
 if(jupiterMoon2_angle  >= 360){
   jupiterMoon2_angle = 0; // reset  variable
 }else{
    jupiterMoon2_angle += 1.5; // augment rotation
 }
}

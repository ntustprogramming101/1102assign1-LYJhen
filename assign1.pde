PImage bg;
PImage soil;
PImage groundhog;
PImage life;
PImage soldier;
PImage robot;

int soliderX , soliderY;
int robotX , robotY;
int laserX , move , laserY;

void setup() {
  size(640, 480, P2D);
  bg = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
  groundhog = loadImage("img/groundhog.png");
  life= loadImage("img/life.png");
  soldier= loadImage("img/soldier.png");
  robot= loadImage("img/robot.png");
  
  soliderY = floor(random(2,6));
  robotX = floor(random(2,7));
  robotY = floor(random(2,6));
  laserX = 80*robotX;
  laserY = 80*robotY+37;
}

void draw() {
  image(bg,0,0);
  image(soil,0,160);
//grassland
  stroke(124,204,25);
  fill(124,204,25);
  rect(0,145,640,15);
//sun
  noStroke();
  fill(253,184,19);
  ellipse(590,50,120,120);
  
  strokeWeight(5);
  stroke(255,255,0);
  arc(590,50,120,120,radians(0),radians(360));
 
//groundhog
  image(groundhog,285,80);
  
//life
  image(life,10,10);
  image(life,80,10);
  image(life,150,10);
//soldier
  soliderX+=3;
  
  image(soldier,soliderX,80*soliderY);
  
  if(soliderX >= 700){
    soliderX-=780;
  }
 
//robot
  image(robot,80*robotX,80*robotY);

//laser
  stroke(255,0,0);
  strokeWeight(10);
  
  line(laserX+move,laserY,laserX+20+move,laserY);
  move -= 2;
  move %= 160;
  
}

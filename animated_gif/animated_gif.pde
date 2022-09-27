PImage[] gif;
int numberOfFrames;
int f;

void setup() {
  
  numberOfFrames = 7;
  gif = new PImage [numberOfFrames];
  
  int i = 0;
  while (  i < numberOfFrames  ) {
    gif[i] = loadImage("frame_"+i+"_delay-0.01s.gif");
    
    i= i+1;
}

size(800, 800);

}

void draw() {
  image(gif[f], 0, 0, width, height);
  println(frameCount);
  //modulus of mod
  if(frameCount % 2 == 0) f = f+ 1;
  if (f == numberOfFrames) f = 0;
  
}

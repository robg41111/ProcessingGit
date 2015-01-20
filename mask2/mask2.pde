PGraphics mask;
int WHITE = color(255);
int BLACK = color(0);

void setup() {
  size(640,140);
  
  mask= createGraphics(width, height);
  mask.beginDraw();
  mask.background(0);
  mask.ellipse(width/2,height/2,100,100);
  mask.loadPixels();
}
  
  void draw(){
    background(255,255,100);
    noStroke();
    fill(255,0,0);
    float diameter = height * 0.8;
    ellipse(mouseX,mouseY,diameter,diameter);
    maskPixels();
  }
  
  void maskPixels() {
    loadPixels();
    //int[] pxls = mask.pixels;
    for (int i = 0; i < mask.pixels.length; ++i) {
      int maskPixel = mask.pixels[i];
      if(maskPixel != WHITE) {//if mask pixel is not white
      pixels[i] = BLACK; //set the screen pixel to BLACK
      }
    }
updatePixels();    
  }

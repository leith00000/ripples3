import oscP5.*;
OscP5 oscP5;

ArrayList<Ripple> ripples;

int fps = 60;

void setup(){
  oscP5 = new OscP5(this,12000);
    
  size(1440,360,P2D);

  frameRate(fps);
  ripples = new ArrayList<Ripple>();
}

void draw(){
  
  //fill(0,15);
  //rect(0,0,height,width);
  background(255);
  
  //if(frameCount % (int(random(1,4))*fps) == 0 && ripples.size()< 10){
    if(mousePressed){
    ripples.add(new Ripple());
  }
  
  for(int i = ripples.size()-1; i >= 0; i--){
    
   Ripple r = ripples.get(i);
   
   r.drw();
   
   if(r.xLim()){
     ripples.remove(i);
   }
  
    }
    
  }
  
  void mouseReleased(){
    ripples.add(new Ripple());
  }
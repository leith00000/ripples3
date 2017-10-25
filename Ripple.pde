class Ripple{
  
 
  private float xMove = 0;
  private int xPos = 0;
  
  
  
  Ripple(){
    
    stroke(100,80);
    strokeWeight(5);
    smooth();
    noFill();
    xMove = random(6);
    
  }//end constructor
  
  void drw(){
    
    xMove-=.001;
    pushMatrix();
    translate(xPos+=xMove,0);
    
    curve(0,0,xPos,2,xPos,height-2,0,height);
    
    popMatrix();
  }//end drw
  
  boolean xLim(){
    return(xPos >= width || xPos < 0);
  }// end xLim
    
}//end Ripple class
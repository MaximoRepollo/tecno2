class Veldir{
  float posX;
  float posY;
  float prevposX;
  float prevposY;
  float midX;
  float midY;
  float vel;
  float polar;
  
  Veldir (){
    this.posX=0;
    this.posY=0;
  }
  void calculo (float mX, float mY){
    prevposX=posX;
    prevposY=posY;
    posX=mX;
    posY=mY;
    midX = posX-prevposX;
    midY = posY-prevposY;
    polar = degrees(atan2(posY-prevposY,posX-prevposX ));
    vel= dist(posX, posY, prevposX,prevposY);
    
  }
}

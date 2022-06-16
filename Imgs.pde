
class imagenes{
  float x,y,tam1,tam2,dir;
  float Xim , Yim , velocidad;
  float ang, vel;
  color co;
  Veldir veloci;
  PImage  img ;
  imagenes(color col_, int cual){
    co = col_;
    veloci = new Veldir();
    tam1 = random(150,250);
    tam2 = random(160,250);
    img = loadImage(""+cual+".png");
    ang = 0;
    vel = 0.1;
    ubic();
    
  }
  void ubic(){
    Xim=random(0,width-img.width-5);
    Yim =random(500,800);
    
  }
  void impr(int Im, Float tra,float rot){
    pushMatrix();
    pushStyle();
    translate(Xim,Yim);
    textAlign(CENTER);
    imageMode(CENTER);
    tint(co, tra);
    rotate(radians(ang)); 
    image(img,0,0,tam1,tam2);
    ang = ang + vel+rot;
    popStyle();
    popMatrix();
    
  }
  void rotar(){
    //rotate(radians(ang)); 
    ang-=2;
  }
   
  void move0(){
    veloci.calculo(mouseX,mouseY);
    velocidad = random(0.6,1.7);
    Yim = Yim-velocidad;
    //tam2 += veloci.direccionY()/10;
    //tam1 -= veloci.direccionX()/10;
  }
   void move1(){
    veloci.calculo(mouseX,mouseY);
    velocidad = random(0.7,1.6) ;
    Yim = Yim-velocidad;
    //tam2_ += veloci.direccionY()/10;
    //tam1_ -= veloci.direccionX()/10;
  }
   void move2(){
    veloci.calculo(mouseX,mouseY);
    velocidad = random(0.5,1.3) ;
    Yim = Yim-velocidad;
   // tam2_ += veloci.direccionY()/10;
   // tam1_ -= veloci.direccionX()/10;
  }
   void move3(){
    veloci.calculo(mouseX,mouseY);
    velocidad = random(0.7,1.3) ;
    Yim = Yim-velocidad;
  //  tam2_ += veloci.direccionY()/10;
    //tam1_ -= veloci.direccionX()/10;
  }
   void move4(){
    veloci.calculo(mouseX,mouseY);
    velocidad = random(0.6,1.5) ;
    //+ veloci.velocidad()/3;
    Yim = Yim-velocidad;
   // tam2_ += veloci.direccionY()/10;
   // tam1_ -= veloci.direccionX()/10;
  }
  void direc(){
    //dir++;
  }
    void limite(){
      if (Yim<= -200){
        Yim=random(1000,800);
        Xim=random(0,width-20);
      }
    }
  
  }

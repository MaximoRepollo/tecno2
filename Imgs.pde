
float x,y,tam1,tam2;
class imagenes{
  PImage [] img = new PImage[5];
  
  imagenes(){
    tam1_ = 250;
    tam2_ = 250;
    img[0]= loadImage("azul.png" );
    img[1]= loadImage("gris.png" );
    img[2]= loadImage("gris2.png" );
    img[3]= loadImage("roja.png");
    img[4]= loadImage("rosa.png");
    ubic();
  }
  void impr(int Im){
    translate(x,y);
    image(img[Im],0,0,tam1_,tam2_); 
  }
   void ubic(){
    x=random(50,200);
    y=random(100,200);
    
  }
    
  }

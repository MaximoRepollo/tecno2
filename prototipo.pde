Veldir veloydirec;
imagenes imag;
Gen generador;
float tam1_,tam2_,X,Y;
void setup(){
  size(1000,800);
  veloydirec = new Veldir();
  imag = new imagenes();
  generador = new Gen();
}

void draw(){
  background(255,255,255);
  for(int i=0; i<5; i=i+1){
    imag.impr(i);
  }
  veloydirec.calculo(mouseX,mouseY);
  
      }            
  

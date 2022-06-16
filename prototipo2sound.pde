//TP1 TECNO 2 Integrantes: Maximo Repollo,Justin Perez,Flor Obregon.
import netP5.*;
import oscP5.*;
OscP5 osc;
Veldir veloydirec;
imagenes[] imag;
Paleta plt;
float tam1_,tam2_,X,Y,trs,rott;
GestorSenial gestorAmp;
GestorSenial gestorPitch;
float f = 0.9;
float amp = 0.0;
float pitch = 0.0;

float minimoAmp = 65  ;
float maximoAmp = 98;

float minimoPitch =70;
float maximoPitch =96;

boolean monitor = false;
boolean voz;
int cantimg;
void setup(){
  trs=200;
  cantimg = 5;
  size(400,600,P2D);
  gestorAmp = new GestorSenial( minimoAmp, maximoAmp);
  gestorPitch = new GestorSenial(minimoPitch, maximoPitch );
  plt = new Paleta("obra2.jpg");
  veloydirec = new Veldir(); 
  osc = new OscP5(this , 12345);
  imag = new imagenes[cantimg];
  for(int i=0; i<cantimg; i=i+1){
    imag[i] = new imagenes(plt.darUnColor(220), i%5);
  }
}

void draw(){
  rott = 0;
  voz=false;
  background(#FAF6E6);
  gestorAmp.actualizar(amp);
  gestorPitch.actualizar(pitch);
  
  if (monitor) {
    gestorAmp.imprimir( 150,150 );
    gestorPitch.imprimir( 150,350);
  }
  
  veloydirec.calculo(mouseX,mouseY);
  
  for(int i=0; i<5; i=i+1){
    imag[0].impr(0,trs,rott);
    imag[1].impr(1,trs,rott);
    imag[2].impr(2,trs,rott);
    imag[3].impr(3,trs,rott);
    imag[4].impr(4,trs,rott);
    imag[0].move0();
    imag[1].move1();
    imag[2].move2();
    imag[3].move3();
    imag[4].move4();
    imag[i].limite();
    if (voz){
      imag[i].rotar();
    }
     

  }
  if (voz){
    imag[1].direc();
    imag[2].direc();
    imag[3].direc();
    imag[4].direc();
  }
  
}
void oscEvent( OscMessage m){
  if(m.addrPattern().equals("/pitch")){
    if (pitch>70 && amp>60){
      voz=true;
    }
    pitch = m.get(0).floatValue();
     println("pitch: " + pitch);
     imag[0].tam1 = pitch*1.5;
     
     
     imag[1].tam1 = pitch*2;
     imag[3].velocidad = imag[3].velocidad;
     
     imag[2].tam1 = pitch*2;
     
     imag[2].velocidad += amp/2;
     imag[3].tam1 = pitch*2;
     
     
     imag[4].tam1 = pitch*2;
    
     imag[4].velocidad += amp/2;
     trs = pitch*1.5;
    
  }
  if(m.addrPattern().equals("/amp")){
    
    amp = m.get(0).floatValue();
    if (amp>60){
      imag[3].velocidad += amp/2;
    imag[2].tam2 = amp*2.5 ;
    imag[3].tam2 = amp*2.5 ;
    imag[0].tam2 = amp*2.5 ;
     imag[4].tam2 = amp*2.5 ;
     imag[1].tam2 = amp*2.5 ;
    }
    if (amp>70){
      imag[1].rotar();
      imag[3].rotar();
    }
    println("amp: " + amp );
  }
}
  

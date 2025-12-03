//CLASS

class Botao{
  //properties
  float posX, posY, extentX, extentY;
  String text1, text2;
  color cor;
  
  //constructor
  Botao(String t1, String t2, color c) {
    extentX = 500;
    extentY = 200;
    posY = height/2;
    text1 = t1;
    text2 = t2;
    cor = c;
  }
  
  //methods
  void show() {
    rectMode(CENTER);
    textAlign(CENTER,CENTER);
    textSize(100);    
    //mouse Hover
    if (mouseX < width/2-400+extentX/2 && mouseX > width/2-400-extentX/2 && mouseY < posY+extentY/2 && mouseY > posY-extentY/2) {
      noStroke();
      fill(255,0,0,150);
      rect(width/2-400, posY, extentX, extentY);
    } else {
      stroke(0);
      fill(cor,150);
      rect(width/2-400, posY, extentX, extentY);
    }
    if (mouseX < width/2+400+extentX/2 && mouseX > width/2+400-extentX/2 && mouseY < posY+extentY/2 && mouseY > posY-extentY/2) {
      noStroke();
      fill(255,0,0,150);
      rect(width/2+400, posY, extentX, extentY);
    } else {
      stroke(0);
      fill(cor,150);
      rect(width/2+400, posY, extentX, extentY);
    }
    
    //texto
    fill(0,150);
    text(text1, width/2-400, posY);
    text(text2, width/2+400, posY);
  }
}

class Walker{

  int x,y;
  
  Walker(){
    x = width/2;
    y = height/2;
  }
  
  void render(){
    stroke(0);
    point(x,y);
  }
  
  void step(){
    float choice = random(1);
    
    // aplicando a probabilidade
    // 50% direita
    // 15% pra cima
    // 15% pra baixo
    // 20% pra esquerda
    
    if(choice < 0.5){
     x++; 
    }
    else if(choice < 0.8){
      x--;
    }
    else if(choice < 0.9){
      y++;
    }
    else{
      y--;
    }
    
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}

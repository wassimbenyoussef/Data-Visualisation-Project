void drawButtons(){
  
  if(dataHIV){
    strokeWeight(8);
    fill(#C90C32);
  }
  else{
    strokeWeight(3);
    fill(#C90C32,120); 
  }
  rect(12,400,270,40,10);
  if(dataHIV){
    fill(255);
  }
  else{
    fill(0);
  }
  text("% of the population aged between 15 and 45", 18,415);
  text(" years old living with HIV",80, 430);
  
  if(dataMalaria){
    strokeWeight(8);
    fill(#0E47A7);
  }
  else{
    strokeWeight(3);
    fill(#0E47A7,70);
  }
  rect(12,450,270,40,10);
  if(dataMalaria){
    fill(255);
  }
  else{
    fill(0);
  }
  text("Reported Malaria deaths",70,472);
  strokeWeight(1);
}

void mousePressed(){
  if(12 < mouseX && mouseX < 267 && mouseY < 440 && 400 < mouseY){
    dataHIV = true;
    dataMalaria = false;
  }
  if(12 < mouseX && mouseX < 267 && mouseY < 490 && 450 < mouseY){
    dataHIV = false;
    dataMalaria = true;
  }
}
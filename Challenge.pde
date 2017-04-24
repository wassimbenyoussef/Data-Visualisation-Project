import org.gicentre.utils.gui.*;
import org.gicentre.utils.stat.*;
XYChart Chart;

PImage img;
Table HIV;
Table countryLocation;
Table Malaria, Malaria2;
float dataMin;
float dataMax;
PVector[] btnPos;
Boolean dataHIV, dataMalaria,drawMap,drawChart;
String year = "2011";
TextInput textInput;    // User input.
TableRow search_HIV, search_Malaria;
// HIV percentage by Country
void setup(){
  Chart = new XYChart(this);
  dataHIV = true;
  dataMalaria = false;
  search_Malaria = null;
  search_HIV=null;
  size(1200,550);
  img= loadImage("worldCountries.png");
  HIV= loadTable("HIV2.csv","header");
  Malaria = loadTable("test.csv","header");
  Malaria2 = loadTable("malaria.csv","header");
  countryLocation = loadTable("countryLocations.tsv","header,tsv");
  btnPos = new PVector[4];
  btnPos[0] = new PVector(30, 390);
  btnPos[1] = new PVector(30, 435);
  btnPos[2] = new PVector(30, 480);
  btnPos[3] = new PVector(30, 535);
  PFont font = createFont("sans-serif",12);
  textInput = new TextInput(this,font,12);
  drawMap = true;
  drawChart=false;
  

}

void draw(){
  background(255);
  stroke(1);
  strokeWeight(1);
if(drawMap){
  image(img,0,0,width,height);
  drawRect();
  dragYears();
  drawButtons();
  drawHIV();
  drawMalaria();

  strokeWeight(0.1);
  stroke(0);
  fill(0,200);
  rect(5,5,245,60,8);
  fill(255);
  text("Type in a country name and press Enter:",10,20);
  textInput.draw(10,40);
}
if(drawChart){
  if(search_Malaria!=null){
    newsketch_Malaria();
  }
  if(search_HIV!=null){
    newsketch_HIV();
  }
}
}



    
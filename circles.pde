 
 void drawHIV(){
  if(dataHIV){
     
  for (int row=0; row<HIV.getRowCount();row++)
 {
   dataMin= min(dataMin,HIV.getFloat(row,year));
   dataMax= max(dataMax,HIV.getFloat(row,year)); 

   String CountryName= HIV.getString(row,"CountryName");
   float data= HIV.getFloat(row,year);
   float circleSize = map(data,dataMin,dataMax,4,40);
   fill(255,0,0,circleSize*8);  
  TableRow countryrow= countryLocation.findRow(CountryName,"CountryName");

  if (countryrow != null){
    float latitude= countryrow.getFloat("latitude");
    float longitude= countryrow.getFloat("longitude");
    float Y= map(latitude,-60,85,height,0);
    float X = map(longitude,-180,180,0,width);
    ellipse(X,Y,circleSize,circleSize);
  
    }

  
  
 }
 for (int row=0; row<HIV.getRowCount();row++){
   String CountryName= HIV.getString(row,"CountryName");
   float data= HIV.getFloat(row,year);
   float circleSize = map(data,dataMin,dataMax,4,40);
  
  TableRow countryrow= countryLocation.findRow(CountryName,"CountryName");
  TableRow hivrow= HIV.findRow(CountryName,"CountryName");
  if (countryrow != null){
    float latitude= countryrow.getFloat("latitude");
    float longitude= countryrow.getFloat("longitude");
    float Y= map(latitude,-60,85,height,0);
    float X = map(longitude,-180,180,0,width);
    if(dist(mouseX,mouseY,X,Y) < circleSize/2 + 1 ){
      if(960<mouseX){
        fill(#F08593);
        strokeWeight(2);
        Float i = hivrow.getFloat(year);
        rect(mouseX-220,mouseY-50,220,50,8);
        fill(0);
        textSize(11);
        text("Country: ",mouseX-210,mouseY-39);
        text(hivrow.getString(0),mouseX-160,mouseY-39);
        text("Percentage of people with HIV in",mouseX-210,mouseY-28);
        text(year,mouseX-32,mouseY-28);
        text(":",mouseX-5,mouseY-28);
        text(i, mouseX-200, mouseY-17);
        strokeWeight(1);
        textSize(12);

      }
      else if(mouseX<400&&400<mouseY){
        fill(#F08593);
        strokeWeight(2);
        Float i = hivrow.getFloat(year);
        rect(mouseX,mouseY-50,220,50,8);
        fill(0);
        textSize(11);
        text("Country: ",mouseX+10, mouseY-39);
        text(hivrow.getString(0),mouseX+60,mouseY-39);
        text("Percentage of people with HIV in",mouseX+5,mouseY-28);
        text(year,mouseX+185,mouseY-28);
        text(":",mouseX+215,mouseY-28);
        text(i, mouseX+21, mouseY-17);
        strokeWeight(1); 
        textSize(12);
        
      }
      else{

        fill(#F08593);
        strokeWeight(2);
        Float i = hivrow.getFloat(year);
        rect(mouseX+10,mouseY+10,220,50,8);
        fill(0);
        textSize(11);
        text("Country: ", mouseX+18, mouseY+22);
        text(hivrow.getString(0),mouseX+70,mouseY+22);
        text("Percentage of people with HIV in",mouseX+18,mouseY+34);
        text(year,mouseX+195,mouseY+34);
        text(":", mouseX+222, mouseY+34);
        text(i, mouseX+24, mouseY+46);
        strokeWeight(1); 
        textSize(12);
        
      }
      
    }
  }
 }   
    
    
 }
   
   
   
 }
 
 void drawMalaria(){
   if(dataMalaria){
          
  for (int row=0; row<Malaria.getRowCount();row++)
 {
   dataMin= min(dataMin,Malaria.getFloat(row,year));
   dataMax= max(dataMax,Malaria.getFloat(row,year)); 

   String CountryName= Malaria.getString(row,"CountryName");
   float data= Malaria.getFloat(row,year);
   float circleSize = map(data,dataMin,dataMax,4,90);
  
  TableRow countryrow= countryLocation.findRow(CountryName,"CountryName");

  if (countryrow != null){
    float latitude= countryrow.getFloat("latitude");
    float longitude= countryrow.getFloat("longitude");
    float Y= map(latitude,-60,85,height,0);
    float X = map(longitude,-180,180,0,width);
    fill(0,0,255,circleSize*10);
    ellipse(X,Y,circleSize,circleSize);
  
    }

  
  
 }
 for (int row=0; row<Malaria.getRowCount();row++){
   String CountryName= Malaria.getString(row,"CountryName");
   float data= Malaria.getFloat(row,year);
   float circleSize = map(data,dataMin,dataMax,4,90);
  
  TableRow countryrow= countryLocation.findRow(CountryName,"CountryName");
  TableRow Malariarow= Malaria.findRow(CountryName,"CountryName");
  TableRow Malariarow2= Malaria2.findRow(CountryName,"CountryName");
  if (countryrow != null){
    float latitude= countryrow.getFloat("latitude");
    float longitude= countryrow.getFloat("longitude");
    float Y= map(latitude,-60,85,height,0);
    float X = map(longitude,-180,180,0,width);
    if(dist(mouseX,mouseY,X,Y) < circleSize/2 + 1 ){
      if(940<mouseX){
        fill(#A9CCF0);
        strokeWeight(2);
        Float i = Malariarow.getFloat(year);
        rect(mouseX-270,mouseY-50,270,50,8);
        fill(0);
        textSize(11);
        text("Country: ", mouseX-260, mouseY-35);
        text(Malariarow.getString(0),mouseX-210,mouseY-35);
        text("Number of deaths caused by Malaria in",mouseX-260,mouseY-22);
        text(year,mouseX-48,mouseY-22);
        text(":",mouseX-20,mouseY-22);
        text(i, mouseX-240, mouseY-10);
        strokeWeight(1);
        textSize(12);

      }
      else if(mouseX<400&&400<mouseY){
        fill(#A9CCF0);
        strokeWeight(2);
        Float i = Malariarow.getFloat(year);
        rect(mouseX,mouseY-50,270,50,8);
        fill(0);
        textSize(11);
        text("Country: ", mouseX+10, mouseY-35);
        text(Malariarow.getString(0),mouseX+65,mouseY-35);
        text("Number of deaths caused by Malaria in",mouseX+10,mouseY-25);
        text(year,mouseX+222,mouseY-25);
        text(":",mouseX+250,mouseY-25);
        text(i, mouseX+20, mouseY-12);
        strokeWeight(1);        
        textSize(12);
        
        
      }
      else{
        fill(#A9CCF0);
        Float i = Malariarow2.getFloat(year);
        strokeWeight(2);
        rect(mouseX+10,mouseY+10,270,50,8);
        fill(0);
        textSize(11);
        text("Country: ", mouseX+15, mouseY+25);
        text(Malariarow.getString(0),mouseX+65,mouseY+25);
        text("Number of deaths caused by Malaria in",mouseX+15,mouseY+37);
        text(year,mouseX+227,mouseY+37);
        text(":",mouseX+255,mouseY+37);
        text(i, mouseX+25, mouseY+50);
        strokeWeight(1);
        textSize(12);
      }
      
    }
  }
 }  
     
     
   }
   
   
 }
void keyPressed()
{
 // if(drawMap){
    if(keyCode == ENTER || keyCode == RETURN){
      
      findPlace(textInput.getText());
      if(dataMalaria){
        if(search_Malaria == null){
          text(" No country found",10,35);
  
        }
        else{
          drawMap = false;
          drawChart = true;
        }
      }
        
      if(dataHIV){
        if(search_HIV==null){
          text(" No country found",10,35);
     
        }
        else{
          drawMap = false;
          drawChart = true;
        }
      }
    }
      textInput.keyPressed();
      if(keyCode == BACKSPACE){
      drawChart = false;
      drawMap = true;
      search_Malaria = null;
      search_HIV=null;

    
  }
      
  
  
    loop(); 


}

void findPlace(String CountryName)
{
  if(dataHIV){
    TableRow HIV_result = HIV.findRow(CountryName, "CountryName");
    search_HIV = HIV_result;
  }
  if(dataMalaria){
    TableRow Malaria_result = Malaria2.findRow(CountryName, "CountryName");
    search_Malaria = Malaria_result;
  }
    
  

}

void newsketch_Malaria(){
  if(dataMalaria && search_Malaria != null){
    background(255); 
    Chart.setData(new float[]{1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011},
    new float[]{search_Malaria.getFloat("1990"),search_Malaria.getFloat("1991"),search_Malaria.getFloat("1992"),search_Malaria.getFloat("1993"),search_Malaria.getFloat("1994"),
    search_Malaria.getFloat("1995"),search_Malaria.getFloat("1996"),search_Malaria.getFloat("1997"),search_Malaria.getFloat("1998"),search_Malaria.getFloat("1999"),
    search_Malaria.getFloat("2000"),search_Malaria.getFloat("2001"),search_Malaria.getFloat("2002"),search_Malaria.getFloat("2003"),search_Malaria.getFloat("2004"),
    search_Malaria.getFloat("2005"),search_Malaria.getFloat("2006"),search_Malaria.getFloat("2007"),search_Malaria.getFloat("2008"),search_Malaria.getFloat("2009"),
    search_Malaria.getFloat("2010"),search_Malaria.getFloat("2011")});
               
    Chart.showXAxis(true);
    Chart.showYAxis(true);
//    Chart.setMinY(0);
    Chart.setYFormat("###,###");  
    Chart.setXFormat("0000");      
    Chart.setPointColour(color(#2D0DB2));
    Chart.setPointSize(5);
    Chart.setLineWidth(2);
    Chart.setLineColour(color(#4298EA));
    Chart.draw(25, 25, width-50, height-50);
    fill(120);
    textSize(20);
    text("Number of deaths caused by Malaria in ", 70,30);
    text(search_Malaria.getString(0),455,30); 
    textSize(12);


    
  }
  
}

void newsketch_HIV(){
  if(dataHIV && search_HIV != null){
      background(255);
    Chart.setData(new float[]{1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011},
    new float[]{search_HIV.getFloat("1990"),search_HIV.getFloat("1991"),search_HIV.getFloat("1992"),search_HIV.getFloat("1993"),search_HIV.getFloat("1994"),
    search_HIV.getFloat("1995"),search_HIV.getFloat("1996"),search_HIV.getFloat("1997"),search_HIV.getFloat("1998"),search_HIV.getFloat("1999"),
    search_HIV.getFloat("2000"),search_HIV.getFloat("2001"),search_HIV.getFloat("2002"),search_HIV.getFloat("2003"),search_HIV.getFloat("2004"),
    search_HIV.getFloat("2005"),search_HIV.getFloat("2006"),search_HIV.getFloat("2007"),search_HIV.getFloat("2008"),search_HIV.getFloat("2009"),
    search_HIV.getFloat("2010"),search_HIV.getFloat("2011")});
               
    Chart.showXAxis(true);
    Chart.showYAxis(true);
//    Chart.setMinY(0);
    Chart.setYFormat("####,####"); 
    Chart.setXFormat("0000");      
    Chart.setPointColour(color(#FF0D00));
    Chart.setPointSize(5);
    Chart.setLineWidth(2);
    Chart.setLineColour(color(#FF675F));
    
    Chart.draw(25, 25, width-50, height-50);

    fill(120);
    textSize(20);
    text("% of HIV prevalence in ", 70,30);
    text(search_HIV.getString(0),290,30); 
    textSize(11);
    text("Percentage of the population between 15 and 45 years old with HIV",70,45);
    textSize(12);
  }
}
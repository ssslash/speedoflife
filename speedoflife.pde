GUI gui;
XMLReader xmlReader;
ArrayList countries;

void setup() { 
  gui = new GUI();
  xmlReader = new XMLReader();
  xmlReader.importData("countries.xml");
  countries = xmlReader.getCountries();
  CountryData country = (CountryData)countries.get(1);
  println(country.getEconomy_gni());
  
  size(640,480);
  smooth();
}

void draw() {

}


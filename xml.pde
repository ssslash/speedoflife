class XMLReader {
    XML xml;

  XML xml;
  ArrayList countries;
  // Constructor
  XMLReader(String file) { 
  XMLReader() { 
    
  }

  void importData(String file) {
    xml = loadXML(file);
    
    int num = xml.getChildCount();
    for (int i = 0; i < num; i++) {
      println("lala" + num);    
    int countryNum = xml.getChildCount();
    countries = new ArrayList();

    for (int i = 0; i < countryNum; i++) {
      ArrayList countryArray = new ArrayList();

       
        XML country = xml.getChild("country");   
        XML economy = country.getChild("economy");
          String gni = economy.getString("gni");
          countryArray.add("data_economy");
        XML industrialisation = country.getChild("industrialisation");   
          String rd = industrialisation.getString("rd");
        XML population = country.getChild("population");   
          String population_amount = population.getString("amount");
        XML density = country.getChild("density");    
          String density_amount = density.getString("amount");
        XML climate = country.getChild("climate");   
        
        //println(gni + " // " + gni_pp);
        CountryData data = new CountryData(12);
        countries.add(data);

    }
    
  }
  
  ArrayList getCountries() {
    return countries;
  }

}

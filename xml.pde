class XMLReader {
    XML xml;

  // Constructor
  XMLReader(String file) { 
    xml = new XML(file);
    int num = xml.getChildCount();
       

    for (int i = 0; i < num; i++) {
       
      println("lala" + num);    
    }
    
  }

}

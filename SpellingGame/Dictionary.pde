import java.io.*;
import java.lang.*;
/**
*contains the words and their descriptions
*/
class Dictionary{
  String[] lines;
  public Map<String, String> farm_animals = new TreeMap<String, String>();
  //String filename = "farm_animals.txt";
  Dictionary(String filename){
    lines = loadStrings(filename);
    for (int i=0; i< lines.length; i++){
      String[] elements = split(lines[i], ":");
      String key1 = elements[0];
      String value = elements[1];
      //printArray(elements);
      farm_animals.put(key1, value);
      
      
    }
    println(farm_animals);
  }
  
}

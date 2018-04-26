import java.io.*;
import java.lang.*;
import java.util.*;
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
    //println(farm_animals);
    
      
    //pickOne();
  }
  void display(){
    //text(value2, 70,80);
    
    
  }
  String pickVal(){
    Map.Entry<String, String>[] keys = farm_animals.entrySet().toArray(new Map.Entry[0]);
    Random rand = new Random();
    Map.Entry<String, String> keyValue = keys[rand.nextInt(keys.length)];
    String value2 = keyValue.getValue();
    return value2;
  }
  String pickKey(){
    return "hey";
  }
  
}

import java.io.*;
import java.lang.*;
import java.util.*;
/**
* creates an ArrayList of the words and their 
* descriptions that acts as the description
*/
class Dictionary{
  String[] lines;
  ArrayList <ArrayList<String>> farm_animals;
  Dictionary(String filename){
    farm_animals = new ArrayList<ArrayList<String>>();
    lines = loadStrings(filename);
    //populate the dictionary
    for (int i=0; i< lines.length; i++){
      ArrayList<String> list = new ArrayList<String>(); 
      String[] elements = split(lines[i], ":");
      String key1 = elements[0];
      String value = elements[1];
      list.add(key1);
      list.add(value);
      farm_animals.add(list);  
      
      
    }
  }
  
  
}

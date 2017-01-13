public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String sWord)
{ 
  // String s = new String();
  String a = new String();
  String u = new String();
  //reverses the word's characters
  // for(int f = sWord.length()-1; f>=0; f--){
  //   s = s + sWord.charAt(f);
  // }
  //takes away spaces
  for(int i = 0; i<sWord.length(); i++){
    String b = sWord.substring(i,i+1);
    if(b.equals(" ")==false){
      a = a+b;
    }
  }
  for(int i = 0; i<a.length(); i++){
    if(Character.isLetter(a.charAt(i))==true){
      u = u+a.charAt(i);
    }
  }
  String p = u.toLowerCase();

  if(p.equals(reverse(sWord))){
    return true;
  }

  return false;
}
public String reverse(String sWord){
  String s = new String();
  String a = new String();
  String u = new String();
  for(int f = sWord.length()-1; f>=0; f--){
    s = s + sWord.charAt(f);
  }
  for(int i = 0; i<s.length(); i++){
    String b = s.substring(i,i+1);
    if(b.equals(" ")==false){
      a = a+b;
    }
  }
  for(int i = 0; i<a.length(); i++){
    if(Character.isLetter(a.charAt(i))==true){
      u = u+a.charAt(i);
    }
  }
  return u.toLowerCase();

  
}



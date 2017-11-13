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
public boolean palindrome(String word)
{
  if (removeStuff(word).equals(reverse(word))) {
    return true;
  }
  //check to see if the word with stuff removed is equal to the reverse of that word
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--) {
      sNew+=str.substring(i-1,i); //reverses word
    }
    sNew = removeStuff(sNew); //removes all the clutter
    return sNew.toLowerCase(); //returns the string but in lower case
}

public String removeStuff(String str) {
    String sNew = new String();
    for(int i = 0; i < str.length(); i++) {
      if (!str.substring(i,i+1).equals(",") && !str.substring(i, i+1).equals(" ") && !str.substring(i, i+1).equals("'") && !str.substring(i, i+1).equals("!")) {
        sNew+=str.substring(i,i+1);
      }
      //checks to see if the characetr at i is a comma, space, apostrophe, or exclamation point. If not, adds the character to the new string. If is, does nothing with character.
    }
    return sNew.toLowerCase(); //returns stuff removed and lower cased.
}
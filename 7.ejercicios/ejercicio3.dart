/*Validar si una cadena es un palíndromo o no.*/


main(){
  String word_to_check='Oro';
  print(esPalindromo(word_to_check));
 
}

String esPalindromo(String word){
   String reversedWord=word.toLowerCase().split('').reversed.join();
  
  if(reversedWord == word.toLowerCase()){
    return '$word es palíndromo';
    }
  else{
    return '$word no es palíndromo';
    };
}
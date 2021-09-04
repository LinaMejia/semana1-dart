void main() {
  int edadInt=23;
  double puntosDouble=10.2;
  num edadNum=puntosDouble;
  
  print(edadNum);
  
  
  //string
  var texto1 ='valor con comilla simple';
  var texto2 ="valor con comilla doble";
  var texto3 ="It's easy to escape the string delimiter";
  var texto4 ='It\'s easy to escape the string delimiter';

  
  //concatenar
  var texto6="me uno con"+",este otro valor";
  var texto7="me uno con"",este otro valor";
    
  //interpolar
  var texto5="el resultado de sumar 3+3 es ${3+3}";
  var variableTipoNumero = 50;
  var texto8="el valor de la variableTipoNumero es $variableTipoNumero";
  var texto9="comillas en texto \'$texto5'";
  
  // multilínea
  var texto10 = '''este es un texto muy largo para
                  escribir en una sola línea
                ''';
  
  //texto raw
  var texto11=r'Mostrar este caracter \';
  
  print(texto1);
  print(texto2);
  print(texto3);
  print(texto4);
  print(texto5);
  print(texto6);
  print(texto7);
  print(texto8);
  print(texto9);
  print(texto10);
  print(texto11);



}
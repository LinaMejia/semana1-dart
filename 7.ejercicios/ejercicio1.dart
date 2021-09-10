  /*
    Crear una lista dinámica de 6 elementos, en la cual se recolectarán edades
    de personas. Como resultado el programa mostrará la edad mayor, menor y
    el promedio de edades ingresadas.
  */

import 'dart:math';

main() {
  
  var list = List<int>.generate(100, (i) => i)..shuffle();
  list = list.take(6).toList();
  print(list);
  
  
  int min_age=list.reduce(min);
  int max_age=list.reduce(max);
  double avg_age = (list.reduce((curr, next)=> curr+next)/6);
  print('La edad mayor: $max_age');
  print('La edad menor: $min_age');
  print('la edad promedio es: $avg_age');
}
/*Por ejemplo tiene una lista guardada en una variable:
a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
Escriba un código de Dart que tome esta lista y cree una nueva lista que contenga
solo los elementos pares de esta lista.*/


main(){

List<int> lista=[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  
  
 List<int> pair_values = [];
 lista.forEach((v){
   if(v%2==0){
     pair_values.add(v);
   }
 });
print('los valores par son:$pair_values');
}
/* Tome dos listas, por ejemplo:
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
y escriba un programa que devuelva una lista que contenga solo los
elementos que son comunes entre ellos (sin duplicados). Asegúrese de que
su programa funcione en dos listas de diferentes tamaños.*/

main(){

var lista1=[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
var lista2=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  
var a = lista1.toSet();
var b = lista2.toSet();
  
 List<int> common_values = [];
 a.forEach((v){
   if(b.contains(v)){
     common_values.add(v);
   }
 });
print('los valores en común son:$common_values');
}
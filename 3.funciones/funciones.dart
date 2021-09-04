String obtenerNombre(String valor){
    return 'valor función $valor';
}



obtenerNombreFlecha(String valor) => print('valor función $valor');


String obtenerNombreNamedParameter({String valor='Lina', String? valor2, required String valor3}){
    return 'Mi nombre es $valor y $valor2';
}

parametrosOpcionales(String valor1, [int? valor2]){
  return  valor1;
}

void main(){
    print(obtenerNombre("Lina"));
    print(obtenerNombreNamedParameter(valor3: "León"));
    print(parametrosOpcionales("Lina",23));
    obtenerNombreFlecha("Isabel");
  
  
    var miFuncionAnonima = (String valor){
        return valor;
    };
  
    print(miFuncionAnonima("hello"));
    
      
      
      
}
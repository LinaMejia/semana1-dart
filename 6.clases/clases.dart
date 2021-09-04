class Persona{
    String nombre;
    String apellido;
    int edad;
    Persona(this.nombre, this.apellido, this.edad);
  
    Persona.completo({required this.nombre, this.apellido="herrera", this.edad=60});
}


class Padre extends Persona{
  int hijos;
  Padre({required this.hijos}): super.completo(nombre:'Isabel');
}


abstract class Vehiculo{
    String? placa;


    bool VehiculoEncendido();
}


class Taxi extends Vehiculo{
    bool VehiculoEncendido() => true;
}

void main(){
    var persona = Persona('Lina', 'Leon', 23); //new opcional para crear instancia
    
  
  var elPadre = Padre(hijos:5);
  print(persona);
  print(persona.nombre);
  print(elPadre.nombre);
  
  var vehiculoTaxi = Taxi();
  
  print(vehiculoTaxi.placa);
}





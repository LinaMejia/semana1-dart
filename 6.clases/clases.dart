class Persona{
    String nombre;
    String apellido;
    int edad;
    Persona(this.nombre, this.apellido, this.edad);
  
    Persona.completo({required this.nombre, this.apellido="herrera", this.edad=60});
}


class Padre extends Persona{
  int hijos; //_ indica privado ex: int _hijos
  Padre({required this.hijos}): super.completo(nombre:'Isabel');
}

class Empleado implements Persona{
  
    @override
    String apellido;
  
    @override
    String nombre;

    @override
    int edad;


    Empleado(this.nombre, this.apellido, this.edad);
}


abstract class Vehiculo{
    String? placa;


    bool VehiculoEncendido();
}


class Taxi extends Vehiculo with Terrestre{
    bool VehiculoEncendido() => true;
}


mixin Terrestre{
  int? llantas;
  int? kilometraje;
  
  tipoDeVehiculo(){
    return "Terrestre";
  }
}

mixin Acuatico{
  int? motores;
  
  tipoDeVehiculo(){
    return "Acuatico";
  }
}

class Lancha extends Vehiculo with Acuatico{
  bool VehiculoEncendido() => true;
}

void main(){
    var persona = Persona('Lina', 'Leon', 23); //new opcional para crear instancia
    
  
  var elPadre = Padre(hijos:5);
  print(persona);
  print(persona.nombre);
  print(elPadre.nombre);
  
  var vehiculoTaxi = Taxi();
  vehiculoTaxi.llantas=4;
  
  
  var lancha = Lancha();
  lancha.motores = 2;
  print(lancha.tipoDeVehiculo());
  
  print(vehiculoTaxi.placa);
}
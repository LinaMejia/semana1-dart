class Persona{
    String nombre;
    String apellido;
    int edad;
    Persona(this.nombre, this.apellido, this.edad);
}


class Padre extends Persona{
  int hijos;
  Padre({required this.hijos}): super('Lina', 'Leon', 23);
}


void main(){
    var persona = Persona('Lina', 'Leon', 23); //new opcional para crear instancia
    
  
  var elPadre = Padre(hijos:5);
  print(persona);
  print(persona.nombre);
  print(elPadre.nombre);
}

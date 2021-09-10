/* Realizar un programa que implemente herencia y mixin del siguiente
diagrama. Los resultados por consola deben evidenciar el uso de extend y
mixin.
Cada clase debe tener mínimo un método y tres atributos.*/




mixin Dibujar{
    void dibujar(){
        print('Estoy dibujando');
    }
}
mixin Leer{
    void leer(){
        print('Estoy leyendo');
    }
}

mixin Ejercitarse{
    void ejercitar(){
        print('Estoy ejercitandome');
    }
}

mixin Boxear{
    void boxear(){
        print('Estoy boxeando');
    }
}

abstract class Persona{
    String nombre;
    String apellido;
    int edad;
    Persona(this.nombre, this.apellido, this.edad);
}

class Artista extends Persona with Dibujar{
    String tipoDeArte;
    int cantObras;
    String generoArte;
  
    Artista(String nombre, String apellido, int edad,
            this.tipoDeArte,this.cantObras,
            this.generoArte):super(nombre, apellido, edad);
}

class Ingeniero extends Persona with  Dibujar,Leer{
  String ambito;
  String universidad; 
  Ingeniero(String nombre, String apellido, int edad, this.ambito, this.universidad):super(nombre, apellido, edad);
}

class Doctor extends Persona with Leer, Ejercitarse{
  String especialidad;
  String lugarTrabajo;
  Doctor(String nombre, String apellido, int edad, this.especialidad, this.lugarTrabajo):super(nombre, apellido, edad);
}

abstract class Atleta extends Persona{
  String deportePracticado;
   Atleta(String nombre, String apellido, int edad, this.deportePracticado) : super(nombre, apellido, edad);
}

class Boxeador extends Atleta with Ejercitarse, Boxear{
   int victoriasKO;
   String categoria;
   Boxeador({required String nombre, required String apellido,required int edad, String deporte='boxeo', required this.victoriasKO, required this.categoria}) : super(nombre, apellido, edad, deporte);

}
 
main(){
  Artista artista = Artista('Fernando', 'Botero', 89, 'pintura', 177, 'retrato');
  print('${artista.nombre} ${artista.apellido}');
  artista.dibujar();
  
  Ingeniero ingeniero = Ingeniero('Lina', 'Leon', 23, 'software', 'Universidad de los Llanos');
  print('${ingeniero.nombre} ${ingeniero.apellido}');
  ingeniero.leer();
  ingeniero.dibujar();
  
  
  Doctor doctor=Doctor('Karol', 'Reyes', 53, 'Cardiología', 'Hospital de Villavicencio');
  print('${doctor.nombre} ${doctor.apellido}');
  doctor.ejercitar();
  doctor.leer();
  
  Boxeador boxeador= Boxeador(nombre:'Muhammad',apellido:'Ali',edad:74, victoriasKO: 39, categoria: 'pesos pesados');
  print('${boxeador.nombre} ${boxeador.apellido}');
  boxeador.boxear();
  boxeador.ejercitar();
  
  
}
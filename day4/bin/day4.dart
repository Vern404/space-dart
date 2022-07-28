import 'package:day4/day4.dart' as day4;

void main(List<String> arguments) {
  /*final myCar = Car("Toyota", "Corolla", "Red", 3);
  final elonsCar = Car("Tesla", "Model S", "Black",4);
     
   myCar.showCar();
   elonsCar.honk();
   myCar.moveForward();

   // Person p = new Person();
   // p.speak();
   // p.walk();

  //store the data into list arr
 List <LivingEntity> livingEntities=[
  Human(),
  Sheep(),
  Human(),
 ];

 //display the list result
  //for loop
 for (LivingEntity entity in livingEntities){
  entity.eat();
 }

 //for each loop
 livingEntities.forEach((e) => e.eat());
 */

  final Animal duck = Duck();
  final Animal cat = Cat();
  final Animal animal = Animal();
  final Animal parrot = Parrot();

  duck.makeSound();
  cat.makeSound();
  animal.makeSound();
  parrot.makeSound();
}



/*class Car {
 // field
 String manufacturer;
 String model;
 String color;
 int distance;
 
 Car(this.manufacturer, this.model, this.color, this.distance);
 
 //function  method
 void showCar(){ 
  print('${manufacturer}, ${model}, ${color}');
 }
 
 void honk(){
  print("Honking noise");
 }

 void moveForward(){
  print("Moved ${distance}m forward");
 }
}*/

/* Extend class
class Human{
 void walk(){
  print("Humans walk!");
 }
}
 class Person extends Human{
  void speak(){
   print("That person can speak");
  }
}*/

abstract class LivingEntity{
 void eat();
}

class Human implements LivingEntity{
 @override
 void eat(){
  print('Eating bread');
 }
}

class Sheep implements LivingEntity{
 @override
 void eat(){
  print ("Eating grass");
 }
}

//polymorphism
class Animal {
 void makeSound(){
   print("Animal makes sound");
 }
}

class Duck extends Animal{
 void makeSound() => print('Quak Quak');
}

class Cat extends Animal{
 void makeSound() => print('Mew Mew');
}

class Parrot extends Animal{
 void makeSound() => print('Hey People Come HERE');
}
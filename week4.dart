import 'dart:io';

// Interface
abstract class Animal {
  void speak();
}

// Base class
class Mammal {
  void eat() {
    print('Mammal is eating');
  }
}

// Inherited class
class Dog extends Mammal implements Animal {
  @override
  void speak() {
    print('Woof!');
  }
}

// Class that initializes data from a file
class Zoo {
  List<String> animals = [];

  Zoo(String fileName) {
    File file = File(fileName);
    animals = file.readAsLinesSync();
  }

  void printAnimals() {
    for (var animal in animals) {
      print(animal);
    }
  }
}

void main() {
  // Initialize a Dog instance
  var dog = Dog();
  dog.eat();
  dog.speak();

  // Initialize a Zoo instance with data from a file
  var zoo = Zoo('animals.txt');
  zoo.printAnimals();
}
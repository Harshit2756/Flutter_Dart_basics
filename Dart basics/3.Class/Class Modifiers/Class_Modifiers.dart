// ignore_for_file: unused_local_variable

void main() {
  // Class Modifiers
  // . Class modifiers are used to define the scope of a class.
  // . There are two types of class modifiers:
  // . Abstract
  // . Sealed
  // . Final
  // . Base
  // . Interface
  // . Mixins

  // * Sealed
  Animal animal = Cat();
  // . Here as the animal is sealed we have to add case for all the direct Subtypes by Animal
  switch (animal) {
    case Dog():
      print('Dog');
    case Cat():
      print('Cat');
    case Human():
      print('Human');
  }

  // *Final
  Animal_1 animal_1 = Animal_1();
  // . Final classess can be instantiated.

  // *Base
  Animal_2 animal_2 = Human_2();


}

// * Sealed
// . Sealed classes are used to restrict the class hierarchy to the classes declared in the same file.
// ~ can't be instantiated.
sealed class Animal {}
class Human implements Animal {}
class Dog implements Animal {}
class Cat extends Animal {}
// . Indirect Subtypes can be added outside the library in which the base class is declared.
class Harshit implements Human {}

// *Final
// . Final is used to indicate that a class, method, or variable cannot be extended, overridden, or reassigned, respectively.
// . no Extends, Implements, or Mixins can be used outside the library in which the base class is declared.
// ~ can be instantiated.
final class Animal_1 {}

final class Human_1 extends Animal_1 {}
final class Dog_1 implements Animal_1 {}

// *Base
// . Base is used to indicate that When thier Child class is instantiated, the base class constructor is called first.
// . only extend outside the library in which the base class is declared.
// ~ can be instantiated.
base class Animal_2 {}

final class Human_2 extends Animal_2 {}
final class Dog_2 implements Animal_2 {}

// *Interface
// . Interfaces are used to define contracts for classes
// . Only Implemented outside the library in which the interface is declared.
// ~ can be instantiated.
interface class Animal_3 {}

final class Human_3 extends Animal_3 {}
final class Dog_3 implements Animal_3 {}

// *Mixins
// . Mixins is a class that can be mixed in with another class to provide it with additional members and behavior.

// ~ can be instantiated.
mixin class Animal_4 {}

class Human_4 with Animal_4 {}




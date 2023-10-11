void main() {
  // / 2.Abstraction
  // . Abstraction is the process of hiding the internal details and showing the functionality only.
  // . Abstraction is achieved in dart by using abstract classes and interfaces.

  // . here we have created an object of animal class which is cat and dog.
  Animal cat = Cat();
  cat.makeSound();

  Animal dog = Dog();
  dog.makeSound();

  //  / 4.Encapsulation
  // . Encapsulation is the process of combining data and functions into a single unit called class.
  // . Encapsulation is used to hide the values or state of a structured data object inside a class preventing unauthorized parties' direct access to them.
  // . Encapsulation is achieved in dart by using classes.
  
}

// * Abstraction
abstract class Animal {
  void makeSound();
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat is meowing");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog is barking");
  }
}

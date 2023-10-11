void main() {
  // Object oriented programming(OOPS)
  // . OOPS is a programming paradigm based on the concept of objects.
  // . OOPS is used to achieve

  // / 1.Polymorphism
  // . Polymorphism is the ability of an object to take on many forms.
  Cat cat = Cat();
  cat.makeSound(); // . here the makesound method of cat class is called.
  Dog dog = Dog();
  dog.makeSound();
  // . here the makesound method of dog class is called.

}

// * Polymorphism
class Animal {
  void makeSound() {
    print("Animal is making sound");
  }
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


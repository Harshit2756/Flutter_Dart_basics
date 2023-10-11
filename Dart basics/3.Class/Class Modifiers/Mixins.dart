void main() {
  // Mixins
  // . Mixins are a way of reusing a class’s code in multiple class hierarchies.
  // . The mixin keyword is used to define a mixin.
  // . They don't create a new class, but they can be used to add additional features to a class.
  final animal = Animal();
  animal.jump();

  final cat = Cat();
  cat.jump();
  cat.run();
}

mixin Jump {
  int jumpHeight = 10;
}
//. we use on keyword to specify the class on which the mixin can be used.
mixin Run on Animal {
  int runSpeed = 20;
}

// . We can use the mixin in a class by using the with keyword.
// . Extends can not be used with mixins.
// . Mixins don't create a parent-child relationship.
// . It is as if the code of the mixin was pasted into the class.
// . we can use multiple mixins in a class.
class Animal with Jump{
  void jump() {
    print('Jumping ${jumpHeight}m high');
  }

}

class Cat extends Animal with Run {
  void Jump() {
    print('Jumping ${jumpHeight}m high');
  }

  void run() {
    print('Running ${runSpeed}m/s');
  }
}

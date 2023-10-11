void main() {
  // implements keyword is used to implement an interface
  // . interface is a contract which a class has to follow in other words it is a set of rules which a class has to follow
  // . interface is used to achieve abstraction
  // . we can implement multiple interfaces
  // . we have to override all the methods of the interface where as in inheritance we can override methods of parent class if we need to
  // . we can't create an object of an interface

  final myNano = nano();

  myNano.display();
  myNano.accelerate();
}

class Vehicle {
  int Speed = 10;
  bool isEngineWorking = false;
  int noOfWheels = 4;

  void accelerate() {
    Speed += 1;
  }
}

class car extends Vehicle {
  void accelerate() {
    Speed += 2;
  }
}

//. implements keyword is used to implement an interface
// / we have to override all the variables and methods of the vehicle
class Truck implements Vehicle {
  @override
  int Speed = 10;
  @override
  bool isEngineWorking = false;
  @override
  int noOfWheels = 4;

  @override
  void accelerate() {
    Speed += 1;
  }
}

// . We can use implements and extends keyword together to implement an interface and extend a class
// . we have to override all the variables and methods of the implement class and we can access all the variables and methods of the extended class
class nano extends Vehicle implements car {
  
  void display() {
    // . we can access all the variables and methods of the extended class
    print("Speed: $Speed");
    print("isEngineWorking: $isEngineWorking");
    print("noOfWheels: $noOfWheels");
  }

  @override
  void accelerate() {
    Speed += 3;
    print("Speed: $Speed");
  }
}

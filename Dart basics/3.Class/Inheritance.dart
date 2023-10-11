void main(List<String> args) {
  // Inheritance  "is a relationship"
  // . we use extends keyword to inherit a class
  // . we can inherit only one class
  // . we can inherit only non-private variables and methods
  // . we can inherit constructors
  // . we can override methods
  // . we can use super keyword to access parent class.

  // creating an object
  // ignore: unused_local_variable
  final myCar = car();

  // // calling a method of it self
  // myCar.PrintWheels();

  // // Accessing data of parent class
  // print(myCar.isEngineWorking);
  // myCar.StartEngine(true);

  // //Here we have created an object of type vehicle but it is pointing to car
  // Vehicle truck = Truck();

  // // to access the data of truck we have to type cast it to truck by using as keyword
  // print((truck as Truck).noOfWheels);

  final myNano = nano();
  // we can override methods
  print(myNano.Speed);
  myNano.accelerate();
  print(myNano.Speed);


  // / we can use super keyword to access parent class.
  myNano.display();

}

// * VEHICLE
class Vehicle {
  int Speed = 10;
  bool _isEngineWorking = false;

  void printName() {
    print("Vehicle");
  }

  void accelerate() {
    Speed += 1;
  }
}

// * CAR
class car extends Vehicle {
  int noOfWheels = 4;

  void printName() {
    print("car");
  }

  void PrintWheels() {
    print(noOfWheels);
  }

  void StartEngine(bool isEngineWorking) {
    _isEngineWorking = isEngineWorking;
    print("Engine is working: $_isEngineWorking");
  }

  // we can override methods
  @override
  void accelerate() {
    Speed += 2;
  }
}

// * NANO
class nano extends car {
  int noOfWheels = 2;

  void printName() {
    print("nano");
  }

  void display() {
    printName();
    // . we can use super keyword to access parent class.
    super.printName(); // here we are accessing the printName() of car
  }

  @override
  void accelerate() {
    Speed += 3;
  }

  void PrintWheels() {
    print(noOfWheels);
  }
}

class Truck extends Vehicle {
  int noOfWheels = 6;
  void PrintWheels() {
    print(noOfWheels);
  }
}

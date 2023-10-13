void main() {
  // abstract class
  // . abstract class is a class which can't be instantiated(means we can't create an object of it).
  // . abstract class is used to achieve abstraction.
  // . we can't create an object of abstract class but we can create a reference of it.
  // final myVehicle = Vehicle(); // error

  final myCar = car();
  myCar.accelerate();

  final myTruck = Truck();
  myTruck.accelerate();

}
// class vs abstract class
// . we have to create methods with body in class but we can create methods without body in abstract class. 
abstract class Vehicle {
  // abstract method
  // . abstract method is a method which doesn't have a body.
  // . we use abstract method to achieve abstraction.
  // . we can declare all the methods of a class as abstract and then add the body of the method in the child class or in the interface which implements the class.
  void accelerate();

  // abstract variable
  int noOfWheels=10;
}

class car implements Vehicle {
  @override
  int noOfWheels=10;
  
  @override
  void accelerate() {
    print("accelerating by implementing Vehicle");
  }
}

class Truck extends Vehicle {
  @override
  void accelerate() {
    print("accelerating by extending Vehicle");
    print ("noOfWheels: $noOfWheels");
  }
}

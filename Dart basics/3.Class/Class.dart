// ignore_for_file: unused_field

void main() {
  // creating an object
  Cookie vanilla = Cookie();

  // calling a method
  vanilla.baking();

  // calling a method which returns a value
  final isCookieCooling = vanilla.isCooling();
  print(isCookieCooling);

  // getters and setters
  print(vanilla.price);
  vanilla.setQuantity = 30;

  // static variables
  // . we can access static variables without creating an object
  print(Cookie.Greetings);

  // Static methods
  // . we can access static methods without creating an object
  print(Cookie.bill());
}

class Cookie {
  // variables
  String shape = "round";
  double size = 15.2;

  // Private variables
  // . we use _ to make a variable private
  // . we can only access private variables inside the file
  // . we can also make a function private
  int _price = 10;
  int _quantity = 20;

  // Static variables
  // . we use static keyword to create a static variable
  // . we can access static variables without creating an object
  static String Greetings = "Hello ,Please Tell me your Order";
  
  // Getters
  // . we use getters and setters to access and modify private variables

  // . we use get keyword to create a getter
  // . we use => to return a value from a getter
  int get price => _price;

  // Setters
  // . we use set keyword to create a setter
  // . we use = to set a value in a setter
  // .same as setQuantity(int quantity) { _quantity = quantity; }
  set setQuantity(int quantity) => _quantity = quantity;

  // constructor
  Cookie() {
    print("Cookie is created");
  }

  // methods
  void baking() {
    print("Baking");
  }

  bool isCooling() {
    return false;
  }

  // Static methods
  // . we use static keyword to create a static method
  // . we can access static methods without creating an object
  // . we can only access static variables inside a static method
  static int bill() {
    return 100;   
  }

}


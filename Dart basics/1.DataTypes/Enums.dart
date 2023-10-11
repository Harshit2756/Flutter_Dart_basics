// ignore_for_file: unused_local_variable

void main() {
  // * Enums
  // . Enums are used to represent a fixed number of possible values.

  final employee_1 = Employee('Harshit', EmployeeType.SDE);
  final employee_2 = Employee('Rahul', EmployeeType.Finance);
  final employee_3 = Employee('Rohit', EmployeeType.HR);

  employee_1.printEmployeeType();
  employee_2.printEmployeeType();
}

enum EmployeeType {
  SDE(10000),
  Finance(20000),
  HR(30000);

  // . Enums can also have methods
  final int salary;
  const EmployeeType(this.salary);
}

class Employee {
  final String name;
  final EmployeeType type;

  void printEmployeeType() {
    print('${name}:  ${type.salary}');
  }

  Employee(this.name, this.type);
}

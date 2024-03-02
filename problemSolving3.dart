class Employee {
  String name;
  String email;
  String phoneNumber;

  Employee(this.name, this.email, this.phoneNumber);

  void displayDetails() {
    print('Name: $name');
    print('Email: $email');
    print('Phone Number: $phoneNumber');
  }
}

class Manager extends Employee {
  String department;

  Manager(String name, String email, String phoneNumber, this.department)
      : super(name, email, phoneNumber);

  @override
  void displayDetails() {
    super.displayDetails();
    print('Department: $department');
  }
}

class Worker extends Employee {
  String supervisor;

  Worker(String name, String email, String phoneNumber, this.supervisor)
      : super(name, email, phoneNumber);

  @override
  void displayDetails() {
    super.displayDetails();
    print('Supervisor: $supervisor');
  }
}

void main() {
  Manager manager = Manager('John Doe', 'john@example.com', '1234567890', 'Sales');
  manager.displayDetails();

  Worker worker = Worker('Jane Smith', 'jane@example.com', '9876543210', 'John Doe');
  worker.displayDetails();
}
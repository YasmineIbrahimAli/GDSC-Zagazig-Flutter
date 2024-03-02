class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print("Insufficient balance.");
    }
  }

  void printBalance() {
    print("Account Number: $accountNumber");
    print("Account Holder Name: $accountHolderName");
    print("Balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  BankAccount account1 = BankAccount("123456789", "John Doe", 1000);
  account1.deposit(500);
  account1.withdraw(200);
  account1.printBalance();

  BankAccount account2 = BankAccount("987654321", "Jane Smith", 2000);
  account2.deposit(1000);
  account2.withdraw(500);
  account2.printBalance();
}
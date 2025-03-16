abstract class BankAccount {
    protected double balance;
      public BankAccount(double initialBalance) {
        this.balance = initialBalance;
    }
      abstract void deposit(double amount);
    abstract void withdraw(double amount);
    abstract void checkBalance();
}
class DigitalBank extends BankAccount {
        public DigitalBank(double initialBalance) {
        super(initialBalance);
    }
     void deposit(double amount) {
        balance += amount;
        System.out.println("Deposited: $" + amount);
    }
      void withdraw(double amount) {
        if (amount <= balance) {
            balance -= amount;
            System.out.println("Withdrew: $" + amount);
        } else {
            System.out.println("Insufficient balance!");
        }
    }
        void checkBalance() {
        System.out.println("Current Balance: $" + balance);
    }
       void payOnline(double amount) {
        if (amount <= balance) {
            balance -= amount;
            System.out.println("Online Payment of $" + amount + " successful.");
        } else {
            System.out.println("Insufficient funds for online payment!");
        }
    }
}
public class BankAccountDemo {
    public static void main(String[] args) {
                BankAccount account = new DigitalBank(500.0);
        account.deposit(200.0);
        account.withdraw(100.0);
        account.checkBalance();
        
        System.out.println();
               DigitalBank digitalAccount = new DigitalBank(1000.0);
        digitalAccount.payOnline(150.0);
        digitalAccount.checkBalance();
    }
}

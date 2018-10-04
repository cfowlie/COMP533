// Start of user code for imports
// End of user code

import org.aspectj.lang.annotation.Aspect;

/**
 * Account class definition.
 * Generated by the TouchCORE code generator.
 */
public class Account {
    
    protected int balanceInCents;
    protected int accountNumber;
    protected Customer owner;

    @Log
    public Account(int initialBalance, Customer owner) {
        this.balanceInCents = initialBalance;
        this.owner = owner;
        this.accountNumber = (int) (Math.random() * 1000000);
    }

    @Log
    public void deposit(int amount) {
        this.balanceInCents = balanceInCents + amount;
    }

    @Log
    public void withdraw(int amount) {
        if (balanceInCents >= amount) {
            this.balanceInCents = balanceInCents - amount;
        } else {
            NotEnoughtFundsException nefException = new NotEnoughtFundsException();
            throw nefException;
        }
    }

    Customer getOwner() {
        return this.owner;
    }

    boolean setOwner(Customer newObject) {
        this.owner = newObject;
        return true;
    }

    public String toString() {
        String returnedString = "Account " + accountNumber + " of " + owner.getName() + ": " + balanceInCents;
        return returnedString;
    }
}

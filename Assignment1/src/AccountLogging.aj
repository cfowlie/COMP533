public aspect AccountLogging {

    // Log Account Creation
    pointcut CreateAccount(Account a) : call(public Account.new()) && target(a);
    after(Account a) : CreateAccount(a) {
        String stringToLog = "Created object " + a;
        Logger.log(stringToLog);
    }

    // Log Deposits after an amount is put into an account
    pointcut CallDeposit(int amt, Account a) : call(public * Account.deposit(int)) && args(amt) && target(a);
    after(int amt, Account a) : CallDeposit(amt, a) {
        String stringToLog = "Deposit called on object " + a + " with parameter " + amt;
        Logger.log(stringToLog);
    }

    // Log Withdraw after an amount is taken out of an account
    pointcut CallWithdraw(int amt, Account a) : call(public * Account.withdraw(int)) && args(amt) && target(a);
    after(int amt, Account a) : CallWithdraw(amt, a) {
        String stringToLog = "Withdraw called on object " + a + " with parameter "  + amt;
        Logger.log(stringToLog);
    }

}

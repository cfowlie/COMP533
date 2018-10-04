aspect AccountLogging {

//    pointcut PublicCallsToAccount(Account a) :call(public * Account(..)) && target(a);
//
//    after() : PublicCallsToAccount(Account a) {
//        String stringToLog = "Created object " + this;
//        Logger.log(stringToLog);
//    }

//    // Log constructor
//    around(Account a) : PublicCallsToAccount(a) {
//        String stringToLog = "Created object " + this;
//        Logger.log(stringToLog);
//    }

    // Log Deposits after an amount is put into an account
    after(Account currentAccount) : (call public * Account+.deposit(..) && target(currentAccount)) {
        String stringToLog = "deposit called on object " + this + " with parameter ";
        Logger.log(stringToLog);
    }

    // Log Withdraw after an amount is taken out of an account
    after(Account currentAccount) : (call public * Account+.withdraw(..) && target(currentAccount)) {
        String stringToLog = "withdraw called on object " + this + " with parameter ";
        Logger.log(stringToLog);
    }

}

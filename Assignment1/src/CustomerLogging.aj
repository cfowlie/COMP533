public aspect CustomerLogging {

//    pointcut PublicCallsToCustomer(Customer c) : call(public * Customer(..)) && target(c);
//
//    after() : PublicCallsToCustomer(Customer c) {
//        String stringToLog = "Created object " + this;
//        Logger.log(stringToLog);
//    }

}

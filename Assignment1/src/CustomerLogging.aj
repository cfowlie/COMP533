public aspect CustomerLogging {

    pointcut CreateCustomer(Customer c) : call(public Customer.new()) && target(c);
    after(Customer c) : CreateCustomer(c) {
        String stringToLog = "Created object " + c;
        Logger.log(stringToLog);
    }

}

// Start of user code for imports
// End of user code

/**
 * Logger class definition.
 * Generated by the TouchCORE code generator.
 */

// Include @Log annotation for any methods or classes you want to log
@interface Log{}

public aspect Logger {

    public static void log(String message) {
        System.out.println(message);
    }

    // Log object creation
    after() returning (Object object): call(*.new(..)) && !within(Logger) && @annotation(Log) {
        String stringToLog = "Created object " + object;
        Logger.log(stringToLog);
    }

    // Log method calls for objects
    pointcut LogMethod(Object object): execution(* *(..)) && @annotation(Log) && target(object);
    after(Object object) : LogMethod(object) {
        Object[] args = thisJoinPoint.getArgs();
        String argsString = "";
        for (Object arg : args) {
            argsString += arg.toString() + " ";
        }
        System.out.println("Method called: " + thisJoinPointStaticPart.getSignature() + " on Object: " + object + " with Args: " + argsString);
    }

}


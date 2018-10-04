// Start of user code for imports
// End of user code

import jdk.nashorn.internal.runtime.logging.Logger;

/**
 * Customer class definition.
 * Generated by the TouchCORE code generator.
 */
public class Customer {
    
    protected String name;

    @Log
    public Customer(String givenName) {
        this.name = givenName;
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return this.name;
    }
}

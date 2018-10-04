public class Main {

    public static void main(String[] args) {
        Resource resource = new Resource("resource");
        resource.Operation();
    }

}

class Resource {

    String name;

    @Log
    Resource(String name){
        this.name = name;
    }

    @Log
    void Operation() {
        // Do something
    }

    @Override
    public String toString() {
        return super.toString() + " " + name;
    }
}
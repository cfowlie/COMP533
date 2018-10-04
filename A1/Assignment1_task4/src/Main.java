public class Main {

    public static void main(String[] args) {
        Resource resource = new Resource("resource");
        resource.Operation();
    }

}

class Resource {

    private String name;

    @Log
    public Resource(String name){
        this.name = name;
    }

    @Log
    public void Operation() {
        // Do something
    }

    @Override
    public String toString() {
        return super.toString() + " " + name;
    }
}
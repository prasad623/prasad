interface Animal {
    void eat(); 
}
interface Bird {
    void fly(); 
}
class Bat implements Animal, Bird {
     public void eat() {
        System.out.println("The bat is eating insects.");
    }
      public void fly() {
        System.out.println("The bat is flying at night.");
    }
}
public class MultipleInheritanceDemo {
    public static void main(String[] args) {
                Bat bat = new Bat();
            bat.eat();
        bat.fly();
    }
}

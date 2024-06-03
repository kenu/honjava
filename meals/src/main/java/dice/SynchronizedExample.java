package dice;
class SharedResource {
    private int counter = 0;

    // Synchronized method to ensure thread-safe increment operation
    public synchronized void increment() {
        counter++;
    }

    public int getCounter() {
        return counter;
    }
}

public class SynchronizedExample {
    public static void main(String[] args) {
        final SharedResource sharedResource = new SharedResource();

        // Create and start two threads that call the synchronized method
        new Thread(() -> {
            for (int i = 0; i < 10; i++) {
                sharedResource.increment();
            }
        }).start();

        // lambda
        new Thread(() -> {
            for (int i = 0; i < 10; i++) {
                sharedResource.increment();
            }
        }).start();

        // Wait for both threads to finish
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        // Print the final counter value to verify synchronization
        System.out.println("Final counter value: " + sharedResource.getCounter());
    }
}

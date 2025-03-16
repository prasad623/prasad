class Book {
        private String title;
    private String author;
    private double price;
    private int stock;
    public Book(String title, String author, double price, int stock) {
        this.title = title;
        this.author = author;
        this.price = price;
        this.stock = stock;
    }
    public Book(String title, String author) {
        this(title, author, 500.0, 10);
    }
    public void displayDetails() {
        System.out.println("Book Details:");
        System.out.println("Title: " + title);
        System.out.println("Author: " + author);
        System.out.println("Price: ₹" + price);
        System.out.println("Stock: " + stock);
        System.out.println();
    }
    public static void main(String[] args) {
                Book book1 = new Book("Java Programming", "Herbert Schildt", 750.0, 5);
               Book book2 = new Book("Python Basics", "Guido van Rossum");
        book1.displayDetails();
        book2.displayDetails();
    }
}

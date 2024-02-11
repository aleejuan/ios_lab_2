class BankAccount {
  final String accountNumber;
  final String accountOwner;
  double balance;

  BankAccount(this.accountNumber, this.accountOwner, this.balance) {

  }

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Недействительная сумма депозита. Пожалуйста, укажите положительное значение.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && balance >= amount) {
      balance -= amount;
      print('Withdrawn: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Недостаточный баланс или недействительная сумма вывода.');
    }
  }

  double getBalance() {
    return balance;
  }

  void displayAccountInfo() {
    print('Account Number: $accountNumber');
    print('Account Owner: $accountOwner');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {

  final myAccount = BankAccount('123456', 'David Jackson', 1000.0);

  myAccount.deposit(500.0);
  myAccount.withdraw(200.0);
  myAccount.displayAccountInfo();
}






/*
class Book {
  final String title;
  final String author;
  final int year;
  final int pageCount;

  Book({
    required this.title,
    required this.author,
    required this.year,
    required this.pageCount,
  });

  String getInfo() {
    return '''
      Title: $title
      Author: $author
      Year: $year
      Page count: $pageCount
    ''';
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void removeBook(Book book) {
    books.remove(book);
  }

  void displayBooks() {
    if (books.isEmpty) {
      print('The library is currently empty.');
    } else {
      print('Books in the library:');
      for (final book in books) {
        print(book.getInfo());
      }
    }
  }
}

void main() {

  final book1 = Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien", year: 1954, pageCount: 1178);
  final book2 = Book(title: "Pride and Prejudice", author: "Jane Austen", year: 1813, pageCount: 234);

  final library = Library();
  library.addBook(book1);
  library.addBook(book2);

  print('Initial library contents:');
  library.displayBooks();

  library.removeBook(book1);

  print('Library after removing a book:');
  library.displayBooks();
}
*/
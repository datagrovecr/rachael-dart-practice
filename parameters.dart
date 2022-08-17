void main() {
  greet("Bob");
  salutation("George");
  greet("Fred");
  dismiss("Mike");
}

void greet(String recipient){
  print("Hello There, $recipient!");
}

void salutation(String recipient){
  print("Howdy $recipient");
}

void dismiss(String recipient){
  print("Goodbye $recipient");
}

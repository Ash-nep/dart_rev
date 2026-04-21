void main() {
  var noodles = MenuItem('veg noodles', 9.99);
  ;
  var pizza = Pizza(["mushroom", "peppers"], "veg volcano", 15.99);

  print(noodles.title);
  print(noodles.price);
  print(pizza.price);

  print(noodles.format());
  print(pizza.format());
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, String title, double price) : super(title, price);
}

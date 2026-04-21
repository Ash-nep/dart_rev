void main() {
  var noodles = MenuItem('veg noodles', 9.99);
  
  var pizza = Pizza(["mushroom", "peppers"], "veg volcano", 15.99);
  var roast = MenuItem('veggie roast dinner', 12.49);
  var kebab = MenuItem('plant kebab', 7.49);
  
  print('$noodles, $pizza, $roast, $kebab');
  
  var foods = Collection<MenuItem>(
   'Menu Items',
    [noodles, pizza, roast, kebab]
  );
  
  var random = foods.randomItem();
  print(random);
  
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
  @override
  String toString() {
    return '$title --> $price';
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, String title, double price) : super(title, price);
  String format(){
    var formattedToppings = 'contains:';
    
    for(final t in toppings) {
      formattedToppings = '$formattedToppings $t' ;
    }
    
    return '$title -> #$price \n$formattedToppings';
  }
  
  @override
  String toString(){
    return 'Instance of Pizza : $title, $price, $toppings';
  }
}
class Collection<T> {
  String name;
  List<T> data;
  
  Collection(this.name, this.data);
  
  T randomItem(){
    data.shuffle();
    
    return data[0];
  }
}
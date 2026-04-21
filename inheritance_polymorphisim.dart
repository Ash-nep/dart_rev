class Vehicle {
  const Vehicle(this.color);
  final String? color;
}
class Car extends Vehicle {
  const Car(this.speed) : super('White');
final double? speed;
}

class Bike extends Vehicle {
  const Bike(this.engine, this.technology) :super('black');
  final double? engine;
  final String? technology;
}

void main(){
  Vehicle v1 = Car(120);
  print(v1.color);

  Car c1 = Car(160);
  print(c1.speed);

  Vehicle v2 = Bike(1400,'Modern');
  print(v2.color);

  Bike b1 = Bike(1400, 'modern');
  print(b1.engine);
  print(b1.technology);

}
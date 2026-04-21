void main(){
  Map<String, String> planets = {
    "first": "mercury",
    "second" : "venus",
    "third" : "earth",
    "fourth" : "mars",
    "fifth" : "jupiter",
  };
  planets["sixth"] = "uranus";
  print(planets.keys);
  print(planets);
  
}
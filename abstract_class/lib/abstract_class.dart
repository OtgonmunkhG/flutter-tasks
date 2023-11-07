abstract class SportsPerson {
  String name;
  int age;
  double stamin;
  SportsPerson(this.name, this.age, this.stamin);
  void train();
  void rest();
  void compete();
  void hydrate();
  String statistics();

  void introudce() {
    print("Hello my name's $name and I'm Sports person");
  }
}


class Footballer extends SportsPerson{
  int goalsScore;
  Footballer(String name, int age, double stamin, this.goalsScore) : super(name, age, stamin);

  @override
  void train() {
     print("$name is training on the football field");

  }

  @override
  void rest() {
    print("$name resting after a football match");
  }


  @override
  void compete(){
    print("$name competing is in a football match.");
  }

  @override

  void hybrate() {
    print("$name is drinking water a halftime");
  }

  @override
  String statistics() {
    return "$name has score $goalsScore goals!";
  }

 }

 class Criketer extends SportsPerson {
  int runsScored;
  Criketer(this.runsScored, String name, int age, double stamin) : super(name, age, stamin);
  @override
  void train() {
    print("$name is training on the nets.");

  }

  @override
  void rest() {
    print("$name resting after a cricket game.");
  }


  @override
  void compete(){
    print("$name competing is a cricket match.");
  }

  @override

  void hybrate() {
    print("$name is drinking  an energy drink a drinks break.");
  }

  @override
  String statistics() {
    return "$name has score $goalsScore runs!";
  }
}

void main() {
  final Footballer leo = Footballer();
  leo.introduce();
  leo.train();
  leo.rest();
  print(leo.statistics());

  final Cricketer cricketer = Cricketer();
  cricketer.introduce();
  cricketer.train();
  cricketer.rest();
  print(cricketer.statisctics()); 
}
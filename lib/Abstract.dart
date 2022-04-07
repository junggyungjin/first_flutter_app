abstract class Monster {
  void attack();
}

abstract class Flyable {
  void fly();
}

class Goblin implements Monster {

  @override
  void attack() {
    print('고블린 어택');
  }
}

class Bat implements Monster {
  @override
  void attack(){
    print('할퀴기!');
  }
}

class Bat2 implements Monster, Flyable {
  @override
  void attack() {
    print('할퀴기!');
  }

  @override
  void fly() {
    print('펄럭펄럭');
  }
}


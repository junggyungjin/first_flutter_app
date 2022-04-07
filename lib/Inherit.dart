class Hero {
  String name = '영웅';

  void run() {}
}

class SuperHero extends Hero {
  // 부모의 메소드를 재정의(오버라이드)
  @override
  void run() {
    // TODO: implement run
    super.run(); // 부모의 run을 실행
    this.fly(); // 추가로 fly()도 실행
  }

  void fly() {

  }
}

void main() {
  var hero = SuperHero();
  hero.run();
  hero.fly();
  print(hero.name);
}
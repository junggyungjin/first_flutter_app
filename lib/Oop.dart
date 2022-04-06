class Person {
  String name = "홍길동";
  late int age;
  late int _aa;

  // Person(this.name, this.age, this._aa); // 생성자

  int get aa => _aa; // 게터

  void addOneyear() {
    age++;
  }
}

void main() {
  var person = new Person();
  var person2 = Person();
  person2.age = 0;

  person.name;
  person2.age;

  person2.addOneyear();

  print(person2.age);

  /**
   * 클래스 변수 앞에 _를 붙이면 이 클래스가 정의되어있지않은 다른 파일에서는 접근 불가
   */
}
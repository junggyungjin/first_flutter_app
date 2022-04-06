void main() {
  Person person = Person("ojs", 39);
  person.greeting();
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void greeting() {
    print('안녕하세요 저는 $name이고 나이는 $age입니다');
  }

}
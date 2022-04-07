/**
 * 다트는 객체 지향 프로그래밍과 함수형 프로그래밍의 특징을 모두 제공한다.
 * 함수형 프로그래밍은 자료 처리를 수함적 함수의 계산으로 취급하는 프로그래밍 패러다임이다.
 * 특히 다트의 컬렉션은 함수형 프로그래밍을 지원하는 다양한 함수를 제공한다.
 */

/**
 * 일급 객체
 * 다트에서는 함수를 값으로 취급할 수 있다.
 * 그러므로 다른 변수에 함수를 대입할 수 있다.
 */

void greeting(String text) {
  print(text);
}

// 다른 함수의 인수로 함수 자체를 전달하거나 함수를 반환받을 수도 있다.
void something(Function(int i)f) {
  f(10);
}

void myPrintFunction(int i) {
  print('내가 만든 함수에서 출력한 $i');
}

void main() {
  var f = greeting; //함수를 다른 변수에 대입할 수 있음
  f('hello');

  something((value) {
    print(value);
  });

  something(myPrintFunction); // 내가 만든 함수에서 출력한 10
  something((i) => print(i)); // 10
  something(print); // 10
}

/**
 * something() 함수는 인수로 Function이라는 특수한 클래스의 인스턴스를 받는다.
 * Function은 다트에서 함수를 매개변수로 전달하고자 할 때 사용하는 타입
 * something() 함수는 내부에서 10이 매개변수로 전달된 f() 함수를 돌려준다.
 * f() 함수는 익명 함수이다. 여기서 print를 수행한다. 그 결과 10을 출력한다
 * 이렇게 함수를 매개변수로 전달하기, 수정하기, 변수에 대입하기가 가능한 객체를
 * 일급객체(first-class object)라고 한다.
 * 다트에서 함수를 표현할 수 있는 것들은(람다식, 익명 함수, 메서드)은 모두 값으로 취급할 수 있다.
 * 따라서 함수를 다른 함수에 전달하는 방법도 여러 가지이다.
 */


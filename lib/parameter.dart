/**
 * 함수 정의에서 {}로 감싼 매개변수는 선택적으로 사용가능
 * 호출할 때 매개변수명을 값 앞에 써주면 된다.
 */

void something({String? name, int? age}) {}

void main() {
  something(name: '홍길동', age: 10);
  something(name: '홍길동');
  something(age: 10);
  something();

  something2('임꺽정');
}

/**
 * 만약 필수 매개변수와 선택 매개변수를 함께 사용하고 싶다면 앞쪽에 필수 매개변수를 먼저 둔다
 */

void something2(String name, {int age = 10}) {}
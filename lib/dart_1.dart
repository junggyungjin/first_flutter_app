import 'dart:ffi';

void main() {
  print("Hello world!!");

  /**
   * Dart는 float형 존재하지 않음
   * int와 double은 num 타입에 포함된다
   * int와 double은 모두 num을 구현하는 타입이지만 서로는 관계가 없기 때문에 형변환이 불가능하다
   * 하지만 int와 double 모두 상위 개념인 num으로 형변환할수는 있다.
   * parse 메소드는 문자데이터를 숫자데이터로 변환하고 싶을때 사용하는 방법이다.
   */

  int aa = 1;

  double bb = 2.4;

  bb.toInt();

  print(bb is int);

  aa.toDouble();

  print(aa is double);

  num cc = 3.1;

  bool dd = true;

  print(!dd);

  assert(1 + 1 == 2);
}
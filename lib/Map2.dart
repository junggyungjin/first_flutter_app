/**
 * map() 함수는 반복되는 값을 다른 형태로 변환하는 방법을 제공하는 함수입니다.
 * 다음은 짝수를 찾아 '숫자'라는 글자를 붙여 문자열 형태로 출력하는 예제입니다.
 */
void main() {
  final items = [1,2,3,4,5];

  for (var i = 0; i < items.length; i++) {
    if (items[i] % 2 == 0) {
      print('숫자 ${items[i]}');
    }
  }

  // map()을 이용
  items.where((e) => e % 2 == 0).map((e) => '숫자 $e').forEach(print);
}
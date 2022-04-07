/**
 * where() : 조건을 필터링할 때 사용하는 함수다.
 * where() 함수를 활용하면 다음과 같이 작성할 수 있다.
 */
void main() {
  final items = [1,2,3,4,5];

  for (var i = 0; i < items.length; i++) {
    if (items[i]%2 == 0) {
      print(items[i]);
    }
  }

  //where() 함수를 이용
  items.where((e) => e % 2 == 0).forEach(print);

}
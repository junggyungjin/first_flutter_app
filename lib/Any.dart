/**
 * any() 함수는 리스트에 특정 조건을 충족하는 요소가 있는지 없는지  검사할 때 사용합니다.
 * 다음은 리스트에 짝수가 하나라도 있는지 검사하여 결과를 출력하는 코드입니다.
 */

void main() {
  final items = [1, 2, 2, 3, 3, 4, 5];

  var result = false;
  for (var i = 0; i < items.length; i++) {
    if (items[i] % 2 == 0) {
      result = true;
      break;
    }
  }
  print(result);

  // any() 함수를 사용하면 다음과 같이 작성할 수 있습니다.
  print(items.any((e) => e % 2 == 0)); //true
}
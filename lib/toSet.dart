/**
 * 리스트에 중복된 데이터가 있을 경우 중복을 제거한 리스트를 얻고 싶을 수 있습니다.
 * for문을 사용해 짝수 리스트를 얻는 코드를 다음과 같이 구현할 수 있습니다.
 */

void main() {
  final items = [1, 2, 2, 3, 3, 4, 5];

  var result = [];
  for (var i = 0; i < items.length; i++) {
    if (items[i] % 2 == 0) {
      result.add(items[i]);
    }
  }
  print(result); //2,2,4

  // where() 함수를 사용하면 다음과 같이 구현할 수 있습니다
  final result2 = items.where((e) => e % 2 == 0).toList(); // 2,2,4

  /**
   * 그런데 결과에 2가 두 번 들어 있습니다. 중복을 피하는 코드를 추가로 작성해봅시다.
   * 중복 데이터를 허용하지 않는 Set에 담은 후 리스트로 변환하면 중복을 피할 수 있습니다.
   */

  var temp = <int>{};
  for (var i = 0; i < items.length; i++) {
    if (items[i]%2 == 0) {
      temp.add(items[i]);
    }
  }
  result = temp.toList();
  print(result); // 2,4

  //where() 함수와 toSet()함수를 함께 사용하면 다음과 같이 간단히 중복 데이터를 없앨 수 있습니다.
  final result3 = items.where((e) => e % 2 == 0).toSet().toList(); // 2,4
}

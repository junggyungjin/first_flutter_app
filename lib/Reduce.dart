import 'dart:math';

/**
 * reduce() 함수는 반복 요소를 줄여가면서 결과를 만들 때 사용하는 함수입니다
 * 다음 예제는 리스트에서 최댓값을 구할 때 순차적으로 비교하는 로직입니다
 * dart:math 패키지는 max(). min()등 다양한 수학 함수를 제공합니다.
 * 이 함수들을 사용하려면 dart:math 패키지를 임포트해야 합니다
 */

void main() {
  final items = [1,2,3,4,5];

  var maxResult = items[0];
  for (var i = 1; i <items.length; i++) {
    maxResult = max(items[i], maxResult);
  }
  print(maxResult); // 5

  /**
   * reduce() 함수는 연산 결과를 다음 요소와 연산합니다(마지막 요소까지 이 방식을 사용합니다).
   * [타입]([타입] value, [타입] element) 형태의 함수를 정의해야 합니다.
   * 항상 두 잉ㄴ수를 받고, 반환값은 인수와 같은 타입이어야 합니다.
   * max() 함수는 정수인 두 수(e, v)를 받아서 큰 수를 반환하므로 이에 적합합니다.
   */
  print(items.reduce((e, v) => max(e, v))); // 5

  final result = items.reduce(max); // 5
}


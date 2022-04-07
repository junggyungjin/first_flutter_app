/**
 * 다트에ㅓ 함수형 프로그래밍을 지원하는 함수 대부분은 Iterable<T>라는 인터페이스 타입 인스턴스를 반환합니다.
 * 하지만 실제 사용할 때는 대부분 리스트 형태로 변환해야 하는 경우가 많습니다.
 * 결과를 리스트로 저장하는 예제 코드를 살펴보겠습니다.
 */

void main() {
  final result = [];

  var items = [1,2,3,4,5];

  items.forEach((e) {
    if(e % 2 == 0) {
      result.add(e);
    }
  });

  // toList() 함수를 사용하면 간단히 리스트로 변환 가능
  final result2 = items.where((e) => e % 2 == 0).toList();
}
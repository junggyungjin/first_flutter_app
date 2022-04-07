/**
 * 연산자는 컬렉션을 펼쳐주는 연산자로 스프레드 연산자라고 한다.
 * 다른 컬렉션 안에 컬렉션을 삽입할때 사용한다.
 */

void main() {

  var items = ['짜장', '라면', '볶음밥'];

  var items2 = ['떡볶이', ...items, '순대'];

  /**
   * 다음과 같이 리스트를 Set에 담게 되면 자동으로 중복 제거의 효과도 얻을 수 있다.
   */
  final list = [1, 2, 2, 3, 3, 4, 5];

  final myNumbers = {...list, 6, 7};
  print(myNumbers);
}
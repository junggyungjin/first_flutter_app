void main() {
  /**
   * 컬렉션도 타입 추론을 사용할 수 있어 일반적으로 var로 선언한다.
   */

  List<String> items = ['짜장', '라면', '볶음밥'];

  var list = ['탕수육', '치킨', '피자'];

  list[0]; // 인덱스는 0부터 시작

  print(items.length); // 3

  for (var i = 0; i< items.length; i++) {
    print(items[i]);
  }
  
}
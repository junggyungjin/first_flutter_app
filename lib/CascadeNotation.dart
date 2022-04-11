void main() {
  final items = [1, 2, 3, 4, 5];

  var result = items;
  result.add(6);
  result.remove(2);
  print(result); //1,3,4,5,6

  // 연산자를 사용하면 다음과 같이 표현할 수 있다.
  print(items
  ..add(6)
  ..remove(2)); // 1,3,4,5,6

  /**
   * 컬렉션 if : ㅈ건에 의해 컬렉션의 값을 조정하거나 다르게 사용하고 싶을 때 일반적인 방법은 다음과 같습니다
   */

  bool promoActive = false;

  if (promoActive) {
    print([1,2,3,4,5,6]);
  }else {
    print([1,2,3,4,5]);
  }

  /**
   * 다트에서는 컬렉션 내부에 if 문이나 for 문을 사용할 수 있습니다
   * (이때 {} 블록은 사용할 수 없습니다).
   * 컬렉션 if를 사용하면 임시 변수를 작성하지 않아도 되며 좀 더 유동적인 코드를 작성할 수 있습니다.
   */

  bool promoActive2 = true;
  print([1,2,3,4,5, if (promoActive2) 6]);

  /**
   * 컬렉션 for : 다음과 같이 컬렉션 문법 안에서 for문을 사용할 수 있습니다.
   */
  var listOfInts = [1,2,3];
  var listOfStrings = [
    '#0',
    for (var i in listOfInts) '#$i'
  ];

  listOfStrings.forEach(print); // #0,#1,#2,#3

  /**
   * 값이 없다는 의미의 Null은 에러를 유발하기 쉽습니다.
   * 값이 null인 객체에 접근해 조작하면 프로그램은 에러를 내면서 중지하게 됩니다.
   * 당므은 값이 Null인 객체를 조작하는 예입니다.
   */

  String name = null;
  print(name.length); // 널포인트익셉션

  /**
   * 다트는 null을 처리할 수 있는 여러 가지 방법을 제공합니다.
   * 참고로 다트에서는 모든 것이 객체입니다. 심지어 int, double, bool 같은 타입도 모두 클래스입니다.
   * 이러한 타입들은 모두 null값을 가질 수 있습니다. 그러므로 다트에서 모든 타입은 null일 수 있습니다.
   * ?로 체크합니다
   */

  if(name != null) {
    print(name.length);
  } else {
    print(0);
  }

  // 하지만 ?? 연산자를 사용하면 당ㅁ과 같이 간단히 작성할 수 있습니다.
  print(name?.length ?? 0); // name이 null이면 0을 출력
}
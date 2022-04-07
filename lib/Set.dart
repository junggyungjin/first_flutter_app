/**
 * Set : 집합을 표현하는 자료구조 컬렉션
 * add(), remove() 메서드로 집합에 추가하거나 삭제 할 수 있다.
 * contains() 메서드는 찾고자 하는 자료가 집합에 있는지 없는지 불리언 타입으로 반환하기 때문에
 * 집합에 요소가 있는지 검사할 때 사용한다.
 * 리스트와 다르게 중복을 허용하지 않는다.
 */

void main() {
  var citySet = {'서울', '수원', '오산', '부산'};

  citySet.add('안양') // 추가
  citySet.remove('수원'); // 삭제

  print(citySet.contains('서울')); //true
  print(citySet.contains('도쿄')); //false

  /**
   * 빈 Set이나 빈 Map을 작성할 때는 문법을 조심해야 한다.
   * 값 없이 그냥 {}만 작성하면 Set이 아닌 Map으로 인식한다.
   */

  var mySet = <String>{}; // Set<String>

  var mySet2 = {}; // Map<dynamic, dynamic>
}
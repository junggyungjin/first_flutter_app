/**
 * 순서가 업속 탐색이 빠른 자료구조 컬렉션 Map
 * key value로 이루어져있어 키를 이용하여 값을 빠르게 얻을 수 있음
 * 만약 요청한 키에 해당하는 값이 없다면 null을 반환
 */

void main() {
  var cityMap = {
    '한국' : '부산',
    '일본' : '도쿄',
    '중국' : '북경'
  };

  cityMap['한국'] = '서울';

  print(cityMap.length); // 3
  print(cityMap['중국']); // 북경
  print(cityMap['미국']); // null

  cityMap['미국'] = '워싱턴'; // 새로운 값 추가
  print(cityMap['미국']); // 워싱턴
}턴
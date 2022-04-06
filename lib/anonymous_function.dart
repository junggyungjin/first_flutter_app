void main() {

  /**
   * 이름 없는 익명 함수도 정의해 사용할 수 있다.
   * 다음 익명함수는 number가 짝수면 true를, 홀수면 false를 반환합니다
   */
  var a = (number) {
    return number % 2 == 0;
  };

  print(a(2));

}
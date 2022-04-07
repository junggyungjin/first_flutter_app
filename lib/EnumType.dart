/**
 * enum type은 상수처럼 사용할 수 있다.
 * 그리고 switch 문과 함께 사용하면 열거 타입으로
 * 정의된 모든 상수를 case로 검토하도록 강제하기 때문에 에러를 방지하는 효과도 있다.
 */

enum Status { login, logout}

void main() {

  var authStatus = Status.logout;

  switch(authStatus) {
    case Status.login:
      print('로그인');
      break;
    case Status.logout:
      print('로그아웃');
      break;
  }


}
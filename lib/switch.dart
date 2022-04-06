enum Status {Uninitalized, Authenticated, Authenticating, Unauthenticated}

void main() {
  var status = Status.Authenticated;
  switch (status) {
    case Status.Authenticated:
      print('인증됨');
      break;
    case Status.Authenticating:
      print('인증 처리 중');
      break;
    case Status.Unauthenticated:
      print('미인증');
      break;
    case Status.Uninitalized:
      print('초기화됨');
      break;
  }
}
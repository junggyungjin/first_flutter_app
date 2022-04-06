/**
 * 다트에서는 람다 표현식이라는 함수 표현 방식도 지원한다.
 * ([인수명]) => [동작 또는 반환값]
 */
void main() {
  odd(2);
}

bool odd(number) => number % 2 == 0;
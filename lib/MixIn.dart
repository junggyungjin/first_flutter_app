import 'package:first_flutter_app/Abstract.dart';
import 'package:first_flutter_app/Inherit.dart';

/**
 * with 키워드를 사용하면 상속하지 않고 다른 클래스의 기능을 가져오거나 오버라이드 할 수 있다.
 * 이러한 기능을 믹스인이라고 한다.
 * 이렇게 작성된 DarkGoblin 클래스는 Goblin이기도 하며 Hero이기도하며 Monster이기도 한다
 * 이러한 것을 다형성이라고 한다.
 */

class Goblin implements Monster {
  @override
  void attack() {
    print('고블린 어택');
  }
}

class DarkGoblin extends Goblin with Hero {

}
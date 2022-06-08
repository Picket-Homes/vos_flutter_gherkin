import 'package:vos_gherkin/gherkin.dart';

class WorldMock extends World {
  bool disposeFnInvoked = false;

  @override
  void dispose() => disposeFnInvoked = true;
}

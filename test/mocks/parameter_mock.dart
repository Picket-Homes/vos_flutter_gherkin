import 'package:vos_gherkin/gherkin.dart';

class MockParameter extends CustomParameter<String> {
  MockParameter()
      : super(
          'MockStringParam',
          RegExp('a'),
          (a) => 'a',
        );
}

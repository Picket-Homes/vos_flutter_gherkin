import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

/// Taps a widget that contains text.
///
/// Examples:
///
///   `Then I tap the label that contains the text "Logout"`
///   `Then I tap the button that contains the text "Sign up"`
///   `Then I tap the widget that contains the text "My User Profile"`
class TapWidgetWithTextStep extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    final finder = find.text(input1);
    await world.driver.scrollIntoView(finder, timeout: timeout);
    await FlutterDriverUtils.tap(
      world.driver,
      finder,
      timeout: timeout,
    );
  }

  @override
  RegExp get pattern => RegExp(
      r'I tap the (?:button|element|label|field|text|widget) that contains the text {string}$');
}

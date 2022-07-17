import 'package:flutter_test/flutter_test.dart';

import 'package:custom_radio/custom_radio.dart';

void main() {
  test('adds one to input values', () {
    // final bool _value = false;
    void _get(bool _value) {
      print('value: $_value');
    };
    
    final calculator = CustomRadio(
      switchActive: false,
      onChanged: _get
    );
    // calculator.build(context)
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
  });
}

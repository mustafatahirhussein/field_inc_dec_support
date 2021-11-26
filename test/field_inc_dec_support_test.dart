import 'package:flutter_test/flutter_test.dart';

import 'package:field_inc_dec_support/field_inc_dec_support.dart';

void main() {
  test('change value after 1 sec delay', () {
    expect(Validate.delayValueChange(),null);
  });
}

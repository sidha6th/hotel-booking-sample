import 'package:flutter/cupertino.dart';

extension MediaquerySize on BuildContext {
  Size getSize() => MediaQuery.of(this).size;
}

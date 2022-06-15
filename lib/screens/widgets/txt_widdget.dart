import 'package:flutter/cupertino.dart';

class TxtWidget extends StatelessWidget {
  const TxtWidget({
    required this.text,
    this.weight,
    this.color,
    this.size,
    Key? key,
  }) : super(key: key);
  final String text;
  final FontWeight? weight;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: size,
      ),
    );
  }
}

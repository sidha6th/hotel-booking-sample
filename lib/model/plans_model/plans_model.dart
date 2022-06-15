import 'package:flutter/cupertino.dart';

class PlansModel {
  final String? svgIcon;
  final Color color;
  final Icon? icon;
  final String name;
  PlansModel({
    this.icon,
    required this.name,
    required this.color,
    this.svgIcon,
  });
}

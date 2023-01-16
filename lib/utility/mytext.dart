import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyText extends StatelessWidget {
  final String MylableText;
  final double FontSize;
  const MyText({
    super.key,
    required this.MylableText,
    required this.FontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      MylableText,
      style: TextStyle(fontSize: FontSize, fontWeight: FontWeight.bold),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:for_ze_lady/theme.dart';

class Arena extends StatelessWidget {
  final String backgroundImagePath;
  final String name;
  final ColorPattern theme;

  const Arena({
    Key? key,
    required this.name,
    required this.theme,
    required this.backgroundImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryDark,
        foregroundColor: theme.secondary,
        title: Text(name),
      ),
      backgroundColor: theme.secondary,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(backgroundImagePath),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:for_ze_lady/pages/portal_page.dart';
import 'package:for_ze_lady/theme.dart';

void main() {
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "For ze Lady",
      theme: MyTheme.defaultTheme,
      home: const PortalPage(),
    );
  }
}

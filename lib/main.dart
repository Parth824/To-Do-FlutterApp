import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/db/db_helper.dart';
import 'package:to_do_app/view/pages/homepage.dart';

import 'globle/theme.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: HomePage(),
    );
  }
}

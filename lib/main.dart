import 'package:flutter/material.dart';
import 'package:workshop_1_project/pages/home_page.dart';
import 'package:workshop_1_project/util/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: Constants.textColor),
      ),
      home: HomePage(),
    );
  }
}

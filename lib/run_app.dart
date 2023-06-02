import 'package:flutter/material.dart';
import 'package:product_navigator/features/presentaion/pages/home_page.dart';
import 'package:product_navigator/features/presentaion/pages/view_product_page.dart';

class RunApp extends StatefulWidget {
  const RunApp({super.key});

  @override
  State<RunApp> createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' :(context) => HomePage(),
        'view_product/' :(context) =>  ViewProductPage(),
      },
    );
  }
}

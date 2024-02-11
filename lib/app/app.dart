
import 'package:flutter/material.dart';
import 'package:flutter_learn/views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter App",
      home: HomeView(),
    );
  }
}
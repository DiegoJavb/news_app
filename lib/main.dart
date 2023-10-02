import 'package:flutter/material.dart';
import 'package:news_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const TabsScreen(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.red,
      ),
    );
  }
}

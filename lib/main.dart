import 'package:flutter/material.dart';
import 'package:random_app/home_page.dart';
import 'package:random_app/random_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/main',
        routes: {
          '/': (context)=> const RandomPage(),
          '/random_page':(context)=> const RandomPage(),
          '/main':(context)=>const MainScreen()
        },
    );
  }
}

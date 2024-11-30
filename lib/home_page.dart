import 'package:flutter/material.dart';
import 'package:random_app/second_page.dart';
import 'package:random_app/third_page.dart';

import 'random_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3, 
      child: Scaffold(
        body: TabBarView(
          children: [
          RandomPage(),
          SecondPage(),
          ThirdPage()
        ]
        ),
        bottomNavigationBar: TabBar(tabs: [
          Tab(icon: Icon(Icons.radio), text: 'สุ่มเลข',),
          Tab(icon: Icon(Icons.build), text: 'แบบปุ่ม',),
          Tab(icon: Icon(Icons.text_fields),text: 'กล่องรับข้อความ'),
        ])
      ));
  }
}
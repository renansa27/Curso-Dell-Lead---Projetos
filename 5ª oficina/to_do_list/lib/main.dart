import 'package:flutter/material.dart';
import 'package:to_do_list/view/new_task_view.dart';
import 'package:to_do_list/view/update_task_view.dart';

import 'view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/newTask': (context) => NewTask(),
        '/updateTask': (context) => UpdateTask(),
      },
    );
  }
}

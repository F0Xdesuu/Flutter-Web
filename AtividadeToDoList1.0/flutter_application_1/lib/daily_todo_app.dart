import 'package:flutter/material.dart';
import 'daily_todo_list.dart';

class DailyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DailyTodoList(),
    );
  }
}
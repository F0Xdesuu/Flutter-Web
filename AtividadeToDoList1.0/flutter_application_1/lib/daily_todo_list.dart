import 'package:flutter/material.dart';
import 'todo_item.dart';

class DailyTodoList extends StatefulWidget {
  @override
  _DailyTodoListState createState() => _DailyTodoListState();
}

class _DailyTodoListState extends State<DailyTodoList> {
  List<TodoItem> _dailyTasks = [];

  final TextEditingController _taskController = TextEditingController();

  void _addTask() {
    if (_taskController.text.isNotEmpty) {
      setState(() {
        _dailyTasks.add(TodoItem(_taskController.text, false));
        _taskController.clear();
      });
    }
  }

  void _toggleTaskStatus(int index) {
    setState(() {
      _dailyTasks[index].isCompleted = !_dailyTasks[index].isCompleted;
    });
  }

  Widget _buildTaskList() {
    return Column(
      children: _dailyTasks.map((todoItem) {
        int index = _dailyTasks.indexOf(todoItem);
        return _buildTaskItem(todoItem, index);
      }).toList(),
    );
  }

  Widget _buildTaskItem(TodoItem todoItem, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              todoItem.task,
              style: TextStyle(
                fontSize: 18.0,
                decoration: todoItem.isCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ),
          Checkbox(
            value: todoItem.isCompleted,
            onChanged: (bool? newValue) {
              _toggleTaskStatus(index);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas Diárias'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _taskController,
              decoration: InputDecoration(
                labelText: 'Adicionar nova tarefa do dia',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: _addTask,
              child: Text('Adicionar Tarefa'),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: SingleChildScrollView(
                child: _buildTaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

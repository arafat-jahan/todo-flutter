import 'package:flutter/material.dart';
import 'add_task_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> tasks = [
    {'title': 'Play game', 'subtitle': 'Play basketball', 'time': '19:30'},
    {'title': 'Meeting', 'subtitle': 'Project discussion', 'time': '14:00'},
  ];

  void _navigateToAddTaskScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddTaskScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To do')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              title: Text(tasks[index]['title']),
              subtitle: Text(tasks[index]['subtitle']),
              trailing: Text(tasks[index]['time']),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddTaskScreen,
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todoapp/components/dialog_box.dart';
import 'package:todoapp/components/todo_tile.dart';
import 'package:todoapp/data/database.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //Hive box
  final _myBox = Hive.box('mybox');

  //Instantiate the db
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    //If there is no data, create initial data
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  //Text controller
  final _controller = TextEditingController();

  void checkboxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = value;
    });
  }

  //Save new task
  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
    db.updateDataBase();
    _controller.clear();
  }

  //Cancel task
  void cancelTask() {
    _controller.clear();
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  //Add new task to the list
  void addTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onCancel: cancelTask,
          onSave: saveNewTask,
        );
      },
    );
  }

  //Delete task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Text('TO DO List'), elevation: 0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTask();
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) => TodoTile(
          onDelete: (context) {
            deleteTask(index);
          },
          taskName: db.toDoList[index][0],
          taskCompleted: db.toDoList[index][1],
          onChanged: (value) {
            setState(() {
              checkboxChanged(value, index);
            });
          },
        ),
      ),
    );
  }
}

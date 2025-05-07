import 'package:flutter/material.dart';

import 'package:todoapp/components/todo_tiles.dart';

import 'utilities/Forms/input_dialog.dart';
import 'utilities/button_save_und_cancel.dart';
import 'utilities/Forms/confirm_delete_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List toDoList = [
  
  ];

  TextEditingController _controller = TextEditingController();

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = value!;
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return InputDialog(
          controller: _controller,
          onSave: () {
            setState(() {
              toDoList.add([_controller.text, false]);
              _controller.clear();
            });
            Navigator.of(context).pop();
          },
          onCancel: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: Scrollbar(
        thickness: 10,
        radius: const Radius.circular(8),
        child: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
              onDelete: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return ConfirmDeleteDialog(
                      onDelete: () {
                        setState(() {
                          toDoList.removeAt(index);
                        });
                        Navigator.of(context).pop();
                      },
                      onCancel: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

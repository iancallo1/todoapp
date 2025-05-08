import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../pages/utilities/Forms/confirm_delete_dialog.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  final VoidCallback? onDelete;
  
   TodoTile({
    super.key, 
    required this.taskName, 
    required this.taskCompleted, 
    required this.onChanged,
    this.onDelete});

  @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right:25, top:25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                if (onDelete != null) {
                  onDelete!();
                }
              },
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: Row(
              children: [
                Checkbox(value: taskCompleted, onChanged: onChanged),
                Expanded(
                  child: Text(
                    taskName,
                    style: TextStyle(
                      decoration: taskCompleted ? TextDecoration.lineThrough : null,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(left:25.0, right:25, top:25 ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          if (onChanged != null) {
            onChanged!(!taskCompleted);
          }
        },
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
                PopupMenuButton<String>(
                  onSelected: (value) {
                    if (value == 'delete' && onDelete != null) {
                      onDelete!();
                    }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'delete',
                      height: 35,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: const Text(
                        'Delete',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
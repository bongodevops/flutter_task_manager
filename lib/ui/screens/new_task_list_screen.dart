import 'package:flutter/material.dart';

import '../widgets/task_body_card.dart';
import '../widgets/task_manager_summary_card.dart';
import 'add_new_task_screen.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 12),
            /// create task manager summary card
            SizedBox(
              height: 100,
              child: ListView.separated(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  /// task manager summary card add
                  return TaskManagerSummaryCard(title: 'Progress', count: 10);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 4);
                },
              ),
            ),
           const SizedBox(height: 16),

            /// create task  card
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  /// task body card add
                  return TaskBodyCard(
                    taskType: TaskType.tNew,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      /// floating action button add
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddNewTaskScreen,
        child: Icon(Icons.add),
      ),
    );
  }

  void _onTapAddNewTaskScreen(){
    Navigator.pushNamed(context, AddNewTaskScreen.name);

  }

}

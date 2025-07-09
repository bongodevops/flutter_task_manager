import 'package:flutter/material.dart';

import '../widgets/task_body_card.dart';

class CompletedTaskListScreen extends StatefulWidget {
  const CompletedTaskListScreen({super.key});

  @override
  State<CompletedTaskListScreen> createState() => _CompletedTaskListScreenState();
}

class _CompletedTaskListScreenState extends State<CompletedTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            /// task  body card reuse
            return TaskBodyCard(
              taskType: TaskType.tCompleted,
            );
          },
        ),
      ),
    );
  }
}

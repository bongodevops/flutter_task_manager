import 'package:flutter/material.dart';

import '../widgets/task_body_card.dart';

class CancelTaskListScreen extends StatefulWidget {
  const CancelTaskListScreen({super.key});

  @override
  State<CancelTaskListScreen> createState() => _CancelTaskListScreenState();
}

class _CancelTaskListScreenState extends State<CancelTaskListScreen> {
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
              taskType: TaskType.tCancel,
            );
          },
        ),
      ),
    );
  }
}

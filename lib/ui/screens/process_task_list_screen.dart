import 'package:flutter/material.dart';

import '../widgets/task_body_card.dart';

class ProcessTaskListScreen extends StatefulWidget {
  const ProcessTaskListScreen({super.key});

  @override
  State<ProcessTaskListScreen> createState() => _ProcessTaskListScreenState();
}

class _ProcessTaskListScreenState extends State<ProcessTaskListScreen> {
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
              taskType: TaskType.tProcess,
            );
          },
        ),
      ),
    );
  }
}



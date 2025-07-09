import 'package:flutter/material.dart';
/// enum use for task type
enum TaskType{ tNew, tProcess,tCompleted,tCancel }
/// enum use for task name
enum TaskName{ tNew, tProcess,tCompleted,tCancel }


class TaskBodyCard extends StatelessWidget {
  const TaskBodyCard({
    super.key,
    required this.taskType,
  });
 /// TaskType add must be required
final TaskType taskType ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_getTaskName(taskType).toString(),style: Theme.of(context).textTheme.titleLarge,),
              Text("This is Task Description",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 8,),
              Text("Date :12/25/25"),
              SizedBox(height: 16,),
              Row(
                children: [

                  Chip(
                   backgroundColor:_getTaskChipColor(taskType),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(

                        "New",style: TextStyle(
                          color: Colors.white),),
                    ),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red),),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
/// for color set
  Color _getTaskChipColor(TaskType taskType) {
    switch (taskType) {
      case TaskType.tNew:
        return Colors.blue;
      case TaskType.tProcess:
        return Colors.pink;
      case TaskType.tCompleted:
        return Colors.green;
      case TaskType.tCancel:
        return Colors.red;
    }

  }

  String _getTaskName(TaskType taskType) {
    switch (taskType) {
      case TaskType.tNew:
        return "New Task";
        case TaskType.tProcess:
          return "Progress";
      case TaskType.tCompleted:
        return "Completed";
      case TaskType.tCancel:
        return "Cancel";
    }

  }

}
import 'package:flutter/material.dart';
import 'package:flutter_task_manager/ui/widgets/screen_background.dart';

import '../widgets/task_manager_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});
  static const String name = '/add-new-task';

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskManagerAppBar(),
      body:ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32,),
                Text('Add New Task',style: Theme.of(context).textTheme.titleLarge,),
                SizedBox(height: 16,),
                TextFormField(
                  controller: _titleController,
                  validator: (String? value){
                    if (value?.trim().isEmpty ?? true){
                      return 'Title is required';
                    }else{
                      return null;
                    }
                  },

                  decoration: InputDecoration(

                    hintText: 'Title',
                  ),
                ),
                SizedBox(height: 16,),
                TextFormField(
                  controller: _descriptionController,
                  validator: (String? value){
                    if (value?.trim().isEmpty ?? true){
                      return 'Title is required';
                    }else{
                      return null;
                    }
                  },
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: 'Description',

                  ),
                ),
                SizedBox(height: 24,),
                ElevatedButton(onPressed: _onTapAddNewTaskSubmit, child: Text('Save')),


              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapAddNewTaskSubmit(){
    if(_formKey.currentState!.validate()){

    }
    Navigator.pop(context);
  }


  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
}


import 'package:flutter/material.dart';

import '../widgets/task_manager_app_bar.dart';
import 'cancel_task_list_screen.dart';
import 'completed_task_list_screen.dart';
import 'process_task_list_screen.dart';
import 'new_task_list_screen.dart';

class MainNavBarHolderScreen extends StatefulWidget {
  const MainNavBarHolderScreen({super.key});
/// for name routing
  static const String name = '/main-nav-bar-holder';



  @override
  State<MainNavBarHolderScreen> createState() => _MainNavBarHolderScreenState();
}

class _MainNavBarHolderScreenState extends State<MainNavBarHolderScreen> {
/// For bottom navigation bar screen widgets
  final List<Widget> _screens =[
    NewTaskListScreen(),
    ProcessTaskListScreen(),
    CompletedTaskListScreen(),
    CancelTaskListScreen(),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TaskManagerAppBar(),
      /// For bottom navigation bar screen widgets
      body: _screens[_selectedIndex],

      /// For bottom navigation bar
      bottomNavigationBar: NavigationBar(

        /// For bottom navigation bar index
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        /// For bottom navigation bar index end
        destinations: [
          NavigationDestination(icon: Icon(Icons.new_label), label: 'new Task'),
          NavigationDestination(icon: Icon(Icons.task), label: 'Process'),
          NavigationDestination(icon: Icon(Icons.done), label: 'Completed'),
          NavigationDestination(icon: Icon(Icons.delete), label: 'Cancel'),

        ],
      ),

      ////// For bottom navigation bar end
    );
  }
}


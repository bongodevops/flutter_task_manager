import 'package:flutter/material.dart';
import 'package:flutter_task_manager/ui/screens/sign_in_screen.dart';

import '../../app.dart';
import '../screens/profile_update_screen.dart';

class TaskManagerAppBar extends StatefulWidget implements PreferredSizeWidget {
  const TaskManagerAppBar({super.key});

  @override
  State<TaskManagerAppBar> createState() => _TaskManagerAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _TaskManagerAppBarState extends State<TaskManagerAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: GestureDetector(
        onTap: _onTapTaskProfileBar,
        child: Row(
          children: [
            CircleAvatar(),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hafiz Rahman Omar',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'hafiz@gmail.com',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            /// signature method add => _onTapLogoutButton
            IconButton(onPressed: _onTapLogoutButton, icon: Icon(Icons.logout)),
          ],
        ),
      ),
    );
  }

  /// signature method create
  void _onTapLogoutButton() {
    Navigator.pushNamedAndRemoveUntil(
      context,
      SignInScreen.name,
      (predicate) => false,
    );
  }

  void _onTapTaskProfileBar() {
    // if (TaskManagerApp.navigator.currentState!.)
    Navigator.pushNamed(context, ProfileUpdateScreen.name);
    if (TaskManagerApp.navigator.currentState!.canPop()) {
      TaskManagerApp.navigator.currentState!.pop();
      return;
    }
  }
}

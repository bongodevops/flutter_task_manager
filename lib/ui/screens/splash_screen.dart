import 'package:flutter/material.dart';
import 'package:flutter_task_manager/ui/widgets/app_logo.dart';
import 'package:flutter_task_manager/ui/widgets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  /// route static variable create
  static const String name = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  /// initState create
  @override
  void initState() {
    _moveToNextScreen();
    super.initState();
  }
  ///  asynchronous function create

  Future<void> _moveToNextScreen() async{
    await Future.delayed(Duration(seconds: 3));

    if(mounted == true){
    Navigator.pushReplacementNamed(context, '/sign-in');
  }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child: Center(child: AppLogo())),

    );
  }
}

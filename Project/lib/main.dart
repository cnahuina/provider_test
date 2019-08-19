import 'package:flutter/material.dart';
import 'package:project_provider/locator.dart';
import 'package:project_provider/ui/views/login_view.dart';

void main(){
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Project Demo',
      theme: ThemeData(),
      home: Container(
        child: LoginView(),
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_provider/ui/widgets/login_header.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginHeader(),
    );
  }
}
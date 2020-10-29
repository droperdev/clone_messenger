import 'package:clone_messenger/ui/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CloneMessenger());
}

class CloneMessenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Messenger',
      home: LoginPage(),
    );
  }
}


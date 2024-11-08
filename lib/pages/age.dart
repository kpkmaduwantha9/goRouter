import 'package:flutter/material.dart';

class AgePAge extends StatelessWidget {
  final int age;
  const AgePAge({super.key, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("age is : $age"),
      ),
    );
  }
}

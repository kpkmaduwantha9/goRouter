import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Home Page",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/profile");
            },
            child: Text("Goto Profile"),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/profile/child");
            },
            child: Text("Goto Child page"),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/user", extra: {
                "name": "kpk",
                "age": 24,
              });
            },
            child: Text("Goto User page"),
          )
        ],
      ),
    );
  }
}

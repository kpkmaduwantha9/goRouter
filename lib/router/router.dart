import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/home_page.dart';
import 'package:gorouter/pages/profile_page.dart';
import 'package:gorouter/pages/user_page.dart';
import 'package:gorouter/router/route_names.dart';

import '../pages/child_page.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",
    errorPageBuilder: (context, state) {
      return MaterialPage<dynamic>(
        child: Scaffold(
          body: Center(
            child: Text("This page is not found"),
          ),
        ),
      );
    },
    routes: [
      //Home Page
      GoRoute(
        name: "home",
        path: "/",
        builder: (context, state) {
          return HomePage();
        },
      ),

      //profile page
      GoRoute(
        name: RouteNamesClass.profile,
        path: "/profile",
        builder: (context, state) {
          return ProfilePage();
        },

        //>> profile /child

        routes: [
          GoRoute(
            name: "child",
            path: "child",
            builder: (context, state) {
              return const ChildPage();
            },
          )
        ],
      ),

      /*//user page extra parameter
      GoRoute(
        path: "/user",
        builder: (context, state) {
          final name = (state.extra as Map<String, dynamic>)["name"] as String;
          final age = (state.extra as Map<String, dynamic>)["age"] as int;

          return UserPage(
            userName: name,
            userAge: age,
          );
        },
      ),*/

      //user page path parameter
      GoRoute(
        path: "/user/:name",
        builder: (context, state) {
          return UserPage(userName: state.pathParameters['name']!);
        },
      )
    ],
  );
}

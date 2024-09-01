import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/error_page.dart';
import 'package:go_router_flutter/login_page.dart';
import 'package:go_router_flutter/page_one.dart';
import 'package:go_router_flutter/page_one_details.dart';
import 'package:go_router_flutter/page_two.dart';
import 'package:go_router_flutter/profile_page.dart';

import 'home_page.dart';

var login = false;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }

  final _router = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      redirect: (context, state) {
        if(!login) {
          return '/login';
        }
        return null;
      },
      errorBuilder: (context, state) => const ErrorPage(),
      routes: [
        GoRoute(
            name: 'home',
            path: '/',
            builder: (context, state) => const HomePage(),
            routes: [
              GoRoute(
                name: ProfilePage.routerName,
                path: 'profile/:id',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return ProfilePage(id: int.parse(id));
                },
              ),
            ]),
        GoRoute(
            name: 'one',
            path: '/one',
            builder: (context, state) => const PageOne(),
            routes: [
              GoRoute(
                  path: 'one_details',
                  builder: (context, state) => const PageOneDetails()),
            ]),
        GoRoute(
            name: 'two',
            path: '/two',
            builder: (context, state) {
              final msg = state.extra! as String;
              return PageTwo(greeting: msg);
            }),
        GoRoute(
            path: '/login',
            builder: (context, state) {
              return const LoginPage();
            }),
      ]);
}

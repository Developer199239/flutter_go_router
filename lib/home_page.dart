import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/error_page.dart';
import 'package:go_router_flutter/main.dart';
import 'package:go_router_flutter/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: () {
              context.goNamed('one');
              // context.go('/one');
            }, child: const Text("Page one")),
            ElevatedButton(onPressed: () {
              context.go('/two', extra: 'Hello Flutter');
            }, child: const Text("Page two")),

            ElevatedButton(onPressed: () {
              context.goNamed(ProfilePage.routerName, pathParameters: {'id': '1'});
            }, child: const Text("Profile Details")),

            ElevatedButton(onPressed: () {
              context.go(ErrorPage.errorPageRoute);
            }, child: const Text("ErrorPage"))
          ],
        ),
      ),
    );
  }
}

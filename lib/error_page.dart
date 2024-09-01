import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  static const String errorPageRoute = 'errorPage';
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Page not found"),
          ],
        ),
      ),
    );
  }
}

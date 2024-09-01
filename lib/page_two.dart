import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final String greeting;
  const PageTwo({super.key, required this.greeting});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page two'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(greeting),
          ],
        ),
      ),
    );
  }
}

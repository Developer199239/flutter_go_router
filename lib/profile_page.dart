import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const String routerName = 'profile';
  int id;
  ProfilePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$id', style: Theme.of(context).textTheme.headlineLarge,)
          ],
        ),
      ),
    );
  }
}

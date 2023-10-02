import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login Page',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                TextField(
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                SizedBox(
                  height: 30,
                ),
              ]),
        ),
      ),
    );
  }
}

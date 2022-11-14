import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'FirstApp',
      home: Scaffold(
        appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
      ),
        body: Column(
          children: [
            LoginScreen(), 
            // ProductList(),
          ],
        )

      ),
    );
  }
}
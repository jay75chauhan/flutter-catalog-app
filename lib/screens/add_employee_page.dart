import 'package:flutter/material.dart';

class AddEmployee extends StatelessWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddEmployee'),
      ),
      body: const Center(
        child: Text('Hello World is a Flutter App'),
      ),
    );
  }
}

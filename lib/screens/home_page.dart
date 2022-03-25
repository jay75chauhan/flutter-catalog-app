import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Hello World is a Flutter App'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: const ButtonStyle(),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.addemployee);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                child: Text(
                  "Add Employee",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

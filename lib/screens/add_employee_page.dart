import 'package:flutter/material.dart';

class AddEmployee extends StatelessWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Employee'),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Department',
                  hintText: " Enter Employee Name",
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Department',
                  hintText: "Enter Department",
                ),
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: 'Designation',
                hintText: "Enter your password",
              )),
              TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Contact No',
                    hintText: "Enter your Contact No",
                  )),
              TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Joining Date',
                    hintText: "Enter Joining Date",
                  )),
              TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Reporting Manager',
                    hintText: "Enter Reporting Manager Name",
                  )),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  // ignore: avoid_print
                  print("hii");
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  child: Text(
                    "submit",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ])),
      ),
    );
  }
}

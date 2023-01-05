// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:phoneapp/Screens/contact_Screen.dart';
import 'package:phoneapp/Widgets/usedwidgets.dart';
import 'package:phoneapp/model.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController Surname = TextEditingController();
  TextEditingController Phone = TextEditingController();

  addNewContact(context) {
    setState(() {
      Contact.add({
        "Name": name.text,
        "Surname": Surname.text,
        "Phone": Phone.text,
      });
      print(Contact);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
                onPressed: () {
                  addNewContact(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ContactScreen()));
                },
                icon: Icon(
                  Icons.done,
                  size: 30,
                )),
          )
        ],
        title: Text(
          'Add',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mostused(name: 'Name'),
              textfield(hintname: "Enter Name", controllername: name),
              mostused(
                name: 'Surname',
              ),
              textfield(hintname: 'Surname', controllername: Surname),
              mostused(
                name: 'Phone number',
              ),
              textfield(hintname: 'Phone number', controllername: Phone)
            ],
          ),
        ),
      ),
    );
  }
}

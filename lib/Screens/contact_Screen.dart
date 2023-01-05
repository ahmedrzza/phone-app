import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:phoneapp/Screens/add_Screen.dart';
import 'package:phoneapp/model.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  
  editContact(context, index) {
    setState(() {
      Navigator.pop(context);
      Contact[index] = {
        "name": Contact[index]['Name'].text,
        "Sirname":Contact[index]['Surname'].text,
        "number": Contact[index]['Phone'].text
      };
      
    });
    print(Contact);
  }
  deleteContact(context, index) {
    setState(() {
      Contact[index] = {
        "name": Contact[index]['Name'].text == '',
        "userName": Contact[index]['Surname'].text == '',
        "number": Contact[index]['Phone'].text == '',
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          Icon(
            Icons.search_outlined,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            size: 30,
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: Contact.length,
          itemBuilder: (context, index) {
            return ListTile(
              
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text("${Contact[index]['Name'][0]}"),
              ) ,
              title: Row(
                children: [
                  Text("${Contact[index]['Name']}"),
                  SizedBox(
                    width: 3,
                  ),
                  Text("${Contact[index]['Surname']}"),
                ],
              ),
              subtitle: Text("${Contact[index]['Phone']}"),

              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {
                    deleteContact(context, index);
                  }, icon: Icon(Icons.delete)),
                  IconButton(onPressed: () {
                    editContact(context, index);
                  }, icon: Icon(Icons.edit))
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddScreen(),
            ),
          );
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}


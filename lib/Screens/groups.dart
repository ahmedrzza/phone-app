import 'package:flutter/material.dart';
import 'package:phoneapp/Widgets/usedwidgets.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  // int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                'Groups',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Groupscontainer(
                      context, 'Family', Colors.green[100], Colors.green[300]),
                  SizedBox(
                    width: 20,
                  ),
                  Groupscontainer(
                      context, 'Friends', Colors.pink[100], Colors.pink[300])
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  title: Padding(
                    padding:
                        const EdgeInsets.only(top: 100, right: 110, bottom: 10),
                    child: FloatingActionButton.small(
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'New group',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[400]),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 15, top: 5),
              child: Text(
                'Favorite',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}

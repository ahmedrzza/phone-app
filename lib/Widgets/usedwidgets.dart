import 'package:flutter/material.dart';
import 'package:phoneapp/Screens/groups.dart';

mostused({
  required String name,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 20, bottom: 5),
    child: Text(
      name,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    ),
  );
}

textfield({required hintname,required controllername}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      controller: controllername,
      obscureText: false,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD9D9D9)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD9D9D9)),
        ),
        hintText: hintname,
      ),
    ),
  );
}

Groupscontainer(context, groupname,color,textcolor) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.3,
    width: MediaQuery.of(context).size.width * 0.45,
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.circular(30)),
    child: Stack(children: [
      Positioned(
        top: MediaQuery.of(context).size.height * 0.15,
        left: MediaQuery.of(context).size.width * 0.06,
        child: Text(
          groupname,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: textcolor),
        ),
      ),
    ]),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    final url = "";
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            accountName: Text("Jiten Bhalavat"),
            accountEmail: Text("20it003@charusat.edu.in"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset("assets/images/jiten.jpg"),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.home,
            color: Colors.black,
          ),
          title: Text(
            "Home",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.black,
          ),
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.mail,
            color: Colors.black,
          ),
          title: Text(
            "E-Mail",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.arrow_down_doc_fill,
            color: Colors.black,
          ),
          title: Text(
            "Result",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    ));
  }
}

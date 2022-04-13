import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class home_page extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Dashboard",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.red,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        drawer: MyDrawer(),
      ),
    );
  }
}
/*(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        print("hellllo jiten 1");
                      },
                      child: Image(
                        image: AssetImage("assets/images/changa.jpg"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        print("Bhalavat");
                      },
                      child: Image(
                        image: AssetImage("assets/images/changa.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        print("hellllo jiten 1");
                      },
                      child: Image(
                        image: AssetImage("assets/images/changa.jpg"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        print("Bhalavat");
                      },
                      child: Image(
                        image: AssetImage("assets/images/changa.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),*/
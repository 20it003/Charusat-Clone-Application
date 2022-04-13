import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yt_prac_codepur/MakeDashboardItems.dart';
import 'package:yt_prac_codepur/MakeDashboardItems.dart';
import 'package:yt_prac_codepur/home_page.dart';
import 'package:yt_prac_codepur/main.dart';

class Login_page extends StatefulWidget {
  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  var name = "";
  final _form_key = GlobalKey<FormState>();

  movetohome(BuildContext context) {
    if (_form_key.currentState!.validate()) {
      //navigation of new page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MakeDashboardItems()),
      );
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Charusat Login Page"),
            backgroundColor: Colors.green,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Form(
              key: _form_key,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/changa.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Welcome $name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter your Username",
                            labelText: "Username",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be empty";
                            } else
                              return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter your Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "Password should conatin atleast 6 characters";
                            } else
                              return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  InkWell(
                    onTap: () {
                      movetohome(context);
                    },
                    child: Ink(
                      width: 120,
                      height: 45,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                        child: Text(
                          "LogIn",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  )
                  /*ElevatedButton(
                onPressed: () {
                  print("Successfully Login");
                },
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(100, 40)),
              )*/
                ],
              ),
            ),
          ),
        ));
  }
}

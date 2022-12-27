import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminar_assignments/Login%20and%20Signup/login_page.dart';

class sign_up_page extends StatefulWidget{
  @override
  State<sign_up_page> createState() => _sign_up_pageState();
}

class _sign_up_pageState extends State<sign_up_page> {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black),
            ),
            heightFactor: 2,
          ),
          Text(
            "Create an Account, Its free",
            style: TextStyle(fontSize: 13, color: Colors.black45),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.account_box_sharp),
                  hintText: "Email ID",
                  labelText: 'Email ID',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              textInputAction: TextInputAction.next,
              validator: (uname) {
                if (uname!.isEmpty || !uname.contains('@')) {
                  return 'Enter a valid Email ID';
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              obscureText: showpass,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.visibility_off),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(
                        showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      )),
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              textInputAction: TextInputAction.next,
              validator: (Password) {
                if (Password!.isEmpty || Password.length<6) {
                  return "Enter a valid Password, length should be greater than 6";
                }else{
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              obscureText: showpass,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.visibility_off),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(
                        showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      )),
                  hintText: "Confirm Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              textInputAction: TextInputAction.done,
              validator: (Password) {
                if (Password!.isEmpty || Password.length<6) {
                  return "Enter the same password as above";
                }else{
                  return null;
                }
              },
            ),
          ),
          Center(
            heightFactor: 2,
            child: SizedBox(
              width: 450,
              height: 50,
              child: ElevatedButton(
                onPressed: () { },
                child: Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            child: Text("Do you have an account? Login",
            style: TextStyle(fontSize: 15, color: Colors.black45)),
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage()));
              
          },
          ),
        ],
      ),
    );
  }
}
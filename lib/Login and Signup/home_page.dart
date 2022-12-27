import 'package:flutter/material.dart';
import 'package:luminar_assignments/Login%20and%20Signup/login_page.dart';
import 'package:luminar_assignments/Login%20and%20Signup/sign_up_page.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Hello There!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black),
            ),
            heightFactor: 2,
          ),
          const Text(
            "Autimatic identity verification which enable you to verify your identity",
            style: TextStyle(fontSize: 13, color: Colors.black45),
          ),
          const Image(
            image: NetworkImage(
                "https://res.cloudinary.com/practicaldev/image/fetch/s--U_859tYO--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://thepracticaldev.s3.amazonaws.com/i/2c8au8e0emyyw1y2092o.png"),
            height: 300,
            width: 300,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginpage()));
              },
              child: const Text("Login"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shadowColor: Colors.green[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  )),
            ),
          ),
          Center(
            heightFactor: 2,
            child: SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sign_up_page()));
                },
                child: const Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

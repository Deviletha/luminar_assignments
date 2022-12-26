import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Hello There!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.blue),
            ),
            heightFactor: 3,
          ),
          Text(
            "Autimatic identity verification which enable you to verify your identity",
            style: TextStyle(fontSize: 10, color: Colors.grey.shade200),
          ),
          const Image(
              image: NetworkImage(
                  "https://res.cloudinary.com/practicaldev/image/fetch/s--U_859tYO--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://thepracticaldev.s3.amazonaws.com/i/2c8au8e0emyyw1y2092o.png"),
          height: 300,
          width: 300,),
          SizedBox(width:200,
          height: 50,
          child: ElevatedButton(onPressed: () { },
          child: Text("Login"
          ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shadowColor: Colors.green.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              )
            ),
          ),
          ),
          Center(
            heightFactor: 2,
            child: SizedBox(
              width:300,
              height: 50,
              child: ElevatedButton(onPressed: () { },
                child: Text("Sign Up",style: TextStyle(color: Colors.blueGrey),
                ),
                style: ElevatedButton.styleFrom( backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

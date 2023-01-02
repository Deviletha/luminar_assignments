import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  void main() {
  runApp(MaterialApp(
    home: Profile_UI(),
  ));
}


class Profile_UI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Icon(Icons.table_rows)], title: Text("Profile"),),

      body: Container(
        height: 900,
        width: 500,
        child: Stack(
            children: [
              Card(
                child: Image(
                  image: NetworkImage("https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmlsZGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
              Positioned(
                left: 60,top: 250,
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.message, size: 30,color: Colors.white,),
                      backgroundColor: Colors.red,
                      radius: 30,
                    ),
                    SizedBox(
                      height: 30, width: 30,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/icons/601074e4-4a6e-4339-9f7e-3bb718dc1910.jpeg"), radius: 60,
                      ),
                    SizedBox(
                      height: 30, width: 30,
                    ),
                    CircleAvatar(
                      child: Icon(Icons.add, size: 30,),
                      backgroundColor: Colors.blue,
                      radius: 30,
                    )
                  ],
                ),
              ),
              Positioned(
                  left: 130,
                  right: 0,
                  top: 390,
                  child: Text("Deviletha Sai",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black),)
              ),
              Positioned(
                  left: 170,
                  right: 0,
                  top: 440,
                  child: Text("jr.flutter developer",style: TextStyle(color: Colors.blue),)
              ),
            ],
          ),
      ),
    );
  }

}
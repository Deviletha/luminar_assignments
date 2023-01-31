import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.grey),
    home: Bank_ui(),
  ));
}

class Bank_ui extends StatefulWidget{
  @override
  State<Bank_ui> createState() => _Bank_uiState();
}

class _Bank_uiState extends State<Bank_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome! MAUSAM"),
            leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.qr_code_scanner)
        ],
      ),

    );
  }
}
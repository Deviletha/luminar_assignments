import 'package:flutter/material.dart';
import 'package:luminar_assignments/WhatsApp%20UI/Call.dart';
import 'package:luminar_assignments/WhatsApp%20UI/Chats.dart';
import 'package:luminar_assignments/WhatsApp%20UI/Status.dart';

void main() {
  runApp(MaterialApp(

    home: Tab_bar(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xff2e7d32)
      ),
    ),),);
}
class Tab_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.green[800],
          title: Text("WhatsApp"),
          actions: [
            Icon(Icons.search_sharp),
            SizedBox(width: 10,),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings"))
              ];
            })
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            // indicator: BoxDecoration(shape: BoxShape.circle),
            indicatorColor: Colors.green,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width*.1,
                child: Tab(
                  icon: Icon(Icons.camera_alt_rounded),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Tab(
                  text: "Chats",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Tab(
                  text: "Status",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Tab(
                  text: "Call",
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Camera"),
            ),
            Chats(),
            Status(),
            Call(),
          ],
        ),
      ),
    );
  }
}

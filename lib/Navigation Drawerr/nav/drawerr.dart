import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: Navdrawer()));
}


class Navdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      endDrawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.deepOrangeAccent[50]),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Deviletha Sai",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                accountEmail: Text("devisai91@gmail.com"),
                currentAccountPicture: GestureDetector(
                  onTap: ( ) {
                    print("Current Profile");
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/1354205468/photo/portrait-of-beautiful-indian-it-programmer-working-on-desktop-computer-smiling-and-looking-at.jpg?b=1&s=170667a&w=0&k=20&c=1fdU1ajrv4UmxMLJStAvvIx5A9nBAV4VGJ7ThlUN0_E="),),
                ),
                decoration: BoxDecoration(image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1570215171655-49dc3fa810b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c29mdHdhcmUlMjBkZXZlbG9wZXJzfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                    fit: BoxFit.cover)
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard_outlined),
                title: Text("Dashboard"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_outlined),
                title: Text("Leads"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.man_outlined),
                title: Text("Clients"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.notification_important_sharp),
                title: Text("Projects"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.man_sharp),
                title: Text("Partners"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.subscriptions_outlined),
                title: Text("Subscription"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.payments_outlined),
                title: Text("Payments"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle_sharp),
                title: Text("Users"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.library_add_check_rounded),
                title: Text("Library"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.local_activity),
                title: Text("Local Activity"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settingd"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Log Out"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent[100],
                      shadowColor: Colors.redAccent[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

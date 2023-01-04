import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("My Status"),
            subtitle: Text("Tap to add status update"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/1354205468/photo/portrait-of-beautiful-indian-it-programmer-working-on-desktop-computer-smiling-and-looking-at.jpg?b=1&s=170667a&w=0&k=20&c=1fdU1ajrv4UmxMLJStAvvIx5A9nBAV4VGJ7ThlUN0_E="),
              radius: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              color: Colors.grey[200],
              child: SizedBox(
                width: double.infinity,
                height: 18,
                child: Text("Recent Updates"),
              ),
            ),
          ),
          ListTile(
            title: Text("Keerthana Pradeep"),
            subtitle: Text("15 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1632324343640-86af9827dbeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ListTile(
            title: Text("Ajay Chelat"),
            subtitle: Text("21 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1563170423-18f482d82cc8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              color: Colors.grey[200],
              child: SizedBox(
                width: double.infinity,
                height: 18,
                child: Text("Viewed Updates"),
              ),
            ),
          ),
          ListTile(
            title: Text("Saikrishna"),
            subtitle: Text("34 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1643732994192-03856731da2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njl8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ListTile(
            title: Text("Prayaga"),
            subtitle: Text("1 hr ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ListTile(
            title: Text("Kichu"),
            subtitle: Text("8 hours ago "),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ListTile(
            title: Text("Athira Ajay"),
            subtitle: Text("yesterday, 10.59"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1655874819398-c6dfbec68ac7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTMzfHxhdmF0YXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ListTile(
            title: Text("Sanjeev"),
            subtitle: Text("yesterday, 9.40"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ListTile(
            title: Text("Darshan"),
            subtitle: Text("yesterday, 8.20"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ListTile(
            title: Text("Swathigha Sudheer"),
            subtitle: Text("yesterday, 7.00"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
        ],
      ),
    );
  }
}

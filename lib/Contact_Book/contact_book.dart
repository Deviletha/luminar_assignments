import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Contact_Book(),
  ));
}

class Contact_Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favourite Contacts"),
          actions: [
        Icon(Icons.favorite),
        SizedBox(width: 200),
        Icon(Icons.add),
        SizedBox(width: 50)
      ]
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Ajay Chelat"),
              subtitle: Text("9995682535"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Arathi Sanjeev"),
              subtitle: Text("9547856125"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Ashmi Manohar"),
              subtitle: Text("6584795685"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Aswathi"),
              subtitle: Text("8291968745"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1628890923662-2cb23c2e0cfe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Athira Ajay"),
              subtitle: Text("7485968459"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1655874819398-c6dfbec68ac7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTMzfHxhdmF0YXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Athulya"),
              subtitle: Text("8574961425"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Bibin"),
              subtitle: Text("7845123695"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1628890920690-9e29d0019b9b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Charls Antony"),
              subtitle: Text("9587486895"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1636041246191-7a73c36ccbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzd8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Darshan"),
              subtitle: Text("7865142983"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Faizy"),
              subtitle: Text("8496523547"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Govind"),
              subtitle: Text("6214589673"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Keerthana Pradeep"),
              subtitle: Text("9475963214"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1632324343640-86af9827dbeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Prayaga"),
              subtitle: Text("8012586947"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Saikrishna"),
              subtitle: Text("7012115263"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1643732994192-03856731da2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njl8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Sanjeev"),
              subtitle: Text("9254945562"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.greenAccent[50],
            child: ListTile(
              title: Text("Swathigha Sudheer"),
              subtitle: Text("9656584752"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 30),
                  Icon(Icons.phone),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: utube(),
  ));
}

class utube extends StatefulWidget {
  @override
  State<utube> createState() => _utubeState();
}

class _utubeState extends State<utube> {
  var image = [
    "https://media.istockphoto.com/id/901211936/photo/woman-relaxing-and-listening-to-music.jpg?b=1&s=170667a&w=0&k=20&c=maL7lB3Mm1yr-_AZIKLEYjWJlXaASVgNcvdwZrKfKYo=",
    "https://images.unsplash.com/photo-1463592177119-bab2a00f3ccb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Ym9sbHl3b29kJTIwZGFuY2V8ZW58MHx8MHx8&w=1000&q=80",
    "https://plus.unsplash.com/premium_photo-1661329832448-b79c0fd51890?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWFuJTIwY2xhc3NpY2FsJTIwZGFuY2V8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1526095179574-86e545346ae6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8emVicmF8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1630910315693-99da9cf76efa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmlraW5nfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1516728513226-23c4045123a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW90b3JiaWtlJTIwcmFjaW5nfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            title: Text(
              "YouTube",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            floating: true,
            pinned: false,
            leading: Image.asset("assets/icons/youtube.png"),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.devices_outlined,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/icons/601074e4-4a6e-4339-9f7e-3bb718dc1910.jpeg"),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    // border: Border.all(
                    //     color: Colors.white60
                    // ),
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  height: 30,
                  width: 50,
                  child: Center(
                      child: Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 30,
                  width: 35,
                  child: Center(
                    child: Text("All", style: TextStyle(color: Colors.black)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 30,
                  width: 60,
                  child: Center(
                    child: Text("Mixes", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 30,
                  width: 60,
                  child: Center(
                    child: Text("Music", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 30,
                  width: 120,
                  child: Center(
                    child: Text("Malayalam Cinemas",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 30,
                  width: 60,
                  child: Center(
                    child:
                        Text("Jukebox", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: Image(fit: BoxFit.cover,
                        image: NetworkImage(image[index]),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/icons/601074e4-4a6e-4339-9f7e-3bb718dc1910.jpeg"),
                      ),
                      title: Text("Relaxing Malayalam Songs | Feel Good Songs",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      subtitle: Text(
                        "Deviletha Sai. 3.2M views.  1 year ago",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    )
                  ],
                );
              },
              itemCount: image.length,
            ),
          ]))
        ],
      ),
    );
  }
}

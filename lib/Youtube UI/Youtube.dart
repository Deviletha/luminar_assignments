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
    "https://media.istockphoto.com/id/944112198/photo/dance-form-indian-classical-feet-with-ghungru-bharatnatyam-katthak.jpg?b=1&s=170667a&w=0&k=20&c=2n3uTav4s60nJIbf_0I2WcZ15PsXQHy5A94wW623kX4=",
    "https://thred.com/wp-content/uploads/2022/04/photo-1487180144351-b8472da7d491_ixlibrb-1.2.jpg",
    "https://images.unsplash.com/photo-1526095179574-86e545346ae6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8emVicmF8ZW58MHx8MHx8&w=1000&q=80",
    "https://media.istockphoto.com/id/1270401890/photo/portrait-of-female-biker-smiling-for-camera-in-public-park.jpg?b=1&s=170667a&w=0&k=20&c=w0nVGEwV6GkNglEe608hxCPK3TmdY2SF0USZz_Yyj_A=",
    "https://images.unsplash.com/photo-1609174470568-ac0c96458a67?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGltYWxheWFuJTIwYmlrZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  ];

  var duration = [
    "02 :12 ",
    "06 :12 ",
    "02 :48 ",
    "05 :25 ",
    "02 :40 ",
    "03 :18 ",
  ];

  var titile = [
    "Relaxing Malayalam Songs | Feel Good Songs",
    "Classical Dance | Classical Dance Performance",
    "Relaxing Malayalam Songs | Feel Good Songs",
    "Animals are So cute | Animal planet",
    "Enjoy the Cycling | Morning view",
    "Ready to race.. | Enjoying the life",
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
                    Icons.cast,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 5,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 5,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 5,
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
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image[index]),
                              fit: BoxFit.cover)),
                      height: 200,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Text("CC"),
                          Text(duration[index],style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/icons/601074e4-4a6e-4339-9f7e-3bb718dc1910.jpeg"),
                      ),
                      title: Text(titile[index],
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      subtitle: Text(
                        "Deviletha Sai. 3.2M views.  1 year ago",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
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

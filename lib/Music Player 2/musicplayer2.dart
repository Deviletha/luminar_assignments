import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Music2(),
  ));
}

class Music2 extends StatefulWidget {
  @override
  State<Music2> createState() => _Music2State();
}

class _Music2State extends State<Music2> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      
      appBar: AppBar(title: Center(
        child: Text(
          "Playlists",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 40,
              color: Colors.pinkAccent[100],),textAlign: TextAlign.center,
        ),
      ), backgroundColor: Colors.black,),

      body: SingleChildScrollView(
        child: Column(
        
            children: [
              search(),
              Musics_grid(),
            ],
          // controller: controller
        ),
      ),
      bottomNavigationBar: SlidingClippedNavBar.colorful(
        backgroundColor: Colors.black,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        iconSize: 20,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.home,
            title: 'Home',
            activeColor: Colors.pinkAccent[100],
            inactiveColor: Colors.pinkAccent[100],
          ),
          BarItem(
            icon: Icons.search,
            title: 'Search',
            activeColor: Colors.pinkAccent[100],
            inactiveColor: Colors.pinkAccent[100],
          ),
          BarItem(
            icon: Icons.playlist_add_circle_outlined,
            title: 'Playlist',
            activeColor: Colors.pinkAccent[100],
            inactiveColor: Colors.pinkAccent[100],
          ),
          BarItem(
            icon: Icons.more_horiz,
            title: 'Menu',
            activeColor: Colors.pinkAccent[100],
            inactiveColor: Colors.pinkAccent[100],
          ),
        ],
      ),
    );
  }
}

class Musics_grid extends StatelessWidget {

  List<String>images = [
    "https://images.unsplash.com/photo-1516280440614-37939bbacd81?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmV3JTIwbXVzaWN8ZW58MHx8MHx8&w=1000&q=80",
    "https://media.istockphoto.com/id/958364166/photo/girl-in-headphones-listening-to-music-in-the-city-at-sunset.jpg?b=1&s=170667a&w=0&k=20&c=4fLCctdgv1eajvvzq4zKwUGfMbK7BC53gyKJ3Cx8rkY=",
    "https://media.istockphoto.com/id/1199243596/photo/concert-stage-on-rock-festival-music-instruments-silhouettes.jpg?b=1&s=170667a&w=0&k=20&c=YyK_M2YtGirW4gQpdvP4pPuuEQ4UGNrtEWIlKcP6ze8=",
    "https://images.unsplash.com/photo-1600779547877-be592ef5aad3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGl2ZXxlbnwwfHwwfGJsdWV8&w=1000&q=80",
    "https://media.istockphoto.com/id/1247853982/photo/cheering-crowd-with-hands-in-air-at-music-festival.jpg?b=1&s=170667a&w=0&k=20&c=FXD3auZtrihGRLRbKTBkq0WbT44HhaiNj4V6gcsQgFY=",
    "https://images.unsplash.com/photo-1611008457430-21544a3d3d85?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWxhYmFuemF8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1525926477800-7a3b10316ac6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG11c2ljJTIwYXJ0aXN0c3xlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://media.istockphoto.com/id/535403859/photo/dancing-at-disco.jpg?b=1&s=170667a&w=0&k=20&c=qYFw0N29Aa6RHZvaSSXAu7ed9DZv-636ZCyTiKLZeYM=",
    "https://media.istockphoto.com/id/1279654034/photo/studio-microphone-and-pop-shield-on-mic-in-the-empty-recording-studio-with-copy-space.jpg?b=1&s=170667a&w=0&k=20&c=bw8TATpYbFE6vaX6czvC0WJJA_i_NsUijRG8Z0V-UDs=",
    "https://images.unsplash.com/photo-1616356601595-8af46b090cc4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bXVzaWMlMjBwbGF5ZXJ8ZW58MHx8MHx8&w=1000&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return
            // Container(color: Colors.black,
            // child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(height: 180,width: 180,
                      // height: MediaQuery.of(context).size.height / 10,
                      // width: MediaQuery.of(context).size.width *.3,
                      decoration: BoxDecoration(
                        // boxShadow: [BoxShadow(color: Colors.green,blurRadius: 8,),],
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(images[index])),
                      ),
                    ),
                  ],
                ),
              ],
            );
        });
  }
}
class search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey,
          height: 40,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search...',
                    suffixIcon: Icon(Icons.search_sharp)
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

}
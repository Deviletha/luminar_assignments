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

      body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Musics_grid(),
          ],
        // controller: controller
      ),
      bottomNavigationBar: SlidingClippedNavBar.colorful(
        backgroundColor: Colors.black,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        iconSize: 30,
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
    "https://st3.depositphotos.com/1006899/12789/i/600/depositphotos_127893414-stock-photo-special-offer-sign-symbol.jpg",
    "https://media.istockphoto.com/id/98026003/photo/tomatoes.jpg?b=1&s=170667a&w=0&k=20&c=MIz_LKVtdnXExJyOG1sltnt9p9Lw_YtsNi_YeCCDnHo=",
    "https://images.unsplash.com/photo-1488551511020-571c741f122a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
    "https://media.istockphoto.com/id/995518546/photo/assortment-of-colorful-ripe-tropical-fruits-top-view.jpg?b=1&s=170667a&w=0&k=20&c=frnzxYjtn8MP9kpLy7AY2DU_s9ohVBlAflpUacaDx7w=",
    "https://media.istockphoto.com/id/803556536/photo/fruit-fresh-mixed-tropical-fruit-salad-bowl-of-healthy-fresh-fruit-salad-died-and-fitness.jpg?b=1&s=170667a&w=0&k=20&c=E8JmmwmySy918mn2P-w14BCohxaAOGbt2e6sZrNgmRw=",
    "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1509358271058-acd22cc93898?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zmxhdm91cnN8ZW58MHx8MHx8&w=1000&q=80",
    "https://media.istockphoto.com/id/1075446340/photo/various-fresh-mix-salad-leaves-with-tomato-in-bowl-on-wooden-background.jpg?b=1&s=170667a&w=0&k=20&c=8dNVZB6mZPLjh5fZY7NmiMcfsJX_UY3HfGbRnlYVEfM=",
    "https://images.unsplash.com/photo-1553787434-45e1d245bfbb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8b3JnYW5pYyUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        //physics: NeverScrollableScrollPhysics(),
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
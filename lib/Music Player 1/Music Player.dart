import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musics(),
  ));
}

class Musics extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appBar: AppBar(title: Text("Musify",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent[200]),),),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                        "MUSIFY.",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            color: Colors.pinkAccent[100]),
                      )),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 120),
                        child: Text(
                          "Suggested Playlists",
                          style: TextStyle(
                              color: Colors.pinkAccent[100],
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: CarouselSlider(
                            items: [
                              SizedBox(
                                height: 130,
                                width: 370,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: const Card(
                                    child: Image(
                                      image: NetworkImage(
                                          "https://media.istockphoto.com/id/1400623377/photo/studio-microphone-in-neon-lights-sound-recording-equipment.jpg?b=1&s=170667a&w=0&k=20&c=j2Ibz07SF1G_Oj5waggAuKWMYT_iB6gBSHUKHlRkD7Q="),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 130,
                                width: 370,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: const Card(
                                    child: Image(
                                      image: NetworkImage(
                                          "https://media.istockphoto.com/id/538479389/photo/dj-mixer-with-headphones.jpg?b=1&s=170667a&w=0&k=20&c=tl0QBPrInjHZyFwH8fn1_G2jhVe3wqqMe_wWMD4kk50="),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 130,
                                width: 370,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: const Card(
                                    child: Image(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            options: CarouselOptions(
                              autoPlay: true,
                              viewportFraction: .7,
                              height: 200,
                              enlargeCenterPage: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.easeInToLinear,
                              autoPlayAnimationDuration:
                              Duration(milliseconds: 600),
                              enableInfiniteScroll: true,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80, top: 10),
                  child: Text(
                    "Recommanded For You",
                    style: TextStyle(
                        color: Colors.pinkAccent[100],
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTd8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"),
                          ),
                          title: Text(
                            "Hero",
                            style: TextStyle(color: Colors.pinkAccent[100]),
                          ),
                          subtitle: Text(
                            "Tyler Swift",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.pinkAccent[100],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.pinkAccent[100],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://th.bing.com/th/id/OIP.V2MuImi8hW9MD0xbWE3wZAHaHa?pid=ImgDet&rs=1"),
                          ),
                          title: Text(
                            "Unholy",
                            style: TextStyle(color: Colors.pinkAccent[100]),
                          ),
                          subtitle: Text(
                            "San Smith & Kevin Petras",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.pinkAccent[100],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.pinkAccent[100],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.istockphoto.com/id/1369567653/photo/thoughtful-serious-african-american-teen-girl-face-portrait.jpg?b=1&s=170667a&w=0&k=20&c=BSJgtAV6TQ7lysuk5_s1lk6kUAZIjzgxZx6XY80oCNQ="),
                          ),
                          title: Text(
                            "Lift Me UP ",
                            style: TextStyle(color: Colors.pinkAccent[100]),
                          ),
                          subtitle: const Text(
                            "Rihaana",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.pinkAccent[100],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.pinkAccent[100],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.istockphoto.com/id/947804676/photo/business-woman-is-depressed-she-felt-stressed-and-alone-in-the-house.jpg?b=1&s=170667a&w=0&k=20&c=a_kH182_MnBPLHhQS7QcZ86O_BvgJ0tMl1-Y3eh5Ges="),
                          ),
                          title: Text(
                            "Depression",
                            style: TextStyle(color: Colors.pinkAccent[100]),
                          ),
                          subtitle: const Text(
                            "Dax",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.pinkAccent[100],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.pinkAccent[100],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8&w=1000&q=80"),
                          ),
                          title: Text(
                            "I'm Good",
                            style: TextStyle(color: Colors.pinkAccent[100]),
                          ),
                          subtitle: const Text(
                            "David Guietta & Bebe Rexha",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.pinkAccent[100],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.download,
                                color: Colors.pinkAccent[100],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: BottomNavigationBar(
                          backgroundColor: Colors.black,
                          elevation: 30,
                          items: [
                            BottomNavigationBarItem(
                                icon: Icon(
                                  Icons.home,
                                  color: Colors.pinkAccent[100],
                                ),
                                label: "Home"),
                            const BottomNavigationBarItem(
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              label: "Search",
                            ),
                            const BottomNavigationBarItem(
                                icon: Icon(
                                  Icons.save_rounded,
                                  color: Colors.white,
                                ),
                                label: "Options"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
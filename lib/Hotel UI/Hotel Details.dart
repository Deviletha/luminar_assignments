import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Hotel_details(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hotel_details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_sharp), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: CustomScrollView(
        slivers: [ SliverToBoxAdapter(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tc3xlbnwwfHwwfHw%3D&w=1000&q=80")),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                        child: Text(
                          "DETAIL",
                          style: TextStyle(color: Colors.white,),
                        )),
                  ),
                  Positioned(
                    top: 250,
                    left: 0,
                    child: Column(
                      children: [
                        Text(
                          "The Raviz Calicut",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                        Text("Calicut, Kerala",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 295,
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.all(10),
                            height: 25,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[400],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20,left: 20,top: 7),
                              child: Text(
                                "8.4/98 reviews",
                                style: TextStyle(color: Colors.black, fontSize: 12),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                      right: 5,
                      top: 310,
                      child: Icon(
                        Icons.favorite_outline,
                        size: 35,
                        color: Colors.white,
                      )),
                ],
              ),
              Positioned(
                top: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.lightGreen,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.lightGreen,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.lightGreen,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.lightGreen,
                      ),
                      Icon(
                        Icons.star_half_sharp,
                        color: Colors.lightGreen,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210),
                        child: Column(
                          children: [
                            Text(
                              "\$200",
                              style: TextStyle(
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            Text(
                              "/per night",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 50,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.lightGreen,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 140, top: 15),
                    child: Text(
                      "Book Now",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 300, top: 10,bottom: 10),
                      child: Text(
                        "Description",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "The Raviz Calicut offers accommodation in Kozhikode. Free private parking and WiFi are available on site. Every room comes with a flat-screen TV. Certain units feature a seating area to relax in after a busy day. All rooms are fitted with a private bathroom. For your comfort, you will find bath robes and free toiletries. There is a spa and wellness centre and a massage parlour at the property where guests can pamper themselves. A library is available for those who love reading.Guests can enjoy palate pampering all day dining offerings at Keraleeyam, with a unique selection of a la carte menus as well as a buffet. Café Mavoor offers a plethora of beverages and fine Pastries, whereas Pergola is an al-fresco dining restaurant that serves brilliantly simple cuisines with exciting live counter options. Round-the-clock dining is also available in the comfort of your room.The hotel also offers car hire. The property is 25 km from Calicut International Airport and 3 km from Kozhikode Railway Station.",
                        style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
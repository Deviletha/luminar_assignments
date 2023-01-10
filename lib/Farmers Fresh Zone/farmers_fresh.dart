import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Farmers_Fresh(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class Farmers_Fresh extends StatefulWidget {
  @override
  State<Farmers_Fresh> createState() => _Farmers_FreshState();
}

class _Farmers_FreshState extends State<Farmers_Fresh> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("FARMERS FRESH ZONE",
              style: TextStyle(fontWeight: FontWeight.bold),),
            floating: true,
            pinned: true,
            actions: const [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.location_on_outlined),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 18),
                child: Text("Kochi", style: TextStyle(fontSize: 20),),
              ),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
            bottom: AppBar(
              title: Container(
                color: Colors.green[100],
                width: double.infinity,
                height: 40,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for Vegetables and Fruits...',
                        prefixIcon: Icon(Icons.search_sharp)
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            border: Border.all(
                                color: Colors.green
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 20,
                          width: 100,
                          child: Center(
                            child: Text("VEGETABLES",
                                style: TextStyle(color: Colors.green)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            border: Border.all(
                                color: Colors.green
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 20,
                          width: 80,
                          child: Center(
                            child: Text("FRUITS",
                                style: TextStyle(color: Colors.green)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            border: Border.all(
                                color: Colors.green
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 20,
                          width: 80,
                          child: Center(
                            child: Text("EXOTIC",
                                style: TextStyle(color: Colors.green)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            border: Border.all(
                                color: Colors.green
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 20,
                          width: 100,
                          child: Center(
                            child: Text("FRESH CUTS",
                                style: TextStyle(color: Colors.green)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CarouselSlider(items: [Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://media.istockphoto.com/id/1203599963/photo/food-background-with-assortment-of-fresh-organic-fruits-and-vegetables.jpg?b=1&s=170667a&w=0&k=20&c=-VB6zEFnk6G0dP2-5_55IZW1yKP4GNTw8iKvEwYHWqc="
                              ), fit: BoxFit.cover
                          )
                      ),
                    ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/995518546/photo/assortment-of-colorful-ripe-tropical-fruits-top-view.jpg?b=1&s=170667a&w=0&k=20&c=frnzxYjtn8MP9kpLy7AY2DU_s9ohVBlAflpUacaDx7w="
                                ), fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1310236336/photo/assortment-of-fresh-exotic-fruits-as-background-top-view.jpg?b=1&s=170667a&w=0&k=20&c=4_bf1uy2ipCKar7jCqpeBC1MVTi3yasIyCAzFOOfU4c="
                                ), fit: BoxFit.cover
                            )
                        ),
                      ),
                    ], options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1,
                        height: 250,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.bounceOut,
                        autoPlayAnimationDuration: Duration(milliseconds: 80),
                        enableInfiniteScroll: true
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.timer, color: Colors.green,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("30 MINS POLICY", style: TextStyle(
                                    color: Colors.green)
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.cell_tower_sharp, color: Colors
                                    .green),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("TRACEABILITY", style: TextStyle(
                                    color: Colors.green)
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.add_home_work_rounded, color: Colors
                                    .green),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("LOCAL SOURCING", style: TextStyle(
                                    color: Colors.green)
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]
              )
          ),
          SliverList(delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Shop By Category", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 10,
                ),
                Vegetables_grid(),
              ]
          )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}

class Vegetables_grid extends StatelessWidget {
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
  List<String> name = [
    "Offers", "Vegetables", "Fruits",
    "Exotic", "Fresh Cuts", "Nutrition Chargers",
    "Packed Flavours", "Gourmet Salads", "Organic Items"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.green,blurRadius: 8,),],
                      borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(images[index])),
          ),
          ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(child: Center(child: Text(name[index]))),
                ],
              ),
            ],
          );
        });
  }
}

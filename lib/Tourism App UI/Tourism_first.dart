import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminar_assignments/Tourism%20App%20UI/Second_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home1(),
  ));
}

class home1 extends StatefulWidget {
  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Places",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 50,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Popular",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                    color: Colors.black),
              ),
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },
                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1499678329028-101435549a4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTF8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "ITALY",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },

                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1504457047772-27faf1c00561?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dmlldG5hbXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "VIETNAM",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },
                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1508009603885-50cf7c579365?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGhhaWxhbmR8ZW58MHx8MHx8&w=1000&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "THAILAND",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },
                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/1345059895/photo/alley-of-memories.jpg?b=1&s=170667a&w=0&k=20&c=QXXwjyvDdbW-t18d9J8_u_no6GQeclmOE5YGsmu_PiM="),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "JAPAN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },
                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/491391396/photo/venice.jpg?b=1&s=170667a&w=0&k=20&c=7gH3XMfWu03i23eKcnV2sdZHskShYMNg4K8h2sdahGc="),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "EUROPE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
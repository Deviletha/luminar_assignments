import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class home2 extends StatefulWidget {  @override
State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image(image: NetworkImage("https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=820&q=80",),fit: BoxFit.cover,),
            ),
            Container(
              width: double.infinity,
              height: 300,
              child: ListTile(
                title: Text("ITALY",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                subtitle: Text("Italy was the native place of many civilizations such as the Italic peoples and the Etruscans, while due to its central geographic location in Southern Europe and the Mediterranean, the country has also historically been home to myriad peoples and cultures, who immigrated to the peninsula throughout history.[22][23] The Latins, native of central Italy, formed the Roman Kingdom in the 8th century BC, which eventually became a republic with a government of the Senate and the People. ",style: TextStyle(fontSize: 18),),
              ),
            ),

            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50,right: 250),
                    child: Text("Places To Visit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                  ),
                  CarouselSlider(
                      items: [
                        SizedBox(
                          height: 130,
                          width: 370,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Card(
                              child: Image(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/491391396/photo/venice.jpg?b=1&s=170667a&w=0&k=20&c=7gH3XMfWu03i23eKcnV2sdZHskShYMNg4K8h2sdahGc="),
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
                            child: Card(
                              child: Image(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1499678329028-101435549a4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTF8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"),
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
                            child: Card(
                              child: Image(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1345059895/photo/alley-of-memories.jpg?b=1&s=170667a&w=0&k=20&c=QXXwjyvDdbW-t18d9J8_u_no6GQeclmOE5YGsmu_PiM="),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: .5,
                        height: 200,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.easeInToLinear,
                        autoPlayAnimationDuration: Duration(
                            milliseconds: 600),
                        enableInfiniteScroll: true,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }}
import 'package:flutter/material.dart';
import 'package:luminar_assignments/UI%20Task/UI%20task%20page%202.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.lightBlue),
    home: UItask_1(),
  ));
}

class UItask_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Color(0xff81d4f4),
                  Colors.white70,
              Color(0xfff48bbd),


            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 18, bottom: 10),
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Icon(Icons.arrow_back_ios,color: Colors.indigo)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Enter the invoice number",
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                    hintText: "Eg 6846546546",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Container(
              height: 500,
              child: Image.asset("assets/icons/person-hold-mobile-phone-point-blank-screen-removebg-preview.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 18, bottom: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios,size: 15,color: Colors.indigo,),
                        Text("Back", style: TextStyle(
                        color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),)
                      ],
                    )
                  ),
                  ElevatedButton(
                      style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => UItask_2()));},
                      child: Row(
                        children: [
                          Text("Next",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),),
                          Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Colors.white,),
                        ],
                      )
                  ),
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

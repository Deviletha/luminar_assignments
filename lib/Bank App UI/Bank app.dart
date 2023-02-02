import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: BankApp()),
  ));
}

class BankApp extends StatelessWidget {
  const BankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("Welcome! MAUSAM"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.qr_code_scanner,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 85,
                    color: Colors.red,
                  ),
                  Container(
                    height: 110,
                  ),
                ],
              ),
              Bankdatacard(), //title card
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 20),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Image(
                      width: 20,
                      height: 20,
                      image: NetworkImage(
                          "https://cdn3.iconfinder.com/data/icons/arrows-85/24/Arrow-15-512.png")),
                ),
                Text(
                  "WOULD YOU LIKE TO ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(height: 250,
              child: BankBody()), //grid view details
          Padding(
            padding: EdgeInsets.only(left: 20,top: 10),
            child: Row(
              children: const [
                Image(
                    width: 20,
                    height: 20,
                    image: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/arrows-85/24/Arrow-15-512.png")),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "LAST TRANSACTIONS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(flex: 6, child: Bottomlist()), //Last Transaction list
        ],
      ),
    );
  }
}
class BankBody extends StatefulWidget {
  @override
  State<BankBody> createState() => _BankBodyState();
}

class _BankBodyState extends State<BankBody> {
  List listile = [
    "My Account",
    "Load eSawa",
    "Payment",
    "Fund Transfer",
    "Sheduled Pyment",
    "Scan to Pay"
  ];
  List iconsbank = [
    "https://cdn1.iconfinder.com/data/icons/digital-marketing-red/64/DISTRIBUTION_NETWORK-connector-mobile_phone-communications-share-512.png",
    "https://freefilehippo.com/wp-content/uploads/2020/02/eScan-Anti-Virus.png",
    "https://cdn1.iconfinder.com/data/icons/fintech-red/64/MOBILE_PAYMENT-online_payment-money-smartphone-transfer-512.png",
    "https://cdn4.iconfinder.com/data/icons/data-transfer-red/64/SMARTPHONE-transfer-data-arrows-internet-512.png",
    "https://cdn4.iconfinder.com/data/icons/data-transfer-red/64/QUEUE-duration-file_storage-transfer-time-512.png",
    "https://cdn3.iconfinder.com/data/icons/protection-and-security-red/64/QR_CODE-qr_code-electronics_-scan-digital-512.png"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return
          Scaffold(
            body: Card(
              child: Container(
                width: 120,
                height: 100,
                child: Column(
                  children: [
                    Image(
                        height: 50,
                        width: 50,
                        image:NetworkImage(iconsbank[index])),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(listile[index],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          );
      },itemCount: 6,
    );
  }
}
class Bankdatacard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      top: 15,
      left: 15,
      child: SizedBox(
        height: 160,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 47,
                    backgroundImage: NetworkImage(
                        "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/v1474024456/u3gvyealtaau3jklud6c.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 60),
                        child: Text(
                          "Peter Jackson",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Wrap(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "NPR.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.red),
                              ),
                              const Text(
                                "1,00,999.35",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.teal.shade200,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Text(
                          "281685854589641",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Bottomlist extends StatelessWidget {
  List amount = [
    "NPR.10,000.00",
    "NPR.11,000.00",
    "NPR.12,020.00",
    "NPR.16,300.00",
    "NPR.11,020.00",
    "NPR.12,000.00",
    "NPR.14,500.00"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
          child: Card(
            child: Container(
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 75,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          children: const [
                            Text('''
    CWDR/
    974884/9874533147487'''),
                            Padding(
                              padding: EdgeInsets.only(right: 90,),
                              child: Text("10-6-2022",style: TextStyle(fontSize: 12),),
                            ),
                          ],
                        ),
                      ),
                      Text(amount[index])
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 7,
    );
  }
}
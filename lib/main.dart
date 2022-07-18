import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(89, 134, 27, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            onPressed: () {}),
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 209, 204, 204)),
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Enter content your',
                        style: TextStyle(color: Colors.black87, fontSize: 25)),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Inspriration',
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefix: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: 'Enter Search you`re looking for',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ])),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promo today',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      itemCard('assets/images/1.jpg'),
                      itemCard('assets/images/2.jpg'),
                      itemCard('assets/images/3.jpg')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/3.jpg'),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            stops: [
                              0.1,
                              0.8
                            ],
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(.2)
                            ])),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Design',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      )),
    );
  }

  Widget itemCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 20, left: 10),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
                  0.1,
                  0.9
                ], colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1)
                ]))),
      ),
    );
  }
}

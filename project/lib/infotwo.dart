import 'package:auth_screen/info.dart';
import 'package:auth_screen/main.dart';
import 'package:flutter/material.dart';

class infotwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor:
                const Color(0xFF555b6e), // independece (dark bluish)
            title: const Text('MARCUS AURELIUS')),
        body: Stack(children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/maxresdefault.jpg'), // background
                    fit: BoxFit.cover)),
          ),
          const Positioned(
            top: 80,
            left: 93,
            child: Text(
              'MARCUS AURELIUS',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            ),
          ),
          const Positioned(
            top: 175,
            left: 10,
            child: Text(
              " Marcus died at the age of 58 on 17 March 180 of \n unknown causes in his military quarters near the city \n of Sirmium in Pannonia (modern Sremska Mitrovica).\n He was immediately deified and his ashes were returned\n to Rome, where they rested in Hadrian's mausoleum \n (modern Castel Sant'Angelo) until the Visigoth sack \n of the city in 410. ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            top: 300,
            left: 95,
            width: 220,
            height: 220,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/one.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Positioned(
              width: 100,
              height: 40,
              bottom: 100,
              left: 250,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    const Color(0xFFFF8F00),
                  )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: const Text(
                    'EXIT',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ))),
          Positioned(
              width: 100,
              height: 40,
              bottom: 100,
              left: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    const Color(0xFFFF8F00),
                  )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => infoScreen()));
                  },
                  child: const Text(
                    'BACK',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  )))
        ]));
  }
}

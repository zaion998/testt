import 'package:auth_screen/infotwo.dart';
import 'package:flutter/material.dart';

class infoScreen extends StatelessWidget {
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
              ' Marcus was born in Rome on 26 April 121. \n His name at birth was supposedly Marcus Annius Verus,\n but some sources assign this name to him upon his\n fathers death and unofficial adoption by his grandfather, \n upon his coming of age, or at the time of his marriage.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
          ),
          const Positioned(
            top: 290, //2nd pic banda
            left: 10,
            child: Text(
              " Marcus was born during the reign of Hadrian to the \n emperor's nephew, the praetor Marcus Annius Verus,\n and the heiress Domitia Calvilla. His father died when\n he was three, and his mother and grandfather raised \n Marcus. After Hadrian's adoptive son, Aelius Caesar, \n died in 138, the emperor adopted Marcus' uncle \n Antoninus Pius as his new heir. In turn, Antoninus \n adopted Marcus and Lucius, the son of Aelius. Hadrian \n died that year and Antoninus became emperor. ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => infotwoScreen()));
                  },
                  child: const Text(
                    'NEXT',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ))),
        ]));
  }
}

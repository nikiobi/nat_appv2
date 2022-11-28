import 'package:flutter/material.dart';
import 'package:nat_appv2/Screens/NewGameScreen.dart';
import 'package:nat_appv2/Screens/ResultScreen.dart';
import 'package:nat_appv2/GlobalVariables.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle homescreenButtonstyle = OutlinedButton.styleFrom(backgroundColor: Colors.blueGrey, primary: Colors.white,textStyle: const TextStyle(fontSize: 50), fixedSize: Size(1000, 60));
    const double buttonheight = 60;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, textScaleFactor: 2),
        centerTitle: true,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: buttonheight),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _newtest, child: const Text('Neuer Test')),

            const SizedBox(height: buttonheight),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _resultsscreen, child: const Text('Ergebnisse')),
          ],
        ),
      ),
    );
  }

  void _newtest() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: NewGameScreen(),
                  )
              );
            }
        )
    );
    resultb1s1 = [false,false,false,false,false,false,false,false];
    resultb1s2 = [false,false,false,false,false,false,false,false];
    resultb1s3 = [false,false,false,false,false,false,false,false];
    resultb1s4 = [false,false,false,false,false,false,false,false];
    resultb1s5 = [false,false,false,false,false,false,false,false];
    resultb1s6 = [false,false,false,false,false,false,false,false];
    resultb2s1 = [false,false,false,false,false,false,false,false];
    resultb2s2 = [false,false,false,false,false,false,false,false];
    resultb2s3 = [false,false,false,false,false,false,false,false];
    resultb2s4 = [false,false,false,false,false,false,false,false];
    resultb2s5 = [false,false,false,false,false,false,false,false];
    resultb2s6 = [false,false,false,false,false,false,false,false];
    resultb3s1 = [false,false,false,false,false,false,false,false];
    resultb3s2 = [false,false,false,false,false,false,false,false];
    resultb3s3 = [false,false,false,false,false,false,false,false];
    resultb3s4 = [false,false,false,false,false,false,false,false];
    resultb3s5 = [false,false,false,false,false,false,false,false];
    resultb3s6 = [false,false,false,false,false,false,false,false];
    resultb4s1 = [false,false,false,false,false,false,false,false];
    resultb4s2 = [false,false,false,false,false,false,false,false];
    resultb4s3 = [false,false,false,false,false,false,false,false];
    resultb4s4 = [false,false,false,false,false,false,false,false];
    resultb4s5 = [false,false,false,false,false,false,false,false];
    resultb4s6 = [false,false,false,false,false,false,false,false];
    resultb5s1 = [false,false,false,false,false,false,false,false];
    resultb5s2 = [false,false,false,false,false,false,false,false];
    resultb5s3 = [false,false,false,false,false,false,false,false];
    resultb5s4 = [false,false,false,false,false,false,false,false];
    resultb5s5 = [false,false,false,false,false,false,false,false];
    resultb5s6 = [false,false,false,false,false,false,false,false];

    wordorderb1s1 = [0,0,0,0,0,0,0,0];
    wordorderb1s2 = [0,0,0,0,0,0,0,0];
    wordorderb1s3 = [0,0,0,0,0,0,0,0];
    wordorderb1s4 = [0,0,0,0,0,0,0,0];
    wordorderb1s5 = [0,0,0,0,0,0,0,0];
    wordorderb1s6 = [0,0,0,0,0,0,0,0];
    wordorderb2s1 = [0,0,0,0,0,0,0,0];
    wordorderb2s2 = [0,0,0,0,0,0,0,0];
    wordorderb2s3 = [0,0,0,0,0,0,0,0];
    wordorderb2s4 = [0,0,0,0,0,0,0,0];
    wordorderb2s5 = [0,0,0,0,0,0,0,0];
    wordorderb2s6 = [0,0,0,0,0,0,0,0];
    wordorderb3s1 = [0,0,0,0,0,0,0,0];
    wordorderb3s2 = [0,0,0,0,0,0,0,0];
    wordorderb3s3 = [0,0,0,0,0,0,0,0];
    wordorderb3s4 = [0,0,0,0,0,0,0,0];
    wordorderb3s5 = [0,0,0,0,0,0,0,0];
    wordorderb3s6 = [0,0,0,0,0,0,0,0];
    wordorderb4s1 = [0,0,0,0,0,0,0,0];
    wordorderb4s2 = [0,0,0,0,0,0,0,0];
    wordorderb4s3 = [0,0,0,0,0,0,0,0];
    wordorderb4s4 = [0,0,0,0,0,0,0,0];
    wordorderb4s5 = [0,0,0,0,0,0,0,0];
    wordorderb4s6 = [0,0,0,0,0,0,0,0];
    wordorderb5s1 = [0,0,0,0,0,0,0,0];
    wordorderb5s2 = [0,0,0,0,0,0,0,0];
    wordorderb5s3 = [0,0,0,0,0,0,0,0];
    wordorderb5s4 = [0,0,0,0,0,0,0,0];
    wordorderb5s5 = [0,0,0,0,0,0,0,0];
    wordorderb5s6 = [0,0,0,0,0,0,0,0];
  }

  void _resultsscreen() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: NewResultScreen(),
                  )
              );
            }
        )
    );
  }
}



import 'package:flutter/material.dart';
import 'package:nat_appv2/GlobalVariables.dart';
import 'package:nat_appv2/block1/firstsentence.dart';
import 'package:nat_appv2/block2/FirstSentenceBlock2.dart';
import 'package:nat_appv2/block3/FirstSentenceBlock3.dart';
import 'package:nat_appv2/block4/FirstSentenceBlock4.dart';
import 'package:nat_appv2/block5/FirstSentenceBlock5.dart';
import 'package:nat_appv2/Screens/ResultScreen.dart';
import 'package:nat_appv2/Screens/HomeScreen.dart';
import 'package:nat_appv2/Screens/UploadSettingsScreen.dart';
import 'package:nat_appv2/SharedPreferencesManager.dart';

class NewGameScreen extends StatefulWidget {
  const NewGameScreen({super.key});

  @override
  State<NewGameScreen> createState() => _NewGameScreenState();
}

class _NewGameScreenState extends State<NewGameScreen> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle homescreenButtonstyle = OutlinedButton.styleFrom(backgroundColor: Colors.blueGrey, primary: Colors.white,textStyle: const TextStyle(fontSize: 50), fixedSize: Size(1000, 60));
    const double buttonheight = 30;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Neuer Test', textScaleFactor: 2),
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
                style: homescreenButtonstyle, onPressed: _test1, child: const Text('Block1')),

            const SizedBox(height: buttonheight),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _test2, child: const Text('Block2')),

            const SizedBox(height: buttonheight),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _test3, child: const Text('Block3')),

            const SizedBox(height: buttonheight),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _test4, child: const Text('Block4')),

            const SizedBox(height: buttonheight),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _test5, child: const Text('Block5')),

            const SizedBox(height: buttonheight),

            const SizedBox(height: buttonheight),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _resultsscreen, child: const Text('Ergebnisse')),

            const SizedBox(height: buttonheight),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _backtohomescreen, child: const Text('Hauptmenü')),

            const SizedBox(height: buttonheight),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _uploadsettingsscreen, child: const Text('Einstellungen')),

          ],
        ),
      ),
    );
  }

  void _test1() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: FirstSentenceSetup(),
                  )
              );
            }
        )
    );
  }


  void _test2() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: FirstSentenceBlock2(),
                  )
              );
            }
        )
    );
  }

  void _test3() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: FirstSentenceBlock3(),
                  )
              );
            }
        )
    );
  }

  void _test4() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: FirstSentenceBlock4(),
                  )
              );
            }
        )
    );
  }

  void _test5() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: FirstSentenceBlock5(),
                  )
              );
            }
        )
    );
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

  void _backtohomescreen() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: MyHomeScreen(title: 'NAT-Test-Applikation'),
                  )
              );
            }
        )
    );
  }

  void _uploadsettingsscreen() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: NewUploadSettingsScreen(),
                  )
              );
            }
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:nat_appv2/Screens/HomeScreen.dart';

class NewUploadScreen extends StatefulWidget {
  const NewUploadScreen({super.key});

  @override
  State<NewUploadScreen> createState() => _NewUploadScreenState();
}

class _NewUploadScreenState extends State<NewUploadScreen> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle homescreenButtonstyle = OutlinedButton.styleFrom(backgroundColor: Colors.blueGrey, primary: Colors.white,textStyle: const TextStyle(fontSize: 50), fixedSize: Size(1000, 60));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daten Hochladen', textScaleFactor: 2),
        centerTitle: true,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 40),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _backtohomescreen, child: const Text('Hauptmenü')),
          ],
        ),
      ),
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
}
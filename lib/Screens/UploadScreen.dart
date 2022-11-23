import 'package:flutter/material.dart';
import 'package:nat_appv2/Screens/HomeScreen.dart';
import 'package:nat_appv2/Http-request-manager.dart';

class NewUploadScreen extends StatefulWidget {
  const NewUploadScreen({super.key});

  @override
  State<NewUploadScreen> createState() => _NewUploadScreenState();
}

class _NewUploadScreenState extends State<NewUploadScreen> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;

  @override
  Widget build(BuildContext context) {
    const TextStyle headlinetyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 18, decoration: TextDecoration.underline);
    final ButtonStyle homescreenButtonstyle = OutlinedButton.styleFrom(backgroundColor: Colors.blueGrey, primary: Colors.white,textStyle: const TextStyle(fontSize: 50), fixedSize: Size(1000, 60));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ergebnisse Hochladen', textScaleFactor: 2),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 1000, 0),
              child: Text('Serverkonfiguration', style: headlinetyle),
              ),

            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 1000, 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Server-Url',
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 1000, 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Access-Token',
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 1000, 20),
              child: Text('Patienten-Informationen', style: headlinetyle),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 1000, 10),
              child: StatefulBuilder(
                builder: (context, setState) => CheckboxListTile(
                  title: const Text('40-45'),
                  value: isSelected1,
                  onChanged: (value) {
                    if (isSelected2 == false && isSelected3 == false) {
                      setState(() {
                        isSelected1 = !isSelected1;
                      });
                    }
                  },
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 1000, 10),
              child: StatefulBuilder(
                builder: (context, setState) => CheckboxListTile(
                  title: const Text('45 - 50'),
                  value: isSelected2,
                  onChanged: (value) {
                    if (isSelected3 == false && isSelected1 == false) {
                      setState(() {
                        isSelected2 = !isSelected2;
                      });
                    }
                  },
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 1000, 10),
              child: StatefulBuilder(
                builder: (context, setState) => CheckboxListTile(
                  title: const Text('50 - 55'),
                  value: isSelected3,
                  onChanged: (value) {
                    if (isSelected1 == false && isSelected2 == false) {
                      setState(() {
                        isSelected3 = !isSelected3;
                      });
                    }
                  },
                ),
              ),
            ),


            const SizedBox(height: 40),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _backtohomescreen, child: const Text('Hauptmenü')),

            const SizedBox(height: 40),
            OutlinedButton(
                style: homescreenButtonstyle, onPressed: _uploadData, child: const Text('Ergebnisse hochladen')),

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

  void _uploadData() {
    HttpRequestManager().makePostRequest();
  }
}
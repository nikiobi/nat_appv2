import 'package:flutter/material.dart';
import 'package:nat_appv2/Screens/NewGameScreen.dart';
import 'package:nat_appv2/GlobalVariables.dart';
import 'package:nat_appv2/SharedPreferencesManager.dart';
import 'package:nat_appv2/Screens/UploadSettingsScreen.dart';


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
                style: homescreenButtonstyle, onPressed: _gotosettings, child: const Text('Einstellungen')),

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

    SharedPreferencesManager().loadFromPrefsUrls('urls');
    SharedPreferencesManager().loadFromPrefsTokens('tokens');
    SharedPreferencesManager().loadFromPrefsEventnames('eventnames');

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

    resetss1b1w = 0;
    resetss2b1w = 0;
    resetss3b1w = 0;
    resetss4b1w = 0;
    resetss5b1w = 0;
    resetss6b1w = 0;
    resetss1b2w = 0;
    resetss2b2w = 0;
    resetss3b2w = 0;
    resetss4b2w = 0;
    resetss5b2w = 0;
    resetss6b2w = 0;
    resetss1b3w = 0;
    resetss2b3w = 0;
    resetss3b3w = 0;
    resetss4b3w = 0;
    resetss5b3w = 0;
    resetss6b3w = 0;
    resetss1b4w = 0;
    resetss2b4w = 0;
    resetss3b4w = 0;
    resetss4b4w = 0;
    resetss5b4w = 0;
    resetss6b4w = 0;
    resetss1b5w = 0;
    resetss2b5w = 0;
    resetss3b5w = 0;
    resetss4b5w = 0;
    resetss5b5w = 0;
    resetss6b5w = 0;

    resetss1b1s = 0;
    resetss2b1s = 0;
    resetss3b1s = 0;
    resetss4b1s = 0;
    resetss5b1s = 0;
    resetss6b1s = 0;
    resetss1b2s = 0;
    resetss2b2s = 0;
    resetss3b2s = 0;
    resetss4b2s = 0;
    resetss5b2s = 0;
    resetss6b2s = 0;
    resetss1b3s = 0;
    resetss2b3s = 0;
    resetss3b3s = 0;
    resetss4b3s = 0;
    resetss5b3s = 0;
    resetss6b3s = 0;
    resetss1b4s = 0;
    resetss2b4s = 0;
    resetss3b4s = 0;
    resetss4b4s = 0;
    resetss5b4s = 0;
    resetss6b4s = 0;
    resetss1b5s = 0;
    resetss2b5s = 0;
    resetss3b5s = 0;
    resetss4b5s = 0;
    resetss5b5s = 0;
    resetss6b5s = 0;

    codewordb1s1 = ['Der','Junge','','','','','',''];
    codewordb1s2 = ['Die','Katze','','','','','',''];
    codewordb1s3 = ['Peter','sah','das','Mädchen','','','',''];
    codewordb1s4 = ['Wer','','','','','','',''];
    codewordb1s5 = ['Peter','sah','den','Mann','','','',''];
    codewordb1s6 = ['Wen','','','','','','',''];
    codewordb2s1 = ['Die','Frau','','','','','',''];
    codewordb2s2 = ['Der','Mann','','','','','',''];
    codewordb2s3 = ['Peter','sah','die','Frau','','','',''];
    codewordb2s4 = ['Wer','','','','','','',''];
    codewordb2s5 = ['Peter','sah','den','Jungen','','','',''];
    codewordb2s6 = ['Wen','','','','','','',''];
    codewordb3s1 = ['Der','Junge','','','','','',''];
    codewordb3s2 = ['Wer','','','','','','',''];
    codewordb3s3 = ['Peter','sah','das','Mädchen','','','',''];
    codewordb3s4 = ['Das','Mädchen','','','','','',''];
    codewordb3s5 = ['Wen','','','','','','',''];
    codewordb3s6 = ['Peter','sah','den','Jungen','','','',''];
    codewordb4s1 = ['Peter','sah','die','Katze','','','',''];
    codewordb4s2 = ['Das','Mädchen','','','','','',''];
    codewordb4s3 = ['Peter','sah','den','Hund','','','',''];
    codewordb4s4 = ['Wen','','','','','','',''];
    codewordb4s5 = ['Der','Hund','','','','','',''];
    codewordb4s6 = ['Wer','','','','','','',''];
    codewordb5s1 = ['Der','Mann','','','','','',''];
    codewordb5s2 = ['Wen','','','','','','',''];
    codewordb5s3 = ['Peter','sah','den','Mann','','','',''];
    codewordb5s4 = ['Wer','','','','','','',''];
    codewordb5s5 = ['Peter','sah','den','Mann','','','',''];
    codewordb5s6 = ['Die','Frau','','','','','',''];

    placedwordb1s1 = ['Der','Junge','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb1s2 = ['Die','Katze','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb1s3 = ['Peter','sah','das','Mädchen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb1s4 = ['Wer','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb1s5 = ['Peter','sah','den','Mann','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb1s6 = ['Wen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb2s1 = ['Die','Frau','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb2s2 = ['Der','Mann','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb2s3 = ['Peter','sah','die','Frau','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb2s4 = ['Wer','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb2s5 = ['Peter','sah','den','Jungen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb2s6 = ['Wen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb3s1 = ['Der','Junge','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb3s2 = ['Wer','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb3s3 = ['Peter','sah','das','Mädchen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb3s4 = ['Das','Mädchen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb3s5 = ['Wen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb3s6 = ['Peter','sah','den','Jungen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb4s1 = ['Peter','sah','die','Katze','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb4s2 = ['Das','Mädchen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb4s3 = ['Peter','sah','den','Hund','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb4s4 = ['Wen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb4s5 = ['Der','Hund','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb4s6 = ['Wer','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb5s1 = ['Der','Mann','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb5s2 = ['Wen','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb5s3 = ['Peter','sah','die','Frau','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb5s4 = ['Wer','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb5s5 = ['Peter','sah','den','Mann','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];
    placedwordb5s6 = ['Die','Frau','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert','Nicht plaziert'];

    sentencesCorrect = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
  }

  void _gotosettings() {
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



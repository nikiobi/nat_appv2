import 'package:elegant_notification/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:nat_appv2/Screens/HomeScreen.dart';
import 'package:nat_appv2/Http-request-manager.dart';
import 'package:nat_appv2/GlobalVariables.dart';
import 'package:elegant_notification/elegant_notification.dart';


class NewUploadScreen extends StatefulWidget {
  const NewUploadScreen({super.key});

  @override
  State<NewUploadScreen> createState() => _NewUploadScreenState();
}

class _NewUploadScreenState extends State<NewUploadScreen> {
  bool is1544selected = false;
  bool is4549selected = false;
  bool is5054selected = false;
  bool is5559selected = false;
  bool is6064selected = false;
  bool is6569selected = false;
  bool is70selected = false;
  final inputTokenCtrl = TextEditingController();
  final inputUrlCtrl = TextEditingController();
  final pizCtrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    const TextStyle headlinetyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 18, decoration: TextDecoration.underline);
    final ButtonStyle homescreenButtonstyle = OutlinedButton.styleFrom(backgroundColor: Colors.blueGrey, primary: Colors.white,textStyle: const TextStyle(fontSize: 20), fixedSize: Size(1200, 20));
    const double leftbound = 400;
    const double rightbound = 400;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Ergebnisse Hochladen', textScaleFactor: 2),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                child: Text('Serverkonfiguration', style: headlinetyle),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Aktuelle URL: '),
                      TextSpan(text: ' https://stuz-redcap.ukl.uni-freiburg.de/api/.', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' Gebe andere URL ein, falls andere URL verwendet werden soll.')
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 5, rightbound, 10),
                child: TextFormField(
                  controller: inputUrlCtrl,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Server-Url',
                  ),

                  /*
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Bitte Server-Url eingeben';
                    }
                    return null;
                  },
                  */
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Aktueller Token: '),
                      TextSpan(text: ' A42EF3B269922666C5B4E7811DF2C490. ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' Gebe anderen Token ein, falls anderer Token verwendet werden soll.')
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 5, rightbound, 20),
                child: TextFormField(
                  controller: inputTokenCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Access-Token',
                  ),
                  /*
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Bitte Access-Token eingeben';
                    }
                    return null;
                  },
                  */
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                child: Text('Patienten-Informationen', style: headlinetyle),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 10, rightbound, 0),
                child: TextFormField(
                  controller: pizCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'PIZ',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty || value.length < 7) {
                      return 'Bitte PIZ eingeben (7-stellig)';
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 0, rightbound, 0),
                child: StatefulBuilder(
                  builder: (context, setState) => CheckboxListTile(
                    title: const Text('15 - 44'),
                    value: is1544selected,
                    onChanged: (value) {
                      if (is4549selected == false && is5054selected == false && is5559selected == false && is6064selected == false && is6569selected == false && is70selected == false) {
                        setState(() {
                          is1544selected = !is1544selected;
                        });
                      }
                    },
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 0, rightbound, 0),
                child: StatefulBuilder(
                  builder: (context, setState) => CheckboxListTile(
                    title: const Text('45 - 49'),
                    value: is4549selected,
                    onChanged: (value) {
                      if (is1544selected == false && is5054selected == false && is5559selected == false && is6064selected == false && is6569selected == false && is70selected == false) {
                        setState(() {
                          is4549selected = !is4549selected;
                        });
                      }
                    },
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 0, rightbound, 0),
                child: StatefulBuilder(
                  builder: (context, setState) => CheckboxListTile(
                    title: const Text('50 - 54'),
                    value: is5054selected,
                    onChanged: (value) {
                      if (is4549selected == false && is1544selected == false && is5559selected == false && is6064selected == false && is6569selected == false && is70selected == false) {
                        setState(() {
                          is5054selected = !is5054selected;
                        });
                      }
                    },
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 0, rightbound, 0),
                child: StatefulBuilder(
                  builder: (context, setState) => CheckboxListTile(
                    title: const Text('55 - 59'),
                    value: is5559selected,
                    onChanged: (value) {
                      if (is4549selected == false && is5054selected == false && is1544selected == false && is6064selected == false && is6569selected == false && is70selected == false) {
                        setState(() {
                          is5559selected = !is5559selected;
                        });
                      }
                    },
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 0, rightbound, 0),
                child: StatefulBuilder(
                  builder: (context, setState) => CheckboxListTile(
                    title: const Text('60 - 64'),
                    value: is6064selected,
                    onChanged: (value) {
                      if (is4549selected == false && is5054selected == false && is5559selected == false && is1544selected == false && is6569selected == false && is70selected == false) {
                        setState(() {
                          is6064selected = !is6064selected;
                        });
                      }
                    },
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 0, rightbound, 0),
                child: StatefulBuilder(
                  builder: (context, setState) => CheckboxListTile(
                    title: const Text('65 - 69'),
                    value: is6569selected,
                    onChanged: (value) {
                      if (is4549selected == false && is5054selected == false && is5559selected == false && is6064selected == false && is1544selected == false && is70selected == false) {
                        setState(() {
                          is6569selected = !is6569selected;
                        });
                      }
                    },
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 0, rightbound, 0),
                child: StatefulBuilder(
                  builder: (context, setState) => CheckboxListTile(
                    title: const Text('70+'),
                    value: is70selected,
                    onChanged: (value) {
                      if (is4549selected == false && is5054selected == false && is5559selected == false && is6064selected == false && is6569selected == false && is1544selected == false) {
                        setState(() {
                          is70selected = !is70selected;
                        });
                      }
                    },
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 0, rightbound, 5),
                child: ElevatedButton(
                    style: homescreenButtonstyle,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _uploadData();
                      }
                    },
                    child: const Text('Ergebnisse hochladen')),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 0, rightbound, 5),
                child: OutlinedButton(
                    style: homescreenButtonstyle, onPressed: _backtohomescreen, child: const Text('Hauptmenü')),
              ),

            ],
          ),
        )
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
    if (inputUrlCtrl.text != '') {
      urlInput = inputUrlCtrl.text;
      newUrl = true;
    }
    if (inputTokenCtrl.text != '') {
      tokenInput = inputTokenCtrl.text;
      newToken = true;
    }

    pizInput = int.parse(pizCtrl.text);

    HttpRequestManager().makePostRequest();

    Future.delayed(const Duration(seconds: 2), () {
      if (uploadsuccessfull == true) {
        ElegantNotification.success(
          description:  Text("Daten wurden erfolgreich hochgeladen", textScaleFactor: 2),
        ).show(context);
      } else if (uploadsuccessfull == false) {
        ElegantNotification.error(
          description:  Text("Es gab einen Fehler beim Hochladen der Daten", textScaleFactor: 2),
        ).show(context);
      }
    });

    newToken = false;
    newUrl = false;
  }
}
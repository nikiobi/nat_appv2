import 'package:flutter/material.dart';
import 'package:nat_appv2/Screens/HomeScreen.dart';
import 'package:nat_appv2/Http-request-manager.dart';
import 'package:nat_appv2/GlobalVariables.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:nat_appv2/Screens/UploadSettingsScreen.dart';


class NewUploadScreen extends StatefulWidget {
  const NewUploadScreen({super.key});

  @override
  State<NewUploadScreen> createState() => _NewUploadScreenState();
}

class _NewUploadScreenState extends State<NewUploadScreen> {
  final inputTokenCtrl = TextEditingController();
  final inputUrlCtrl = TextEditingController();
  final pizCtrl = TextEditingController();
  final eventnameCtrl = TextEditingController();

  String dropdownValueurl = newurls.first;
  String dropdownValuetoken = newtokens.first;
  String dropdownEventname = neweventnames.first;



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

              const Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                child: Text('Wähle URL:')
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 5, rightbound, 10),
                child: DropdownButton<String>(
                  value: dropdownValueurl,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValueurl = value!;
                    });
                  },
                  items: newurls.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ),

              const Padding(
                  padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                  child: Text('Wähle Token:')
              ),

              Padding(
                  padding: EdgeInsets.fromLTRB(leftbound, 5, rightbound, 10),
                  child: DropdownButton<String>(
                    value: dropdownValuetoken,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValuetoken = value!;
                      });
                    },

                    items: newtokens.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
              ),


              const Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 50, rightbound, 0),
                child: Text('Patienten-Informationen', style: headlinetyle),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 10, rightbound, 20),
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

              const Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 50, rightbound, 0),
                child: Text('Eventkonfiguration', style: headlinetyle),
              ),

              const Padding(
                  padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                  child: Text('Wähle Eventname:')
              ),

              Padding(
                  padding: EdgeInsets.fromLTRB(leftbound, 5, rightbound, 10),
                  child: DropdownButton<String>(
                    value: dropdownEventname,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownEventname = value!;
                      });
                    },
                    items: neweventnames.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 50, rightbound, 5),
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
    urlInput = dropdownValueurl;
    tokenInput = dropdownValuetoken;
    eventnameInput = dropdownEventname;

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
  }
}
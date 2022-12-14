import 'package:flutter/material.dart';
import 'package:nat_appv2/GlobalVariables.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:nat_appv2/SharedPreferencesManager.dart';
import 'package:nat_appv2/Screens/UploadScreen.dart';


class NewUploadSettingsScreen extends StatefulWidget {
  const NewUploadSettingsScreen({super.key});

  @override
  State<NewUploadSettingsScreen> createState() => _NewUploadSettingsScreenState();
}

class _NewUploadSettingsScreenState extends State<NewUploadSettingsScreen> {
  final inputTokenCtrl = TextEditingController();
  final inputUrlCtrl = TextEditingController();
  final inputEventnameCtrl = TextEditingController();
  String currentdeleteditem = '';

  @override
  Widget build(BuildContext context) {
    const double leftbound = 400;
    const double rightbound = 400;
    const TextStyle headlinetyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 18, decoration: TextDecoration.underline);


    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Einstellungen', textScaleFactor: 2),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Form(
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
                    child: Text('Füge neue Url hinzu'),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                    child: ElevatedButton.icon(
                      onPressed: _addnewURL,
                      icon: Icon(Icons.add, color: Colors.black),
                      label: TextFormField(
                        controller: inputUrlCtrl,
                        decoration: const InputDecoration(
                          hintText: 'Neue Url anlegen',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                      )
                    )
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                  child: Text('Füge neuen Token hinzu'),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                    child: ElevatedButton.icon(
                        onPressed: _addnewToken,
                        icon: Icon(Icons.add, color: Colors.black),
                        label: TextFormField(
                          controller: inputTokenCtrl,
                          decoration: const InputDecoration(
                            hintText: 'Neuen Token anlegen',
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        )
                    )
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(leftbound, 50, rightbound, 0),
                  child: Text('Eventkonfiguration', style: headlinetyle),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                  child: Text('Füge neues Event hinzu'),
                ),

                Padding(
                    padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                    child: ElevatedButton.icon(
                        onPressed: _addnewEvent,
                        icon: Icon(Icons.add, color: Colors.black),
                        label: TextFormField(
                          controller: inputEventnameCtrl,
                          decoration: const InputDecoration(
                            hintText: 'Neues event anlegen',
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        )
                    )
                ),


                Padding(
                    padding: EdgeInsets.fromLTRB(leftbound, 80, rightbound, 0),
                    child: ElevatedButton.icon(
                        onPressed: _deletelastUrl,
                        icon: Icon(Icons.delete, color: Colors.black),
                        label: Text('Letzte Url löschen', style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        )
                    )
                ),

                Padding(
                    padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                    child: ElevatedButton.icon(
                        onPressed: _deletelastToken,
                        icon: Icon(Icons.delete, color: Colors.black),
                        label: Text('Letzten Token löschen', style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        )
                    )
                ),


                Padding(
                    padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                    child: ElevatedButton.icon(
                        onPressed: _deletelastEvent,
                        icon: Icon(Icons.delete, color: Colors.black),
                        label: Text('Letztes Event löschen', style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        )
                    )
                ),

              ],
            ),
          )
      ),
    );
  }

  _addnewURL() {
    if (inputUrlCtrl.text != '') {
      SharedPreferencesManager().loadFromPrefsUrls('urls');
      newurlssaved = newurls;
      newurlssaved.add(inputUrlCtrl.text);
      SharedPreferencesManager().saveToPrefs('urls', newurlssaved);
      SharedPreferencesManager().loadFromPrefsUrls('urls');

      ElegantNotification.success(
        description:  Text("${inputUrlCtrl.text} wurde zu den Urls hinzugefügt", textScaleFactor: 2),
      ).show(context);
    }
  }

  _addnewToken() {
    if (inputTokenCtrl.text != '') {
      SharedPreferencesManager().loadFromPrefsTokens('tokens');
      newtoknessaved = newtokens;
      newtoknessaved.add(inputTokenCtrl.text);
      SharedPreferencesManager().saveToPrefs('tokens', newtoknessaved);
      SharedPreferencesManager().loadFromPrefsTokens('tokens');

      ElegantNotification.success(
        description:  Text("${inputTokenCtrl.text} wurde zu den Tokens hinzugefügt", textScaleFactor: 2),
      ).show(context);
    }
  }

  _addnewEvent() {
    if (inputEventnameCtrl.text != '') {
      SharedPreferencesManager().loadFromPrefsEventnames('eventnames');
      neweventnamessaved = neweventnames;
      neweventnamessaved.add(inputEventnameCtrl.text);
      SharedPreferencesManager().saveToPrefs('eventnames', neweventnamessaved);
      SharedPreferencesManager().loadFromPrefsEventnames('eventnames');

      ElegantNotification.success(
        description:  Text("${inputEventnameCtrl.text} wurde zu den Eventnamen hinzugefügt", textScaleFactor: 2),
      ).show(context);
    }
  }

  _deletelastUrl() {
    SharedPreferencesManager().loadFromPrefsUrls('urls');
    currentdeleteditem = newurls.last;
    if (newurls != null && newurls.isNotEmpty && currentdeleteditem != 'https://stuz-redcap.ukl.uni-freiburg.de/api/') {
      newurlssaved = newurls;
      newurlssaved.remove(currentdeleteditem);
      SharedPreferencesManager().saveToPrefs('urls', newurlssaved);
      SharedPreferencesManager().loadFromPrefsUrls('urls');

      ElegantNotification.success(
        description:  Text("${currentdeleteditem} wurde aus den Urls gelöscht", textScaleFactor: 2),
      ).show(context);
      currentdeleteditem = '';
    }

  }

  _deletelastToken() {
    SharedPreferencesManager().loadFromPrefsTokens('tokens');
    currentdeleteditem = newtokens.last;
    if (newtokens != null && newtokens.isNotEmpty && currentdeleteditem != 'A42EF3B269922666C5B4E7811DF2C490') {
      newtoknessaved = newtokens;
      newtoknessaved.remove(currentdeleteditem);
      SharedPreferencesManager().saveToPrefs('tokens', newtoknessaved);
      SharedPreferencesManager().loadFromPrefsTokens('tokens');

      ElegantNotification.success(
        description:  Text("${currentdeleteditem} wurde aus den Tokens gelöscht", textScaleFactor: 2),
      ).show(context);
      currentdeleteditem = '';
    }

  }

  _deletelastEvent() {
    SharedPreferencesManager().loadFromPrefsEventnames('eventnames');
    currentdeleteditem = neweventnames.last;
    if (neweventnames != null && neweventnames.isNotEmpty && currentdeleteditem != 'lsp_akut_arm_1') {
      neweventnamessaved = neweventnames;
      neweventnamessaved.remove(currentdeleteditem);
      SharedPreferencesManager().saveToPrefs('eventnames', neweventnamessaved);
      SharedPreferencesManager().loadFromPrefsEventnames('eventnames');

      ElegantNotification.success(
        description:  Text("${currentdeleteditem} wurde aus den Eventnamen gelöscht", textScaleFactor: 2),
      ).show(context);
      currentdeleteditem = '';
    }
  }
}
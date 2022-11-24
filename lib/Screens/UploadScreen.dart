import 'package:flutter/material.dart';
import 'package:nat_appv2/Screens/HomeScreen.dart';
import 'package:nat_appv2/Http-request-manager.dart';

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
  final inputToken = TextEditingController();
  final inputUrl = TextEditingController();


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
                padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 10),
                child: TextFormField(
                  controller: inputUrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Server-Url',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Bitte Server-Url eingeben';
                    }
                    return null;
                  },

                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 10, rightbound, 20),
                child: TextFormField(
                  controller: inputToken,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Access-Token',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Bitte Access-Token eingeben';
                    }
                    return null;
                  },
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(leftbound, 20, rightbound, 0),
                child: Text('Patienten-Informationen', style: headlinetyle),
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
    HttpRequestManager().makePostRequest();
  }
}
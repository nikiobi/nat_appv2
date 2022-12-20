import 'package:flutter/material.dart';
import 'secondsentence.dart';
import 'package:nat_appv2/GlobalVariables.dart';

class FirstSentenceSetup extends StatefulWidget {
  const FirstSentenceSetup({super.key});

  @override
  State<FirstSentenceSetup> createState() => _FirstSentenceSetupState();
}

class _FirstSentenceSetupState extends State<FirstSentenceSetup> {
  List droplist = <bool>[false, false, false, false, false, false, false, false];
  List counterlist = <int>[0,0,0,0,0,0,0,0];
  List lastimagedropped = <int>[];
  List worddroppedorder = <String>[];

  SizedBox spaceBetweenBoxesbottom = const SizedBox(width: 120);
  SizedBox spaceBetweenBoxestopWidth1 = const SizedBox(width: 200);
  SizedBox spaceBetweenBoxestopWidth2 = const SizedBox(width: 400);
  SizedBox spaceBetweenBoxestopWidth3 = const SizedBox(width: 500);
  SizedBox spaceBetweenBoxestopHeight1 = const SizedBox(height: 50);
  SizedBox spaceBetweenBoxestopHeight2 = const SizedBox(height: 70);
  SizedBox spaceBetweenBoxestopHeight3 = SizedBox(height: 100);
  SizedBox spaceBetweenBoxestopHeight4 = SizedBox(height: 60);

  bool isimage5active = false;
  bool isimage6active = false;
  bool isimage7active = false;
  bool isimage8active = false;

  int partnerofimage1 = 0;
  int partnerofimage2 = 0;
  int partnerofimage3 = 0;
  int partnerofimage4 = 0;
  int partnerofimage5 = 0;
  int partnerofimage6 = 0;
  int partnerofimage7 = 0;

  SizedBox imagetoimage51 = SizedBox();
  SizedBox imagetoimage52 = SizedBox();
  SizedBox imagetoimage61 = SizedBox();
  SizedBox imagetoimage62 = SizedBox();
  SizedBox imagetoimage71 = SizedBox();
  SizedBox imagetoimage72 = SizedBox();

  final squareimage = SizedBox(
    height: 200,
    width: 200,
    child: Center(
      child: Image.asset('images/square.png'),
    ),
  );

  final derimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
        child: Image.asset('images/Block1/Satz1/dersquared.png'),
    ),
  );

  final jungeimage = SizedBox(
    height: 200,
    width: 200,
    child: Center(
      child: Image.asset('images/Block1/Satz1/jungesquared.png'),
    ),
  );

  final ziehtimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz1/zieht.png'),
    ),
  );

  final ziehtsquared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz1/ziehtsquared.png'),
    ),
  );

  final ziehttragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz1/ziehttragged.png'),
    ),
  );

  final dasimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz1/das.png'),
    ),
  );

  final dassquared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz1/dassquared.png'),
    ),
  );

  final dastragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz1/dastragged.png'),
    ),
  );

  final maedchenimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz1/maedchen.png'),
    ),
  );

  final maedchensquared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz1/maedchensquared.png'),
    ),
  );

  final maedchentragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz1/maedchentragged.png'),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AppBar(
            title: const Text('Block1 - Satz1', textScaleFactor: 2),
            centerTitle: true,
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                iconSize: 60,
                padding: const EdgeInsets.all(15.0),
                onPressed: _UndoSingle,
                icon: const Icon(Icons.arrow_back),
                tooltip: 'Undo-Single',
              ),
              IconButton(
                iconSize: 60,
                padding: const EdgeInsets.all(15.0),
                onPressed: _UndoAll,
                icon: const Icon(Icons.undo_sharp),
                tooltip: 'Undo-All',
              ),
              IconButton(
                iconSize: 60,
                padding: const EdgeInsets.all(15.0),
                onPressed: goToSecondSetence,
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Next Test',
              )
            ],),

          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    spaceBetweenBoxestopHeight2,
                    DragTarget<SizedBox>(
                      builder: (
                          BuildContext context,
                          List<dynamic> accepted,
                          List<dynamic> rejected,
                          ) {
                        if (!droplist[1] || (droplist[partnerofimage2] && !droplist[1])) {
                          return Draggable<String>(
                            data: 'tickling2',
                            feedback: dasimage,
                            childWhenDragging: dastragged,
                            child: dasimage,
                          );
                        } else {
                          return dastragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == dasimage;
                      },
                      onAccept: (data) {
                        setState(() {
                          counterlist[partnerofimage2]--;
                          droplist[partnerofimage2] = true;
                          droplist[1] = false;
                          if (lastimagedropped.contains(partnerofimage2+1)) {
                            lastimagedropped.remove(partnerofimage2+1);
                          }
                        });
                      },
                    )
                  ],
                ),

                spaceBetweenBoxestopWidth1,

                Column(
                  children: <Widget>[
                    spaceBetweenBoxestopHeight1,
                    DragTarget<SizedBox>(
                      builder: (
                          BuildContext context,
                          List<dynamic> accepted,
                          List<dynamic> rejected,
                          ) {
                        if (!droplist[0] || (droplist[partnerofimage1] && !droplist[0])) {
                          return Draggable<String>(
                            data: 'tickling1',
                            feedback: ziehtimage,
                            childWhenDragging: ziehttragged,
                            child: ziehtimage,
                          );
                        } else {
                          return ziehttragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == ziehtimage;
                      },
                      onAccept: (data) {
                        setState(() {
                          counterlist[partnerofimage1]--;
                          droplist[partnerofimage1] = true;
                          droplist[0] = false;
                          if (lastimagedropped.contains(partnerofimage1+1)) {
                            lastimagedropped.remove(partnerofimage1+1);
                          }
                        });
                      },
                    )
                  ],
                ),

                spaceBetweenBoxestopWidth2,

                Column(
                  children: <Widget>[
                    spaceBetweenBoxestopHeight3,
                    DragTarget<SizedBox>(
                      builder: (
                          BuildContext context,
                          List<dynamic> accepted,
                          List<dynamic> rejected,
                          ) {
                        if (!droplist[2] || (droplist[partnerofimage3] && !droplist[2])) {
                          return Draggable<String>(
                            data: 'tickling3',
                            feedback: maedchenimage,
                            childWhenDragging: maedchentragged,
                            child: maedchenimage,
                          );
                        } else {
                          return maedchentragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == maedchenimage;
                      },
                      onAccept: (data) {
                        setState(() {
                          counterlist[partnerofimage3]--;
                          droplist[partnerofimage3] = true;
                          droplist[2] = false;
                          if (lastimagedropped.contains(partnerofimage3+1)) {
                            lastimagedropped.remove(partnerofimage3+1);
                          }
                        });
                      },
                    )
                  ],
                ),

                spaceBetweenBoxestopWidth3,

              ],
            ),
          ),

          /////////////////////////////////////////////////////////////////////
          /////////////////////////////////////////////////////////////////////
          /////////////////////////////////////////////////////////////////////
          /////////////////////////////////////////////////////////////////////

          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                derimage,
                spaceBetweenBoxesbottom,
                jungeimage,
                spaceBetweenBoxesbottom,

                DragTarget<String>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    if (isimage5active && !droplist[4]) {
                      return Draggable<SizedBox>(
                        data: imagetoimage51,
                        feedback: imagetoimage51,
                        childWhenDragging: squareimage,
                        child: imagetoimage52,
                      );
                    } else {
                      return squareimage;
                    }
                  },
                  onWillAccept: (data) {
                    if (counterlist[4] == 0) {
                      return data.runtimeType == String;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      counterlist[4]++;
                      _InspectData1(data);
                      _DeterminePartner1(data, 5);
                      _DetermineImage(data, 5);
                      droplist[4] = false;
                      isimage5active = true;
                      lastimagedropped.add(5);
                    });
                  },
                ),

                spaceBetweenBoxesbottom,

                DragTarget<String>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    if (isimage6active && !droplist[5]) {
                      return Draggable<SizedBox>(
                        data: imagetoimage61,
                        feedback: imagetoimage61,
                        childWhenDragging: squareimage,
                        child: imagetoimage62,
                      );
                    } else {
                      return squareimage;
                    }
                  },
                  onWillAccept: (data) {
                    if (counterlist[5] == 0) {
                      return data.runtimeType == String;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      counterlist[5]++;
                      _InspectData1(data);
                      _DeterminePartner1(data, 6);
                      _DetermineImage(data, 6);
                      droplist[5] = false;
                      isimage6active = true;
                      lastimagedropped.add(6);
                    });
                  },
                ),

                spaceBetweenBoxesbottom,

                DragTarget<String>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    if (isimage7active && !droplist[6]) {
                      return Draggable<SizedBox>(
                        data: imagetoimage71,
                        feedback: imagetoimage71,
                        childWhenDragging: squareimage,
                        child: imagetoimage72,
                      );
                    } else {
                      return squareimage;
                    }
                  },
                  onWillAccept: (data) {
                    if (counterlist[6] == 0) {
                      return data.runtimeType == String;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      counterlist[6]++;
                      _InspectData1(data);
                      _DeterminePartner1(data, 7);
                      _DetermineImage(data, 7);
                      droplist[6] = false;
                      isimage7active = true;
                      lastimagedropped.add(7);
                    });
                  },
                ),
              ],
            ),
          )
        ]);
  }

  _InspectData1(String data) {
    setState(() {
      switch (data) {
        case 'tickling1':
          droplist[0] = true;
          break;
        case 'tickling2':
          droplist[1] = true;
          break;
        case 'tickling3':
          droplist[2] = true;
          break;
      }
    });
  }

  _DeterminePartner1(String data, int partner) {
    switch (data) {
      case 'tickling1':
        partnerofimage1 = partner-1;
        break;
      case 'tickling2':
        partnerofimage2 = partner-1;
        break;
      case 'tickling3':
        partnerofimage3 = partner-1;
        break;
    }
  }

  _DetermineImage(String data, int imagenumber) {
    switch (imagenumber) {
      case 5:
        switch (data) {
          case 'tickling1':
            imagetoimage51 = ziehtimage;
            imagetoimage52 = ziehtsquared;
            resultb1s1[2] = true;
            placedwordb1s1[2] = 'zieht';
            worddroppedorder.add('zieht');
            codewordb1s1[2] = '1a';
            break;
          case 'tickling2':
            imagetoimage51 = dasimage;
            imagetoimage52 = dassquared;
            resultb1s1[2] = false;
            placedwordb1s1[2] = 'das';
            worddroppedorder.add('das');
            codewordb1s1[2] = '2a';
            break;
          case 'tickling3':
            imagetoimage51 = maedchenimage;
            imagetoimage52 = maedchensquared;
            resultb1s1[2] = false;
            placedwordb1s1[2] = 'Mädchen';
            worddroppedorder.add('Mädchen');
            codewordb1s1[2] = '2b';
            break;
        }
        break;
      case 6:
        switch (data) {
          case 'tickling1':
            imagetoimage61 = ziehtimage;
            imagetoimage62 = ziehtsquared;
            resultb1s1[3] = false;
            placedwordb1s1[3] = 'zieht';
            worddroppedorder.add('zieht');
            codewordb1s1[3] = '1a';
            break;
          case 'tickling2':
            imagetoimage61 = dasimage;
            imagetoimage62 = dassquared;
            resultb1s1[3] = true;
            placedwordb1s1[3] = 'das';
            worddroppedorder.add('das');
            codewordb1s1[3] = '2a';
            break;
          case 'tickling3':
            imagetoimage61 = maedchenimage;
            imagetoimage62 = maedchensquared;
            resultb1s1[3] = false;
            placedwordb1s1[3] = 'Mädchen';
            worddroppedorder.add('Mädchen');
            codewordb1s1[3] = '2b';
            break;
        }
        break;
      case 7:
        switch (data) {
          case 'tickling1':
            imagetoimage71 = ziehtimage;
            imagetoimage72 = ziehtsquared;
            resultb1s1[4] = false;
            placedwordb1s1[4] = 'zieht';
            worddroppedorder.add('zieht');
            codewordb1s1[4] = '1a';
            break;
          case 'tickling2':
            imagetoimage71 = dasimage;
            imagetoimage72 = dassquared;
            resultb1s1[4] = false;
            placedwordb1s1[4] = 'das';
            worddroppedorder.add('das');
            codewordb1s1[4] = '2a';
            break;
          case 'tickling3':
            imagetoimage71 = maedchenimage;
            imagetoimage72 = maedchensquared;
            resultb1s1[4] = true;
            placedwordb1s1[4] = 'Mädchen';
            worddroppedorder.add('Mädchen');
            codewordb1s1[4] = '2b';
            break;
        }
        break;
    }
  }

  _UndoAll() {
    setState(() {
      counterlist = <int>[0,0,0,0,0,0,0,0];
      droplist = <bool>[false, false, false, false, false, false, false, false];

      isimage5active = false;
      isimage6active = false;
      isimage7active = false;
      isimage8active = false;

      partnerofimage1 = 0;
      partnerofimage2 = 0;
      partnerofimage3 = 0;

      imagetoimage51 = SizedBox();
      imagetoimage52 = SizedBox();
      imagetoimage61 = SizedBox();
      imagetoimage62 = SizedBox();
      imagetoimage71 = SizedBox();
      imagetoimage72 = SizedBox();

      wordorderb1s1 = [0,0,0,0,0,0,0,0];
      resetss1b1s += 1;
    });
  }

  void goToSecondSetence() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: SecondSentenceSetup(),
                  )
              );
            }
        )
    );
    _DetermineOrder();
  }

  void _DetermineOrder() {
    setState((){
      switch (placedwordb1s1[2]) {
        case 'zieht':
          for (int i=0; i < 3; i++){
            if (worddroppedorder[i] == 'zieht') {
              wordorderb1s1[2] = i+1;
            }
          }
          break;
        case 'das':
          for (int i=0; i < 3; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb1s1[2] = i+1;
            }
          }
          break;
        case 'Mädchen':
          for (int i=0; i < 3; i++){
            if (worddroppedorder[i] == 'Mädchen') {
              wordorderb1s1[2] = i+1;
            }
          }
      }

      switch (placedwordb1s1[3]) {
        case 'zieht':
          for (int i=0; i < 3; i++){
            if (worddroppedorder[i] == 'zieht') {
              wordorderb1s1[3] = i+1;
            }
          }
          break;
        case 'das':
          for (int i=0; i < 3; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb1s1[3] = i+1;
            }
          }
          break;
        case 'Mädchen':
          for (int i=0; i < 3; i++){
            if (worddroppedorder[i] == 'Mädchen') {
              wordorderb1s1[3] = i+1;
            }
          }
      }

      switch (placedwordb1s1[4]) {
        case 'zieht':
          for (int i=0; i < 3; i++){
            if (worddroppedorder[i] == 'zieht') {
              wordorderb1s1[4] = i+1;
            }
          }
          break;
        case 'das':
          for (int i=0; i < 3; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb1s1[4] = i+1;
            }
          }
          break;
        case 'Mädchen':
          for (int i=0; i < 3; i++){
            if (worddroppedorder[i] == 'Mädchen') {
              wordorderb1s1[4] = i+1;
            }
          }
      }
    });
  }


  void _DetermineLast(int last) {
    setState((){
      switch (last) {
        case 5:
          isimage5active = false;
          imagetoimage51 = SizedBox();
          imagetoimage52 = SizedBox();
          droplist[4] = false;
          counterlist[4] = 0;
          break;
        case 6:
          isimage6active = false;
          imagetoimage61 = SizedBox();
          imagetoimage62 = SizedBox();
          droplist[5] = false;
          counterlist[5] = 0;
          break;
        case 7:
          isimage7active = false;
          imagetoimage71 = SizedBox();
          imagetoimage72 = SizedBox();
          droplist[6] = false;
          counterlist[6] = 0;
          break;
      }
      if (partnerofimage1 == last-1) {
        partnerofimage1 = 0;
        droplist[0] = false;
      } else if (partnerofimage2 == last-1) {
        partnerofimage2 = 0;
        droplist[1] = false;
      } else if (partnerofimage3 == last-1) {
        partnerofimage3 = 0;
        droplist[2] = false;
      }
    });
  }

  void _UndoSingle() {
    if (lastimagedropped.isNotEmpty) {
      _DetermineLast(lastimagedropped.last);
      lastimagedropped.remove(lastimagedropped.last);
      worddroppedorder.remove(worddroppedorder.last);
      resetss1b1w += 1;
    }
  }
}
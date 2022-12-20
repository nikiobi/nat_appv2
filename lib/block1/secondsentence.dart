import 'package:flutter/material.dart';
import 'package:nat_appv2/block1/thirdsentence.dart';
import 'package:nat_appv2/GlobalVariables.dart';


class SecondSentenceSetup extends StatefulWidget {
  const SecondSentenceSetup({super.key});

  @override
  State<SecondSentenceSetup> createState() => _SecondSentenceSetupState();
}

class _SecondSentenceSetupState extends State<SecondSentenceSetup> {
  List droplist = <bool>[false, false, false, false, false, false, false, false];
  List counterlist = <int>[0,0,0,0,0,0,0,0];
  List lastimagedropped = <int>[];
  List worddroppedorder = <String>[];

  SizedBox spaceBetweenBoxesbottom = const SizedBox(width: 120);
  SizedBox spaceBetweenBoxestopWidth1 = const SizedBox(width: 500);
  SizedBox spaceBetweenBoxestopWidth2 = const SizedBox(width: 300);
  SizedBox spaceBetweenBoxestopWidth3 = const SizedBox(width: 320);
  SizedBox spaceBetweenBoxestopHeight1 = const SizedBox(height: 70);
  SizedBox spaceBetweenBoxestopHeight2 = const SizedBox(height: 20);
  SizedBox spaceBetweenBoxestopHeight3 = SizedBox(height: 80);
  SizedBox spaceBetweenBoxestopHeight4 = SizedBox(height: 10);

  bool isimage5active = false;
  bool isimage6active = false;
  bool isimage7active = false;
  bool isimage8active = false;

  int partnerofimage1 = 0;
  int partnerofimage2 = 0;
  int partnerofimage3 = 0;
  int partnerofimage4 = 0;

  SizedBox imagetoimage51 = SizedBox();
  SizedBox imagetoimage52 = SizedBox();
  SizedBox imagetoimage61 = SizedBox();
  SizedBox imagetoimage62 = SizedBox();
  SizedBox imagetoimage71 = SizedBox();
  SizedBox imagetoimage72 = SizedBox();
  SizedBox imagetoimage81 = SizedBox();
  SizedBox imagetoimage82 = SizedBox();

  final squareimage = SizedBox(
    height: 200,
    width: 200,
    child: Center(
      child: Image.asset('images/square.png'),
    ),
  );

  final catimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block4/Satz3/Katzesquared.png'),
    ),
  );

  final dieimage = SizedBox(
    height: 200,
    width: 200,
    child: Center(
      child: Image.asset('images/Block2/Satz1/dieviereck.png'),
    ),
  );

  final vomimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block2/Satz1/vom.png'),
    ),
  );

  final vomsquareimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block2/Satz1/Vomviereck.png'),
    ),
  );

  final gejagtimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz2/gejagt.png'),
    ),
  );

  final gejagtsquareimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz2/gejagtsquare.png'),
    ),
  );

  final hundimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block4/Satz4/Hund.png'),
    ),
  );

  final hundsquareimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block4/Satz3/Hundsquared.png'),
    ),
  );

  final wirdimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block2/Satz1/wird.png'),
    ),
  );

  final wirdsquareimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block2/Satz1/wirdviereck.png'),
    ),
  );

  final hundtraggedimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block4/Satz4/Hundtragged.png'),
    ),
  );

  final wirdtraggedimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block2/Satz1/wirdtragged.png'),
    ),
  );

  final vomtraggedimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block2/Satz1/vomtragged.png'),
    ),
  );

  final gejagttraggedimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz2/gejagttragged.png'),
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
            title: const Text('Block1 - Satz2', textScaleFactor: 2),
            centerTitle: true,
            toolbarHeight: 100,
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
                onPressed: _Undo,
                icon: const Icon(Icons.undo),
                tooltip: 'Undo',
              ),
              IconButton(
                iconSize: 60,
                padding: const EdgeInsets.all(15.0),
                onPressed: goToThirdSetence,
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
                            feedback: vomimage,
                            childWhenDragging: vomtraggedimage,
                            child: vomimage,
                          );
                        } else {
                          return vomtraggedimage;
                        }
                      },
                      onWillAccept: (data) {
                        return data == vomimage;
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

                spaceBetweenBoxestopWidth1,

                Column(
                  children: <Widget>[
                    spaceBetweenBoxestopHeight4,
                    DragTarget<SizedBox>(
                      builder: (
                          BuildContext context,
                          List<dynamic> accepted,
                          List<dynamic> rejected,
                          ) {
                        if (!droplist[3] || (droplist[partnerofimage4] && !droplist[3])) {
                          return Draggable<String>(
                            data: 'tickling4',
                            feedback: gejagtimage,
                            childWhenDragging: gejagttraggedimage,
                            child: gejagtimage,
                          );
                        } else {
                          return gejagttraggedimage;
                        }
                      },
                      onWillAccept: (data) {
                        return data == gejagtimage;
                      },
                      onAccept: (data) {
                        setState(() {
                          counterlist[partnerofimage4]--;
                          droplist[partnerofimage4] = true;
                          droplist[3] = false;
                          if (lastimagedropped.contains(partnerofimage4+1)) {
                            lastimagedropped.remove(partnerofimage4+1);
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
                            feedback: wirdimage,
                            childWhenDragging: wirdtraggedimage,
                            child: wirdimage,
                          );
                        } else {
                          return wirdtraggedimage;
                        }
                      },
                      onWillAccept: (data) {
                        return data == wirdimage;
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
                            feedback: hundimage,
                            childWhenDragging: hundtraggedimage,
                            child: hundimage,
                          );
                        } else {
                          return hundtraggedimage;
                        }
                      },
                      onWillAccept: (data) {
                        return data == hundimage;
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
                dieimage,
                spaceBetweenBoxesbottom,
                catimage,
                spaceBetweenBoxesbottom,

                DragTarget<String>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    if (isimage8active && !droplist[7]) {
                      return Draggable<SizedBox>(
                        data: imagetoimage81,
                        feedback: imagetoimage81,
                        childWhenDragging: squareimage,
                        child: imagetoimage82,
                      );
                    } else {
                      return squareimage;
                    }
                  },
                  onWillAccept: (data) {
                    if (counterlist[7] == 0) {
                      return data.runtimeType == String;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      counterlist[7]++;
                      _InspectData1(data);
                      _DeterminePartner(data, 8);
                      _DetermineImage(data, 8);
                      droplist[7] = false;
                      isimage8active = true;
                      lastimagedropped.add(8);
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
                      _DeterminePartner(data, 7);
                      _DetermineImage(data, 7);
                      droplist[6] = false;
                      isimage7active = true;
                      lastimagedropped.add(7);
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
                      _DeterminePartner(data, 6);
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
                      _DeterminePartner(data, 5);
                      _DetermineImage(data, 5);
                      droplist[4] = false;
                      isimage5active = true;
                      lastimagedropped.add(5);
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
        case 'tickling4':
          droplist[3] = true;
          break;
      }
    });
  }

  _DeterminePartner(String data, int partner) {
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
      case 'tickling4':
        partnerofimage4 = partner-1;
        break;
    }
  }

  _DetermineImage(String data, int imagenumber) {
    switch (imagenumber) {
      case 5:
        switch (data) {
          case 'tickling1':
            imagetoimage51 = vomimage;
            imagetoimage52 = vomsquareimage;
            resultb1s2[5] = false;
            placedwordb1s2[5] = 'vom';
            worddroppedorder.add('vom');
            break;
          case 'tickling2':
            imagetoimage51 = hundimage;
            imagetoimage52 = hundsquareimage;
            resultb1s2[5] = false;
            placedwordb1s2[5] = 'Hund';
            worddroppedorder.add('Hund');
            break;
          case 'tickling3':
            imagetoimage51 = wirdimage;
            imagetoimage52 = wirdsquareimage;
            resultb1s2[5] = false;
            placedwordb1s2[5] = 'wird';
            worddroppedorder.add('wird');
            break;
          case 'tickling4':
            imagetoimage51 = gejagtimage;
            imagetoimage52 = gejagtsquareimage;
            resultb1s2[5] = true;
            placedwordb1s2[5] = 'gejagt';
            worddroppedorder.add('gejagt');
            break;
        }
        break;
      case 6:
        switch (data) {
          case 'tickling1':
            imagetoimage61 = vomimage;
            imagetoimage62 = vomsquareimage;
            resultb1s2[4] = false;
            placedwordb1s2[4] = 'vom';
            worddroppedorder.add('vom');
            break;
          case 'tickling2':
            imagetoimage61 = hundimage;
            imagetoimage62 = hundsquareimage;
            resultb1s2[4] = true;
            placedwordb1s2[4] = 'Hund';
            worddroppedorder.add('Hund');
            break;
          case 'tickling3':
            imagetoimage61 = wirdimage;
            imagetoimage62 = wirdsquareimage;
            resultb1s2[4] = false;
            placedwordb1s2[4] = 'wird';
            worddroppedorder.add('wird');
            break;
          case 'tickling4':
            imagetoimage61 = gejagtimage;
            imagetoimage62 = gejagtsquareimage;
            resultb1s2[4] = false;
            placedwordb1s2[4] = 'gejagt';
            worddroppedorder.add('gejagt');
            break;
        }
        break;
      case 7:
        switch (data) {
          case 'tickling1':
            imagetoimage71 = vomimage;
            imagetoimage72 = vomsquareimage;
            resultb1s2[3] = true;
            placedwordb1s2[3] = 'vom';
            worddroppedorder.add('vom');
            break;
          case 'tickling2':
            imagetoimage71 = hundimage;
            imagetoimage72 = hundsquareimage;
            resultb1s2[3] = false;
            placedwordb1s2[3] = 'Hund';
            worddroppedorder.add('Hund');
            break;
          case 'tickling3':
            imagetoimage71 = wirdimage;
            imagetoimage72 = wirdsquareimage;
            resultb1s2[3] = false;
            placedwordb1s2[3] = 'wird';
            worddroppedorder.add('wird');
            break;
          case 'tickling4':
            imagetoimage71 = gejagtimage;
            imagetoimage72 = gejagtsquareimage;
            resultb1s2[3] = false;
            placedwordb1s2[3] = 'gejagt';
            worddroppedorder.add('gejagt');
            break;
        }
        break;
      case 8:
        switch (data) {
          case 'tickling1':
            imagetoimage81 = vomimage;
            imagetoimage82 = vomsquareimage;
            resultb1s2[2] = false;
            placedwordb1s2[2] = 'vom';
            worddroppedorder.add('vom');
            break;
          case 'tickling2':
            imagetoimage81 = hundimage;
            imagetoimage82 = hundsquareimage;
            resultb1s2[2] = false;
            placedwordb1s2[2] = 'Hund';
            worddroppedorder.add('Hund');
            break;
          case 'tickling3':
            imagetoimage81 = wirdimage;
            imagetoimage82 = wirdsquareimage;
            resultb1s2[2] = true;
            placedwordb1s2[2] = 'wird';
            worddroppedorder.add('wird');
            break;
          case 'tickling4':
            imagetoimage81 = gejagtimage;
            imagetoimage82 = gejagtsquareimage;
            resultb1s2[2] = false;
            placedwordb1s2[2] = 'gejagt';
            worddroppedorder.add('gejagt');
            break;
        }
        break;
    }
  }

  _Undo() {
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
      partnerofimage4 = 0;

      imagetoimage51 = SizedBox();
      imagetoimage52 = SizedBox();
      imagetoimage61 = SizedBox();
      imagetoimage62 = SizedBox();
      imagetoimage71 = SizedBox();
      imagetoimage72 = SizedBox();
      imagetoimage81 = SizedBox();
      imagetoimage82 = SizedBox();

      wordorderb1s2 = [0,0,0,0,0,0,0,0];

      resetss2b1s += 1;
    });
  }

  void goToThirdSetence() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: ThirdSentenceSetup(),
                  )
              );
            }
        )
    );
    _DetermineOrder();
  }

  void _DetermineOrder() {
    setState(() {
      switch (placedwordb1s2[2]) {
        case 'wird':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'wird') {
              wordorderb1s2[2] = i + 1;
            }
          }
          break;
        case 'vom':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'vom') {
              wordorderb1s2[2] = i + 1;
            }
          }
          break;
        case 'Hund':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'Hund') {
              wordorderb1s2[2] = i + 1;
            }
          }
          break;
        case 'gejagt':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'gejagt') {
              wordorderb1s2[2] = i + 1;
            }
          }
          break;
      }

      switch (placedwordb1s2[3]) {
        case 'wird':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'wird') {
              wordorderb1s2[3] = i + 1;
            }
          }
          break;
        case 'vom':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'vom') {
              wordorderb1s2[3] = i + 1;
            }
          }
          break;
        case 'Hund':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'Hund') {
              wordorderb1s2[3] = i + 1;
            }
          }
          break;
        case 'gejagt':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'gejagt') {
              wordorderb1s2[3] = i + 1;
            }
          }
          break;
      }
      switch (placedwordb1s2[4]) {
        case 'wird':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'wird') {
              wordorderb1s2[4] = i + 1;
            }
          }
          break;
        case 'vom':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'vom') {
              wordorderb1s2[4] = i + 1;
            }
          }
          break;
        case 'Hund':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'Hund') {
              wordorderb1s2[4] = i + 1;
            }
          }
          break;
        case 'gejagt':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'gejagt') {
              wordorderb1s2[4] = i + 1;
            }
          }
          break;
      }

      switch (placedwordb1s2[5]) {
        case 'wird':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'wird') {
              wordorderb1s2[4] = i + 1;
            }
          }
          break;
        case 'vom':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'vom') {
              wordorderb1s2[5] = i + 1;
            }
          }
          break;
        case 'Hund':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'Hund') {
              wordorderb1s2[5] = i + 1;
            }
          }
          break;
        case 'gejagt':
          for (int i = 0; i < 4; i++) {
            if (worddroppedorder[i] == 'gejagt') {
              wordorderb1s2[5] = i + 1;
            }
          }
          break;
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
        case 8:
          isimage8active = false;
          imagetoimage81 = SizedBox();
          imagetoimage82 = SizedBox();
          droplist[7] = false;
          counterlist[7] = 0;
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
      } else if (partnerofimage4 == last-1) {
        partnerofimage4 = 0;
        droplist[3] = false;
      }
    });
  }

  void _UndoSingle() {
    if (lastimagedropped.isNotEmpty) {
      _DetermineLast(lastimagedropped.last);
      lastimagedropped.remove(lastimagedropped.last);
      worddroppedorder.remove(worddroppedorder.last);

      resetss2b1w += 1;
    }
  }
}
import 'package:flutter/material.dart';
import 'package:nat_appv2/Screens/NewGameScreen.dart';
import 'package:nat_appv2/GlobalVariables.dart';

class SixthSentenceBlock3 extends StatefulWidget {
  const SixthSentenceBlock3({super.key});

  @override
  State<SixthSentenceBlock3> createState() => _SixthSentenceBlock3State();
}

class _SixthSentenceBlock3State extends State<SixthSentenceBlock3> {
  List droplist = <bool>[false, false, false, false, false, false, false, false];
  List counterlist = <int>[0,0,0,0,0,0,0,0];
  List lastimagedropped = <int>[];
  List worddroppedorder = <String>[];

  SizedBox spaceBetweenBoxesbottom = const SizedBox(width: 30);
  SizedBox spaceBetweenBoxestopWidth1 = const SizedBox(width: 200);
  SizedBox spaceBetweenBoxestopWidth2 = const SizedBox(width: 600);
  SizedBox spaceBetweenBoxestopWidth3 = const SizedBox(width: 300);
  SizedBox spaceBetweenBoxestopHeight1 = const SizedBox(height: 30);
  SizedBox spaceBetweenBoxestopHeight2 = const SizedBox(height: 0);
  SizedBox spaceBetweenBoxestopHeight3 = SizedBox(height: 100);
  SizedBox spaceBetweenBoxestopHeight4 = SizedBox(height: 40);

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

  final fix1 = SizedBox(
    height: 200,
    width: 200,
    child: Center(
      child: Image.asset('images/Block1/Satz3/Peter.png'),
    ),
  );

  final fix2 = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/sah.png'),
    ),
  );

  final fix3 = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/densquared.png'),
    ),
  );

  final fix4 = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/Jungensquared.png'),
    ),
  );

  final word1 = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/der.png'),
    ),
  );

  final word1squared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/dersquared.png'),
    ),
  );

  final word1tragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/dertragged.png'),
    ),
  );

  final word2 = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/das.png'),
    ),
  );

  final word2squared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/dassquared.png'),
    ),
  );

  final word2tragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/dastragged.png'),
    ),
  );

  final word3 = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/maedchen.png'),
    ),
  );

  final word3squared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/maedchensquared.png'),
    ),
  );

  final word3tragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/maedchentragged.png'),
    ),
  );

  final word4 = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/schubst.png'),
    ),
  );

  final word4squared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/schubstsquared.png'),
    ),
  );

  final word4tragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block3/Satz6/schubsttragged.png'),
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
            title: const Text('Block3 - Satz6', textScaleFactor: 2),
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
                            feedback: word1,
                            childWhenDragging: word1tragged,
                            child: word1,
                          );
                        } else {
                          return word1tragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == word1;
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
                            feedback: word4,
                            childWhenDragging: word4tragged,
                            child: word4,
                          );
                        } else {
                          return word4tragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == word4;
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

                spaceBetweenBoxestopWidth2,

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
                            feedback: word3,
                            childWhenDragging: word3tragged,
                            child: word3,
                          );
                        } else {
                          return word3tragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == word3;
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

                spaceBetweenBoxestopWidth3,

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
                            feedback: word2,
                            childWhenDragging: word2tragged,
                            child: word2,
                          );
                        } else {
                          return word2tragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == word2;
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
                    ),
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
                fix1,
                spaceBetweenBoxesbottom,
                fix2,
                spaceBetweenBoxesbottom,
                fix3,
                spaceBetweenBoxesbottom,
                fix4,
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
            imagetoimage51 = word1;
            imagetoimage52 = word1squared;
            resultb3s6[7] = false;
            placedwordb3s6[7] = 'der';
            worddroppedorder.add('der');
            codewordb3s6[7] = '5a';
            break;
          case 'tickling2':
            imagetoimage51 = word3;
            imagetoimage52 = word3squared;
            resultb3s6[7] = false;
            placedwordb3s6[7] = 'Mädchen';
            worddroppedorder.add('Mädchen');
            codewordb3s6[7] = '3b';
            break;
          case 'tickling3':
            imagetoimage51 = word4;
            imagetoimage52 = word4squared;
            resultb3s6[7] = true;
            placedwordb3s6[7] = 'schubst';
            worddroppedorder.add('schubst');
            codewordb3s6[7] = '1a';
            break;
          case 'tickling4':
            imagetoimage51 = word2;
            imagetoimage52 = word2squared;
            resultb3s6[7] = false;
            placedwordb3s6[7] = 'das';
            worddroppedorder.add('das');
            codewordb3s6[7] = '3a';
            break;
        }
        break;
      case 6:
        switch (data) {
          case 'tickling1':
            imagetoimage61 = word1;
            imagetoimage62 = word1squared;
            resultb3s6[6] = false;
            placedwordb3s6[6] = 'der';
            worddroppedorder.add('der');
            codewordb3s6[6] = '5a';
            break;
          case 'tickling2':
            imagetoimage61 = word3;
            imagetoimage62 = word3squared;
            resultb3s6[6] = true;
            placedwordb3s6[6] = 'Mädchen';
            worddroppedorder.add('Mädchen');
            codewordb3s6[6] = '3b';
            break;
          case 'tickling3':
            imagetoimage61 = word4;
            imagetoimage62 = word4squared;
            resultb3s6[6] = false;
            placedwordb3s6[6] = 'schubst';
            worddroppedorder.add('schubst');
            codewordb3s6[6] = '1a';
            break;
          case 'tickling4':
            imagetoimage61 = word2;
            imagetoimage62 = word2squared;
            resultb3s6[6] = false;
            placedwordb3s6[6] = 'das';
            worddroppedorder.add('das');
            codewordb3s6[6] = '3a';
            break;
        }
        break;
      case 7:
        switch (data) {
          case 'tickling1':
            imagetoimage71 = word1;
            imagetoimage72 = word1squared;
            resultb3s6[5] = false;
            placedwordb3s6[5] = 'der';
            worddroppedorder.add('der');
            codewordb3s6[5] = '5a';
            break;
          case 'tickling2':
            imagetoimage71 = word3;
            imagetoimage72 = word3squared;
            resultb3s6[5] = false;
            placedwordb3s6[5] = 'Mädchen';
            worddroppedorder.add('Mädchen');
            codewordb3s6[5] = '3b';
            break;
          case 'tickling3':
            imagetoimage71 = word4;
            imagetoimage72 = word4squared;
            resultb3s6[5] = false;
            placedwordb3s6[5] = 'schubst';
            worddroppedorder.add('schubst');
            codewordb3s6[5] = '1a';
            break;
          case 'tickling4':
            imagetoimage71 = word2;
            imagetoimage72 = word2squared;
            resultb3s6[5] = true;
            placedwordb3s6[5] = 'das';
            worddroppedorder.add('das');
            codewordb3s6[5] = '3a';
            break;
        }
        break;
      case 8:
        switch (data) {
          case 'tickling1':
            imagetoimage81 = word1;
            imagetoimage82 = word1squared;
            resultb3s6[4] = true;
            placedwordb3s6[4] = 'der';
            worddroppedorder.add('der');
            codewordb3s6[4] = '5a';
            break;
          case 'tickling2':
            imagetoimage81 = word3;
            imagetoimage82 = word3squared;
            resultb3s6[4] = false;
            placedwordb3s6[4] = 'Mädchen';
            worddroppedorder.add('Mädchen');
            codewordb3s6[4] = '3b';
            break;
          case 'tickling3':
            imagetoimage81 = word4;
            imagetoimage82 = word4squared;
            resultb3s6[4] = false;
            placedwordb3s6[4] = 'schubst';
            worddroppedorder.add('schubst');
            codewordb3s6[4] = '1a';
            break;
          case 'tickling4':
            imagetoimage81 = word2;
            imagetoimage82 = word2squared;
            resultb3s6[4] = false;
            placedwordb3s6[4] = 'das';
            worddroppedorder.add('das');
            codewordb3s6[4] = '3a';
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

      wordorderb3s6 = [0,0,0,0,0,0,0,0];

      resetss6b3s += 1;
    });
  }

  void goToThirdSetence() {
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
    _DetermineOrder();
  }

  void _DetermineOrder() {
    setState((){
      switch (placedwordb3s6[4]) {
        case 'der':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'der') {
              wordorderb3s6[4] = i+1;
            }
          }
          break;
        case 'das':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb3s6[4] = i+1;
            }
          }
          break;
        case 'Mädchen':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'Mädchen') {
              wordorderb3s6[4] = i+1;
            }
          }
          break;
        case 'schubst':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'schubst') {
              wordorderb3s6[4] = i+1;
            }
          }
          break;
      }
      switch (placedwordb3s6[5]) {
        case 'der':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'der') {
              wordorderb3s6[5] = i+1;
            }
          }
          break;
        case 'das':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb3s6[5] = i+1;
            }
          }
          break;
        case 'Mädchen':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'Mädchen') {
              wordorderb3s6[5] = i+1;
            }
          }
          break;
        case 'schubst':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'schubst') {
              wordorderb3s6[5] = i+1;
            }
          }
          break;
      }
      switch (placedwordb3s6[6]) {
        case 'der':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'der') {
              wordorderb3s6[6] = i+1;
            }
          }
          break;
        case 'das':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb3s6[6] = i+1;
            }
          }
          break;
        case 'Mädchen':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'Mädchen') {
              wordorderb3s6[6] = i+1;
            }
          }
          break;
        case 'schubst':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'schubst') {
              wordorderb3s6[6] = i+1;
            }
          }
          break;
      }
      switch (placedwordb3s6[7]) {
        case 'der':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'der') {
              wordorderb3s6[7] = i+1;
            }
          }
          break;
        case 'das':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb3s6[7] = i+1;
            }
          }
          break;
        case 'Mädchen':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'Mädchen') {
              wordorderb3s6[7] = i+1;
            }
          }
          break;
        case 'schubst':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'schubst') {
              wordorderb3s6[7] = i+1;
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
      resetss6b3w += 1;
    }
  }
}
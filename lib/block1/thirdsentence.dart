import 'package:flutter/material.dart';
import 'package:nat_appv2/block1/fourthsentence.dart';
import 'package:nat_appv2/GlobalVariables.dart';

class ThirdSentenceSetup extends StatefulWidget {
  const ThirdSentenceSetup({super.key});

  @override
  State<ThirdSentenceSetup> createState() => _ThirdSentenceSetupState();
}

class _ThirdSentenceSetupState extends State<ThirdSentenceSetup> {
  List droplist = <bool>[false, false, false, false, false, false, false, false];
  List counterlist = <int>[0,0,0,0,0,0,0,0];
  List lastimagedropped = <int>[];
  List worddroppedorder = <String>[];

  SizedBox spaceBetweenBoxesbottom = const SizedBox(width: 30);
  SizedBox spaceBetweenBoxestopWidth1 = const SizedBox(width: 200);
  SizedBox spaceBetweenBoxestopWidth2 = const SizedBox(width: 600);
  SizedBox spaceBetweenBoxestopWidth3 = const SizedBox(width: 300);
  SizedBox spaceBetweenBoxestopHeight1 = const SizedBox(height: 20);
  SizedBox spaceBetweenBoxestopHeight2 = const SizedBox(height: 50);
  SizedBox spaceBetweenBoxestopHeight3 = SizedBox(height: 90);
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

  final Peterimage = SizedBox(
    height: 200,
    width: 200,
    child: Center(
      child: Image.asset('images/Block1/Satz3/Peter.png'),
    ),
  );

  final sahimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/sah.png'),
    ),
  );

  final dasimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/dassquared.png'),
    ),
  );

  final maedchenimage = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/maedchensquared.png'),
    ),
  );

  final dasimageword = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/das.png'),
    ),
  );

  final dassquared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/dassquared.png'),
    ),
  );

  final dastragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/dastragged.png'),
    ),
  );

  final der = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/der.png'),
    ),
  );

  final dersquared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/dersquared.png'),
    ),
  );

  final dertragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/dertragged.png'),
    ),
  );

  final junge = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/Junge.png'),
    ),
  );

  final jungesquared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/jungesquared.png'),
    ),
  );

  final jungetragged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/Jungetragged .png'),
    ),
  );

  final zieht = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/zieht .png'),
    ),
  );

  final ziehtsquared = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/ziehtsquared.png'),
    ),
  );

  final ziehttargged = SizedBox(
    height: 200.0,
    width: 200.0,
    child: Center(
      child: Image.asset('images/Block1/Satz3/ziehttragged.png'),
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
            title: const Text('Block1 - Satz3', textScaleFactor: 2),
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
                            feedback: dasimageword,
                            childWhenDragging: dastragged,
                            child: dasimageword,
                          );
                        } else {
                          return dastragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == dasimageword;
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
                            feedback: junge,
                            childWhenDragging: jungetragged,
                            child: junge,
                          );
                        } else {
                          return jungetragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == junge;
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

                spaceBetweenBoxestopWidth2,

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
                            feedback: der,
                            childWhenDragging: dertragged,
                            child: der,
                          );
                        } else {
                          return dertragged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == der;
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

                spaceBetweenBoxestopWidth3,

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
                            feedback: zieht,
                            childWhenDragging: ziehttargged,
                            child: zieht,
                          );
                        } else {
                          return ziehttargged;
                        }
                      },
                      onWillAccept: (data) {
                        return data == zieht;
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
                Peterimage,
                spaceBetweenBoxesbottom,
                sahimage,
                spaceBetweenBoxesbottom,
                dasimage,
                spaceBetweenBoxesbottom,
                maedchenimage,
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
            imagetoimage51 = dasimageword;
            imagetoimage52 = dassquared;
            resultb1s3[7] = false;
            placedwordb1s3[7] = 'das';
            worddroppedorder.add('das');
            break;
          case 'tickling2':
            imagetoimage51 = junge;
            imagetoimage52 = jungesquared;
            resultb1s3[7] = false;
            placedwordb1s3[7] = 'Junge';
            worddroppedorder.add('Junge');
            break;
          case 'tickling3':
            imagetoimage51 = zieht;
            imagetoimage52 = ziehtsquared;
            resultb1s3[7] = true;
            placedwordb1s3[7] = 'zieht';
            worddroppedorder.add('zieht');
            break;
          case 'tickling4':
            imagetoimage51 = der;
            imagetoimage52 = dersquared;
            resultb1s3[7] = false;
            placedwordb1s3[7] = 'der';
            worddroppedorder.add('der');
            break;
        }
        break;
      case 6:
        switch (data) {
          case 'tickling1':
            imagetoimage61 = dasimageword;
            imagetoimage62 = dassquared;
            resultb1s3[6] = false;
            placedwordb1s3[6] = 'das';
            worddroppedorder.add('das');
            break;
          case 'tickling2':
            imagetoimage61 = junge;
            imagetoimage62 = jungesquared;
            resultb1s3[6] = true;
            placedwordb1s3[6] = 'Junge';
            worddroppedorder.add('Junge');
            break;
          case 'tickling3':
            imagetoimage61 = zieht;
            imagetoimage62 = ziehtsquared;
            resultb1s3[6] = false;
            placedwordb1s3[6] = 'zieht';
            worddroppedorder.add('zieht');
            break;
          case 'tickling4':
            imagetoimage61 = der;
            imagetoimage62 = dersquared;
            resultb1s3[6] = false;
            placedwordb1s3[6] = 'der';
            worddroppedorder.add('der');
            break;
        }
        break;
      case 7:
        switch (data) {
          case 'tickling1':
            imagetoimage71 = dasimageword;
            imagetoimage72 = dassquared;
            resultb1s3[5] = false;
            placedwordb1s3[5] = 'das';
            worddroppedorder.add('das');
            break;
          case 'tickling2':
            imagetoimage71 = junge;
            imagetoimage72 = jungesquared;
            resultb1s3[5] = false;
            placedwordb1s3[5] = 'Junge';
            worddroppedorder.add('Junge');
            break;
          case 'tickling3':
            imagetoimage71 = zieht;
            imagetoimage72 = ziehtsquared;
            resultb1s3[5] = false;
            placedwordb1s3[5] = 'zieht';
            worddroppedorder.add('zieht');
            break;
          case 'tickling4':
            imagetoimage71 = der;
            imagetoimage72 = dersquared;
            resultb1s3[5] = true;
            placedwordb1s3[5] = 'der';
            worddroppedorder.add('der');
            break;
        }
        break;
      case 8:
        switch (data) {
          case 'tickling1':
            imagetoimage81 = dasimageword;
            imagetoimage82 = dassquared;
            resultb1s3[4] = true;
            placedwordb1s3[4] = 'das';
            worddroppedorder.add('das');
            break;
          case 'tickling2':
            imagetoimage81 = junge;
            imagetoimage82 = jungesquared;
            resultb1s3[4] = false;
            placedwordb1s3[4] = 'Junge';
            worddroppedorder.add('Junge');
            break;
          case 'tickling3':
            imagetoimage81 = zieht;
            imagetoimage82 = ziehtsquared;
            resultb1s3[4] = false;
            placedwordb1s3[4] = 'zieht';
            worddroppedorder.add('zieht');
            break;
          case 'tickling4':
            imagetoimage81 = der;
            imagetoimage82 = dersquared;
            resultb1s3[4] = false;
            placedwordb1s3[4] = 'der';
            worddroppedorder.add('der');
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

      wordorderb1s3 = [0,0,0,0,0,0,0,0];

      resetss3b1s += 1;
    });
  }

  void goToThirdSetence() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: FourthSentenceBlock1(),
                  )
              );
            }
        )
    );
    _DetermineOrder();
  }

  void _DetermineOrder() {
    setState((){
      switch (placedwordb1s3[4]) {
        case 'das':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb1s3[4] = i+1;
            }
          }
          break;
        case 'der':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'der') {
              wordorderb1s3[4] = i+1;
            }
          }
          break;
        case 'Junge':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'Junge') {
              wordorderb1s3[4] = i+1;
            }
          }
          break;
        case 'zieht':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'zieht') {
              wordorderb1s3[4] = i+1;
            }
          }
          break;
      }

      switch (placedwordb1s3[5]) {
        case 'das':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb1s3[5] = i+1;
            }
          }
          break;
        case 'der':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'der') {
              wordorderb1s3[5] = i+1;
            }
          }
          break;
        case 'Junge':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'Junge') {
              wordorderb1s3[5] = i+1;
            }
          }
          break;
        case 'zieht':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'zieht') {
              wordorderb1s3[5] = i+1;
            }
          }
          break;
      }

      switch (placedwordb1s3[6]) {
        case 'das':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb1s3[6] = i+1;
            }
          }
          break;
        case 'der':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'der') {
              wordorderb1s3[6] = i+1;
            }
          }
          break;
        case 'Junge':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'Junge') {
              wordorderb1s3[6] = i+1;
            }
          }
          break;
        case 'zieht':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'zieht') {
              wordorderb1s3[6] = i+1;
            }
          }
          break;
      }

      switch (placedwordb1s3[7]) {
        case 'das':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'das') {
              wordorderb1s3[7] = i+1;
            }
          }
          break;
        case 'der':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'der') {
              wordorderb1s3[7] = i+1;
            }
          }
          break;
        case 'Junge':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'Junge') {
              wordorderb1s3[7] = i+1;
            }
          }
          break;
        case 'zieht':
          for (int i=0; i < 4; i++){
            if (worddroppedorder[i] == 'zieht') {
              wordorderb1s3[7] = i+1;
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

      resetss3b1w += 1;
    }
  }
}
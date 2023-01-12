import 'package:flutter/material.dart';
import 'package:nat_appv2/GlobalVariables.dart';
import 'package:nat_appv2/Screens/UploadScreen.dart';

class NewResultScreen extends StatefulWidget {
  const NewResultScreen({super.key});

  @override
  State<NewResultScreen> createState() => _NewResultScreenState();
}

class _NewResultScreenState extends State<NewResultScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ergebnisse', textScaleFactor: 2),
          centerTitle: true,
          toolbarHeight: 100,
          actions: [
            IconButton(
              iconSize: 60,
              padding: const EdgeInsets.all(15.0),
              onPressed: UploadData,
              icon: const Icon(Icons.upload_file),
              tooltip: 'Upload Files',
            ),
          ],
        ),
        body:
        Center(
          child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                DataTable(
                  columnSpacing: 2.5,
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block1', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Resets Wort/Satz'),),),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 1')),
                      DataCell(Text(placedwordb1s1[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s1[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb1s1[2]}  /  ${codewordb1s1[2]}')),
                      DataCell(englishtogerman(resultb1s1[2])),
                      DataCell(Text('${placedwordb1s1[3]}  /  ${codewordb1s1[3]}')),
                      DataCell(englishtogerman(resultb1s1[3])),
                      DataCell(Text('${placedwordb1s1[4]}  /  ${codewordb1s1[4]}')),
                      DataCell(englishtogerman(resultb1s1[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss1b1w/$resetss1b1s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb1s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s2[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb1s2[2]}  /  ${codewordb1s2[2]}')),
                      DataCell(englishtogerman(resultb1s2[2])),
                      DataCell(Text('${placedwordb1s2[3]}  /  ${codewordb1s2[3]}')),
                      DataCell(englishtogerman(resultb1s2[3])),
                      DataCell(Text('${placedwordb1s2[4]}  /  ${codewordb1s2[4]}')),
                      DataCell(englishtogerman(resultb1s2[4])),
                      DataCell(Text('${placedwordb1s2[5]}  /  ${codewordb1s2[5]}')),
                      DataCell(englishtogerman(resultb1s2[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss2b1w/$resetss2b1s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 3')),
                      DataCell(Text(placedwordb1s3[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s3[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s3[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s3[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb1s3[4]}  /  ${codewordb1s3[4]}')),
                      DataCell(englishtogerman(resultb1s3[4])),
                      DataCell(Text('${placedwordb1s3[5]}  /  ${codewordb1s3[5]}')),
                      DataCell(englishtogerman(resultb1s3[5])),
                      DataCell(Text('${placedwordb1s3[6]}  /  ${codewordb1s3[6]}')),
                      DataCell(englishtogerman(resultb1s3[6])),
                      DataCell(Text('${placedwordb1s3[7]}  /  ${codewordb1s3[7]}')),
                      DataCell(englishtogerman(resultb1s3[7])),

                      DataCell(Text('$resetss3b1w/$resetss3b1s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb1s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb1s4[1]}  /  ${codewordb1s4[1]}')),
                      DataCell(englishtogerman(resultb1s4[1])),
                      DataCell(Text('${placedwordb1s4[2]}  /  ${codewordb1s4[2]}')),
                      DataCell(englishtogerman(resultb1s4[2])),
                      DataCell(Text('${placedwordb1s4[3]}  /  ${codewordb1s4[3]}')),
                      DataCell(englishtogerman(resultb1s4[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss4b1w/$resetss4b1s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 5')),
                      DataCell(Text(placedwordb1s5[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s5[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s5[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s5[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb1s5[4]}  /  ${codewordb1s5[4]}')),
                      DataCell(englishtogerman(resultb1s5[4])),
                      DataCell(Text('${placedwordb1s5[5]}  /  ${codewordb1s5[5]}')),
                      DataCell(englishtogerman(resultb1s5[5])),
                      DataCell(Text('${placedwordb1s5[6]}  /  ${codewordb1s5[6]}')),
                      DataCell(englishtogerman(resultb1s5[6])),
                      DataCell(Text('${placedwordb1s5[7]}  /  ${codewordb1s5[7]}')),
                      DataCell(englishtogerman(resultb1s5[7])),

                      DataCell(Text('$resetss5b1w/$resetss5b1s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 6')),
                      DataCell(Text(placedwordb1s6[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb1s6[1]}  /  ${codewordb1s6[1]}')),
                      DataCell(englishtogerman(resultb1s6[1])),
                      DataCell(Text('${placedwordb1s6[2]}  /  ${codewordb1s6[2]}')),
                      DataCell(englishtogerman(resultb1s6[2])),
                      DataCell(Text('${placedwordb1s6[3]}  /  ${codewordb1s6[3]}')),
                      DataCell(englishtogerman(resultb1s6[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss6b1w/$resetss6b1s')),
                    ]),
                  ],
                ),

                SizedBox(height: 60),

                DataTable(
                  columnSpacing: 2.5,
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block2', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Resets Wort/Satz'),),),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 1')),
                      DataCell(Text(placedwordb2s1[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s1[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb2s1[2]}  /  ${codewordb2s1[2]}')),
                      DataCell(englishtogerman(resultb2s1[2])),
                      DataCell(Text('${placedwordb2s1[3]}  /  ${codewordb2s1[3]}')),
                      DataCell(englishtogerman(resultb2s1[3])),
                      DataCell(Text('${placedwordb2s1[4]}  /  ${codewordb2s1[4]}')),
                      DataCell(englishtogerman(resultb2s1[4])),
                      DataCell(Text('${placedwordb2s1[5]}  /  ${codewordb2s1[5]}')),
                      DataCell(englishtogerman(resultb2s1[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss1b2w/$resetss1b2s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb2s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s2[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb2s2[2]}  /  ${codewordb2s2[2]}')),
                      DataCell(englishtogerman(resultb2s2[2])),
                      DataCell(Text('${placedwordb2s2[3]}  /  ${codewordb2s2[3]}')),
                      DataCell(englishtogerman(resultb2s2[3])),
                      DataCell(Text('${placedwordb2s2[4]}  /  ${codewordb2s2[4]}')),
                      DataCell(englishtogerman(resultb2s2[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss2b2w/$resetss2b2s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 3')),
                      DataCell(Text(placedwordb2s3[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s3[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s3[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s3[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb2s3[4]}  /  ${codewordb2s3[4]}')),
                      DataCell(englishtogerman(resultb2s3[4])),
                      DataCell(Text('${placedwordb2s3[5]}  /  ${codewordb2s3[5]}')),
                      DataCell(englishtogerman(resultb2s3[5])),
                      DataCell(Text('${placedwordb2s3[6]}  /  ${codewordb2s3[6]}')),
                      DataCell(englishtogerman(resultb2s3[6])),
                      DataCell(Text('${placedwordb2s3[7]}  /  ${codewordb2s3[7]}')),
                      DataCell(englishtogerman(resultb2s3[7])),

                      DataCell(Text('$resetss3b2w/$resetss3b2s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb2s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb2s4[1]}  /  ${codewordb2s4[1]}')),
                      DataCell(englishtogerman(resultb2s4[1])),
                      DataCell(Text('${placedwordb2s4[2]}  /  ${codewordb2s4[2]}')),
                      DataCell(englishtogerman(resultb2s4[2])),
                      DataCell(Text('${placedwordb2s4[3]}  /  ${codewordb2s4[3]}')),
                      DataCell(englishtogerman(resultb2s4[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss4b2w/$resetss4b2s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 5')),
                      DataCell(Text(placedwordb2s5[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s5[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s5[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s5[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb2s5[4]}  /  ${codewordb2s5[4]}')),
                      DataCell(englishtogerman(resultb2s5[4])),
                      DataCell(Text('${placedwordb2s5[5]}  /  ${codewordb2s5[5]}')),
                      DataCell(englishtogerman(resultb2s5[5])),
                      DataCell(Text('${placedwordb2s5[6]}  /  ${codewordb2s5[6]}')),
                      DataCell(englishtogerman(resultb2s5[6])),
                      DataCell(Text('${placedwordb2s5[7]}  /  ${codewordb2s5[7]}')),
                      DataCell(englishtogerman(resultb2s5[7])),

                      DataCell(Text('$resetss5b2w/$resetss5b2s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 6')),
                      DataCell(Text(placedwordb2s6[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb2s6[1]}  /  ${codewordb2s6[1]}')),
                      DataCell(englishtogerman(resultb2s6[1])),
                      DataCell(Text('${placedwordb2s6[2]}  /  ${codewordb2s6[2]}')),
                      DataCell(englishtogerman(resultb2s6[2])),
                      DataCell(Text('${placedwordb2s6[3]}  /  ${codewordb2s6[3]}')),
                      DataCell(englishtogerman(resultb2s6[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss6b2w/$resetss6b2s')),
                    ]),
                  ],
                ),

                SizedBox(height: 60),

                DataTable(
                  columnSpacing: 2.5,
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block3', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Resets Wort/Satz'),),),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 1')),
                      DataCell(Text(placedwordb3s1[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s1[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb3s1[2]}  /  ${codewordb3s1[2]}')),
                      DataCell(englishtogerman(resultb3s1[2])),
                      DataCell(Text('${placedwordb3s1[3]}  /  ${codewordb3s1[3]}')),
                      DataCell(englishtogerman(resultb3s1[3])),
                      DataCell(Text('${placedwordb3s1[4]}  /  ${codewordb3s1[4]}')),
                      DataCell(englishtogerman(resultb3s1[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss1b3w/$resetss1b3s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb3s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb3s2[1]}  /  ${codewordb3s2[1]}')),
                      DataCell(englishtogerman(resultb3s2[1])),
                      DataCell(Text('${placedwordb3s2[2]}  /  ${codewordb3s2[2]}')),
                      DataCell(englishtogerman(resultb3s2[2])),
                      DataCell(Text('${placedwordb3s2[3]}  /  ${codewordb3s2[3]}')),
                      DataCell(englishtogerman(resultb3s2[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss2b3w/$resetss2b3s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 3')),
                      DataCell(Text(placedwordb3s3[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s3[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s3[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s3[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb3s3[4]}  /  ${codewordb3s3[4]}')),
                      DataCell(englishtogerman(resultb3s3[4])),
                      DataCell(Text('${placedwordb3s3[5]}  /  ${codewordb3s3[5]}')),
                      DataCell(englishtogerman(resultb3s3[5])),
                      DataCell(Text('${placedwordb3s3[6]}  /  ${codewordb3s3[6]}')),
                      DataCell(englishtogerman(resultb3s3[6])),
                      DataCell(Text('${placedwordb3s3[7]}  /  ${codewordb3s3[7]}')),
                      DataCell(englishtogerman(resultb3s3[7])),

                      DataCell(Text('$resetss3b3w/$resetss3b3s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb3s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s4[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb3s4[2]}  /  ${codewordb3s4[2]}')),
                      DataCell(englishtogerman(resultb3s4[2])),
                      DataCell(Text('${placedwordb3s4[3]}  /  ${codewordb3s4[3]}')),
                      DataCell(englishtogerman(resultb3s4[3])),
                      DataCell(Text('${placedwordb3s4[4]}  /  ${codewordb3s4[4]}')),
                      DataCell(englishtogerman(resultb3s4[4])),
                      DataCell(Text('${placedwordb3s4[5]}  /  ${codewordb3s4[5]}')),
                      DataCell(englishtogerman(resultb3s4[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss4b3w/$resetss4b3s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 5')),
                      DataCell(Text(placedwordb3s5[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb3s5[1]}  /  ${codewordb3s5[1]}')),
                      DataCell(englishtogerman(resultb3s5[1])),
                      DataCell(Text('${placedwordb3s5[2]}  /  ${codewordb3s5[2]}')),
                      DataCell(englishtogerman(resultb3s5[2])),
                      DataCell(Text('${placedwordb3s5[3]}  /  ${codewordb3s5[3]}')),
                      DataCell(englishtogerman(resultb3s5[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss5b3w/$resetss5b3s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 6')),
                      DataCell(Text(placedwordb3s6[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s6[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s6[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s6[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb3s6[4]}  /  ${codewordb3s6[4]}')),
                      DataCell(englishtogerman(resultb3s6[4])),
                      DataCell(Text('${placedwordb3s6[5]}  /  ${codewordb3s6[5]}')),
                      DataCell(englishtogerman(resultb3s6[5])),
                      DataCell(Text('${placedwordb3s6[6]}  /  ${codewordb3s6[6]}')),
                      DataCell(englishtogerman(resultb3s6[6])),
                      DataCell(Text('${placedwordb3s6[7]}  /  ${codewordb3s6[7]}')),
                      DataCell(englishtogerman(resultb3s6[7])),

                      DataCell(Text('$resetss6b3w/$resetss6b3s')),
                    ]),
                  ],
                ),

                SizedBox(height: 60),

                DataTable(
                  columnSpacing: 2.5,
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block4', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Resets Wort/Satz'),),),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 1')),
                      DataCell(Text(placedwordb4s1[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s1[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s1[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s1[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb4s1[4]}  /  ${codewordb4s1[4]}')),
                      DataCell(englishtogerman(resultb4s1[4])),
                      DataCell(Text('${placedwordb4s1[5]}  /  ${codewordb4s1[5]}')),
                      DataCell(englishtogerman(resultb4s1[5])),
                      DataCell(Text('${placedwordb4s1[6]}  /  ${codewordb4s1[6]}')),
                      DataCell(englishtogerman(resultb4s1[6])),
                      DataCell(Text('${placedwordb4s1[7]}  /  ${codewordb4s1[7]}')),
                      DataCell(englishtogerman(resultb4s1[7])),

                      DataCell(Text('$resetss1b4w/$resetss1b4s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb4s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s2[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb4s2[2]}  /  ${codewordb4s2[2]}')),
                      DataCell(englishtogerman(resultb4s2[2])),
                      DataCell(Text('${placedwordb4s2[3]}  /  ${codewordb4s2[3]}')),
                      DataCell(englishtogerman(resultb4s2[3])),
                      DataCell(Text('${placedwordb4s2[4]}  /  ${codewordb4s2[4]}')),
                      DataCell(englishtogerman(resultb4s2[4])),
                      DataCell(Text('${placedwordb4s2[5]}  /  ${codewordb4s2[5]}')),
                      DataCell(englishtogerman(resultb4s2[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss2b4w/$resetss2b4s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 3')),
                      DataCell(Text(placedwordb4s3[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s3[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s3[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s3[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb4s3[4]}  /  ${codewordb4s3[4]}')),
                      DataCell(englishtogerman(resultb4s3[4])),
                      DataCell(Text('${placedwordb4s3[5]}  /  ${codewordb4s3[5]}')),
                      DataCell(englishtogerman(resultb4s3[5])),
                      DataCell(Text('${placedwordb4s3[6]}  /  ${codewordb4s3[6]}')),
                      DataCell(englishtogerman(resultb4s3[6])),
                      DataCell(Text('${placedwordb4s3[7]}  /  ${codewordb4s3[7]}')),
                      DataCell(englishtogerman(resultb4s3[7])),

                      DataCell(Text('$resetss3b4w/$resetss3b4s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb4s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb4s4[1]}  /  ${codewordb4s4[1]}')),
                      DataCell(englishtogerman(resultb4s4[1])),
                      DataCell(Text('${placedwordb4s4[2]}  /  ${codewordb4s4[2]}')),
                      DataCell(englishtogerman(resultb4s4[2])),
                      DataCell(Text('${placedwordb4s4[3]}  /  ${codewordb4s4[3]}')),
                      DataCell(englishtogerman(resultb4s4[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss4b4w/$resetss4b4s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 5')),
                      DataCell(Text(placedwordb4s5[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s5[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb4s5[2]}  /  ${codewordb4s5[2]}')),
                      DataCell(englishtogerman(resultb4s5[2])),
                      DataCell(Text('${placedwordb4s5[3]}  /  ${codewordb4s5[3]}')),
                      DataCell(englishtogerman(resultb4s5[3])),
                      DataCell(Text('${placedwordb4s5[4]}  /  ${codewordb4s5[4]}')),
                      DataCell(englishtogerman(resultb4s5[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss5b4w/$resetss5b4s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 6')),
                      DataCell(Text(placedwordb4s6[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb4s6[1]}  /  ${codewordb4s6[1]}')),
                      DataCell(englishtogerman(resultb4s6[1])),
                      DataCell(Text('${placedwordb4s6[2]}  /  ${codewordb4s6[2]}')),
                      DataCell(englishtogerman(resultb4s6[2])),
                      DataCell(Text('${placedwordb4s6[3]}  /  ${codewordb4s6[3]}')),
                      DataCell(englishtogerman(resultb4s6[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss6b4w/$resetss6b4s')),
                    ]),
                  ],
                ),

                SizedBox(height: 60),

                DataTable(
                  columnSpacing: 2.5,
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block5', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Resets Wort/Satz'),),),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 1')),
                      DataCell(Text(placedwordb5s1[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s1[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb5s1[2]}  /  ${codewordb5s1[2]}')),
                      DataCell(englishtogerman(resultb5s1[2])),
                      DataCell(Text('${placedwordb5s1[3]}  /  ${codewordb5s1[3]}')),
                      DataCell(englishtogerman(resultb5s1[3])),
                      DataCell(Text('${placedwordb5s1[4]}  /  ${codewordb5s1[4]}')),
                      DataCell(englishtogerman(resultb5s1[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss1b5w/$resetss1b5s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb5s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb5s2[1]}  /  ${codewordb5s2[1]}')),
                      DataCell(englishtogerman(resultb5s2[1])),
                      DataCell(Text('${placedwordb5s2[2]}  /  ${codewordb5s2[2]}')),
                      DataCell(englishtogerman(resultb5s2[2])),
                      DataCell(Text('${placedwordb5s2[3]}  /  ${codewordb5s2[3]}')),
                      DataCell(englishtogerman(resultb5s2[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss2b5w/$resetss2b5s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 3')),
                      DataCell(Text(placedwordb5s3[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s3[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s3[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s3[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb5s3[4]}  /  ${codewordb5s3[4]}')),
                      DataCell(englishtogerman(resultb5s3[4])),
                      DataCell(Text('${placedwordb5s3[5]}  /  ${codewordb5s3[5]}')),
                      DataCell(englishtogerman(resultb5s3[5])),
                      DataCell(Text('${placedwordb5s3[6]}  /  ${codewordb5s3[6]}')),
                      DataCell(englishtogerman(resultb5s3[6])),
                      DataCell(Text('${placedwordb5s3[7]}  /  ${codewordb5s3[7]}')),
                      DataCell(englishtogerman(resultb5s3[7])),

                      DataCell(Text('$resetss3b5w/$resetss3b5s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb5s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb5s4[1]}  /  ${codewordb5s4[1]}')),
                      DataCell(englishtogerman(resultb5s4[1])),
                      DataCell(Text('${placedwordb5s4[2]}  /  ${codewordb5s4[2]}')),
                      DataCell(englishtogerman(resultb5s4[2])),
                      DataCell(Text('${placedwordb5s4[3]}  /  ${codewordb5s4[3]}')),
                      DataCell(englishtogerman(resultb5s4[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss4b5w/$resetss4b5s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 5')),
                      DataCell(Text(placedwordb5s5[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s5[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s5[2], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s5[3], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb5s5[4]}  /  ${codewordb5s5[4]}')),
                      DataCell(englishtogerman(resultb5s5[4])),
                      DataCell(Text('${placedwordb5s5[5]}  /  ${codewordb5s5[5]}')),
                      DataCell(englishtogerman(resultb5s5[5])),
                      DataCell(Text('${placedwordb5s5[6]}  /  ${codewordb5s5[6]}')),
                      DataCell(englishtogerman(resultb5s5[6])),
                      DataCell(Text('${placedwordb5s5[7]}  /  ${codewordb5s5[7]}')),
                      DataCell(englishtogerman(resultb5s5[7])),

                      DataCell(Text('$resetss5b5w/$resetss5b5s')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 6')),
                      DataCell(Text(placedwordb5s6[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s6[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text('${placedwordb5s6[2]}  /  ${codewordb5s6[2]}')),
                      DataCell(englishtogerman(resultb5s6[2])),
                      DataCell(Text('${placedwordb5s6[3]}  /  ${codewordb5s6[3]}')),
                      DataCell(englishtogerman(resultb5s6[3])),
                      DataCell(Text('${placedwordb5s6[4]}  /  ${codewordb5s6[4]}')),
                      DataCell(englishtogerman(resultb5s6[4])),
                      DataCell(Text('${placedwordb5s6[5]}  /  ${codewordb5s6[5]}')),
                      DataCell(englishtogerman(resultb5s6[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),

                      DataCell(Text('$resetss6b5w/$resetss6b5s')),
                    ]),
                  ],
                ),
              ]),
        )
    );
  }

  void UploadData() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (context) {
              return const Scaffold(
                  body: Center(
                    child: NewUploadScreen(),
                  )
              );
            }
        )
    );
  }

  Text englishtogerman(bool word) {
    if (word){
      return Text('Richtig', style: TextStyle(color: Colors.green));
    }
    return Text('Falsch', style: TextStyle(color: Colors.red));
  }
}


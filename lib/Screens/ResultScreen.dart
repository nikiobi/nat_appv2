import 'package:flutter/material.dart';
import 'package:nat_appv2/GlobalResultLists.dart';
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
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block1', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 1')),
                      DataCell(Text(placedwordb1s1[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s1[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb1s1[2]+' -- '+wordorderb1s1[2].toString())),
                      DataCell(englishtogerman(resultb1s1[2])),
                      DataCell(Text(placedwordb1s1[3]+' -- '+wordorderb1s1[3].toString())),
                      DataCell(englishtogerman(resultb1s1[3])),
                      DataCell(Text(placedwordb1s1[4]+' -- '+wordorderb1s1[4].toString())),
                      DataCell(englishtogerman(resultb1s1[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb1s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb1s2[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb1s2[2]+' -- '+wordorderb1s2[2].toString())),
                      DataCell(englishtogerman(resultb1s2[2])),
                      DataCell(Text(placedwordb1s2[3]+' -- '+wordorderb1s2[3].toString())),
                      DataCell(englishtogerman(resultb1s2[3])),
                      DataCell(Text(placedwordb1s2[4]+' -- '+wordorderb1s2[4].toString())),
                      DataCell(englishtogerman(resultb1s2[4])),
                      DataCell(Text(placedwordb1s2[5]+' -- '+wordorderb1s2[5].toString())),
                      DataCell(englishtogerman(resultb1s2[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
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
                      DataCell(Text(placedwordb1s3[4]+' -- '+wordorderb1s3[4].toString())),
                      DataCell(englishtogerman(resultb1s3[4])),
                      DataCell(Text(placedwordb1s3[5]+' -- '+wordorderb1s3[5].toString())),
                      DataCell(englishtogerman(resultb1s3[5])),
                      DataCell(Text(placedwordb1s3[6]+' -- '+wordorderb1s3[6].toString())),
                      DataCell(englishtogerman(resultb1s3[6])),
                      DataCell(Text(placedwordb1s3[7]+' -- '+wordorderb1s3[7].toString())),
                      DataCell(englishtogerman(resultb1s3[7])),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb1s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb1s4[1]+' -- '+wordorderb1s4[1].toString())),
                      DataCell(englishtogerman(resultb1s4[1])),
                      DataCell(Text(placedwordb1s4[2]+' -- '+wordorderb1s4[2].toString())),
                      DataCell(englishtogerman(resultb1s4[2])),
                      DataCell(Text(placedwordb1s4[3]+' -- '+wordorderb1s4[3].toString())),
                      DataCell(englishtogerman(resultb1s4[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
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
                      DataCell(Text(placedwordb1s5[1]+' -- '+wordorderb1s5[4].toString())),
                      DataCell(englishtogerman(resultb1s5[4])),
                      DataCell(Text(placedwordb1s5[5]+' -- '+wordorderb1s5[5].toString())),
                      DataCell(englishtogerman(resultb1s5[5])),
                      DataCell(Text(placedwordb1s5[6]+' -- '+wordorderb1s5[6].toString())),
                      DataCell(englishtogerman(resultb1s5[6])),
                      DataCell(Text(placedwordb1s5[7]+' -- '+wordorderb1s5[7].toString())),
                      DataCell(englishtogerman(resultb1s5[7])),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 6')),
                      DataCell(Text(placedwordb1s6[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb1s6[1]+' -- '+wordorderb1s6[1].toString())),
                      DataCell(englishtogerman(resultb1s6[1])),
                      DataCell(Text(placedwordb1s6[2]+' -- '+wordorderb1s6[2].toString())),
                      DataCell(englishtogerman(resultb1s6[2])),
                      DataCell(Text(placedwordb1s6[3]+' -- '+wordorderb1s6[3].toString())),
                      DataCell(englishtogerman(resultb1s6[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),
                  ],
                ),

                SizedBox(height: 60),

                DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block2', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 1')),
                      DataCell(Text(placedwordb2s1[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s1[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb2s1[2]+' -- '+wordorderb2s1[2].toString())),
                      DataCell(englishtogerman(resultb2s1[2])),
                      DataCell(Text(placedwordb2s1[3]+' -- '+wordorderb2s1[3].toString())),
                      DataCell(englishtogerman(resultb2s1[3])),
                      DataCell(Text(placedwordb2s1[4]+' -- '+wordorderb2s1[4].toString())),
                      DataCell(englishtogerman(resultb2s1[4])),
                      DataCell(Text(placedwordb2s1[5]+' -- '+wordorderb2s1[5].toString())),
                      DataCell(englishtogerman(resultb2s1[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb2s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb2s2[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb2s2[2]+' -- '+wordorderb2s2[2].toString())),
                      DataCell(englishtogerman(resultb2s2[2])),
                      DataCell(Text(placedwordb2s2[3]+' -- '+wordorderb2s2[3].toString())),
                      DataCell(englishtogerman(resultb2s2[3])),
                      DataCell(Text(placedwordb2s2[4]+' -- '+wordorderb2s2[4].toString())),
                      DataCell(englishtogerman(resultb2s2[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
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
                      DataCell(Text(placedwordb2s3[4]+' -- '+wordorderb2s3[4].toString())),
                      DataCell(englishtogerman(resultb2s3[4])),
                      DataCell(Text(placedwordb2s3[5]+' -- '+wordorderb2s3[5].toString())),
                      DataCell(englishtogerman(resultb2s3[5])),
                      DataCell(Text(placedwordb2s3[6]+' -- '+wordorderb2s3[6].toString())),
                      DataCell(englishtogerman(resultb2s3[6])),
                      DataCell(Text(placedwordb2s3[7]+' -- '+wordorderb2s3[7].toString())),
                      DataCell(englishtogerman(resultb2s3[7])),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb2s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb2s4[1]+' -- '+wordorderb2s4[1].toString())),
                      DataCell(englishtogerman(resultb2s4[1])),
                      DataCell(Text(placedwordb2s4[2]+' -- '+wordorderb2s4[2].toString())),
                      DataCell(englishtogerman(resultb2s4[2])),
                      DataCell(Text(placedwordb2s4[3]+' -- '+wordorderb2s4[3].toString())),
                      DataCell(englishtogerman(resultb2s4[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
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
                      DataCell(Text(placedwordb2s5[4]+' -- '+wordorderb2s5[4].toString())),
                      DataCell(englishtogerman(resultb2s5[4])),
                      DataCell(Text(placedwordb2s5[5]+' -- '+wordorderb2s5[5].toString())),
                      DataCell(englishtogerman(resultb2s5[5])),
                      DataCell(Text(placedwordb2s5[6]+' -- '+wordorderb2s5[6].toString())),
                      DataCell(englishtogerman(resultb2s5[6])),
                      DataCell(Text(placedwordb2s5[7]+' -- '+wordorderb2s5[7].toString())),
                      DataCell(englishtogerman(resultb2s5[7])),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 6')),
                      DataCell(Text(placedwordb2s6[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb2s6[1]+' -- '+wordorderb2s6[1].toString())),
                      DataCell(englishtogerman(resultb2s6[1])),
                      DataCell(Text(placedwordb2s6[2]+' -- '+wordorderb2s6[2].toString())),
                      DataCell(englishtogerman(resultb2s6[2])),
                      DataCell(Text(placedwordb2s6[3]+' -- '+wordorderb2s6[3].toString())),
                      DataCell(englishtogerman(resultb2s6[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),
                  ],
                ),

                SizedBox(height: 60),

                DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block3', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 1')),
                      DataCell(Text(placedwordb3s1[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s1[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb3s1[2]+' -- '+wordorderb3s1[2].toString())),
                      DataCell(englishtogerman(resultb3s1[2])),
                      DataCell(Text(placedwordb3s1[3]+' -- '+wordorderb3s1[3].toString())),
                      DataCell(englishtogerman(resultb3s1[3])),
                      DataCell(Text(placedwordb3s1[4]+' -- '+wordorderb3s1[4].toString())),
                      DataCell(englishtogerman(resultb3s1[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb3s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb3s2[1]+' -- '+wordorderb3s2[1].toString())),
                      DataCell(englishtogerman(resultb3s2[1])),
                      DataCell(Text(placedwordb3s2[2]+' -- '+wordorderb3s2[2].toString())),
                      DataCell(englishtogerman(resultb3s2[2])),
                      DataCell(Text(placedwordb3s2[3]+' -- '+wordorderb3s2[3].toString())),
                      DataCell(englishtogerman(resultb3s2[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
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
                      DataCell(Text(placedwordb3s3[4]+' -- '+wordorderb3s3[4].toString())),
                      DataCell(englishtogerman(resultb3s3[4])),
                      DataCell(Text(placedwordb3s3[5]+' -- '+wordorderb3s3[5].toString())),
                      DataCell(englishtogerman(resultb3s3[5])),
                      DataCell(Text(placedwordb3s3[6]+' -- '+wordorderb3s3[6].toString())),
                      DataCell(englishtogerman(resultb3s3[6])),
                      DataCell(Text(placedwordb3s3[7]+' -- '+wordorderb3s3[7].toString())),
                      DataCell(englishtogerman(resultb3s3[7])),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb3s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb3s4[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb3s4[2]+' -- '+wordorderb3s4[2].toString())),
                      DataCell(englishtogerman(resultb3s4[2])),
                      DataCell(Text(placedwordb3s4[3]+' -- '+wordorderb3s4[3].toString())),
                      DataCell(englishtogerman(resultb3s4[3])),
                      DataCell(Text(placedwordb3s4[4]+' -- '+wordorderb3s4[4].toString())),
                      DataCell(englishtogerman(resultb3s4[4])),
                      DataCell(Text(placedwordb3s4[5]+' -- '+wordorderb3s4[5].toString())),
                      DataCell(englishtogerman(resultb3s4[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 5')),
                      DataCell(Text(placedwordb3s5[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb3s5[1]+' -- '+wordorderb3s5[1].toString())),
                      DataCell(englishtogerman(resultb3s5[1])),
                      DataCell(Text(placedwordb3s5[2]+' -- '+wordorderb3s5[2].toString())),
                      DataCell(englishtogerman(resultb3s5[2])),
                      DataCell(Text(placedwordb3s5[3]+' -- '+wordorderb3s5[3].toString())),
                      DataCell(englishtogerman(resultb3s5[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
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
                      DataCell(Text(placedwordb3s6[4]+' -- '+wordorderb3s6[4].toString())),
                      DataCell(englishtogerman(resultb3s6[4])),
                      DataCell(Text(placedwordb3s6[5]+' -- '+wordorderb3s6[5].toString())),
                      DataCell(englishtogerman(resultb3s6[5])),
                      DataCell(Text(placedwordb3s6[6]+' -- '+wordorderb3s6[6].toString())),
                      DataCell(englishtogerman(resultb3s6[6])),
                      DataCell(Text(placedwordb3s6[7]+' -- '+wordorderb3s6[7].toString())),
                      DataCell(englishtogerman(resultb3s6[7])),
                    ]),
                  ],
                ),

                SizedBox(height: 60),

                DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block4', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
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
                      DataCell(Text(placedwordb4s1[4]+' -- '+wordorderb4s1[4].toString())),
                      DataCell(englishtogerman(resultb4s1[4])),
                      DataCell(Text(placedwordb4s1[5]+' -- '+wordorderb4s1[5].toString())),
                      DataCell(englishtogerman(resultb4s1[5])),
                      DataCell(Text(placedwordb4s1[6]+' -- '+wordorderb4s1[6].toString())),
                      DataCell(englishtogerman(resultb4s1[6])),
                      DataCell(Text(placedwordb4s1[7]+' -- '+wordorderb4s1[7].toString())),
                      DataCell(englishtogerman(resultb4s1[7])),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb4s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s2[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb4s2[2]+' -- '+wordorderb4s2[2].toString())),
                      DataCell(englishtogerman(resultb4s2[2])),
                      DataCell(Text(placedwordb4s2[3]+' -- '+wordorderb4s2[3].toString())),
                      DataCell(englishtogerman(resultb4s2[3])),
                      DataCell(Text(placedwordb4s2[4]+' -- '+wordorderb4s2[4].toString())),
                      DataCell(englishtogerman(resultb4s2[4])),
                      DataCell(Text(placedwordb4s2[5]+' -- '+wordorderb4s2[5].toString())),
                      DataCell(englishtogerman(resultb4s2[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
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
                      DataCell(Text(placedwordb4s3[4]+' -- '+wordorderb4s3[4].toString())),
                      DataCell(englishtogerman(resultb4s3[4])),
                      DataCell(Text(placedwordb4s3[5]+' -- '+wordorderb4s3[5].toString())),
                      DataCell(englishtogerman(resultb4s3[5])),
                      DataCell(Text(placedwordb4s3[6]+' -- '+wordorderb4s3[6].toString())),
                      DataCell(englishtogerman(resultb4s3[6])),
                      DataCell(Text(placedwordb4s3[7]+' -- '+wordorderb4s3[7].toString())),
                      DataCell(englishtogerman(resultb4s3[7])),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb4s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb4s4[1]+' -- '+wordorderb4s4[1].toString())),
                      DataCell(englishtogerman(resultb4s4[1])),
                      DataCell(Text(placedwordb4s4[2]+' -- '+wordorderb4s4[2].toString())),
                      DataCell(englishtogerman(resultb4s4[2])),
                      DataCell(Text(placedwordb4s4[3]+' -- '+wordorderb4s4[3].toString())),
                      DataCell(englishtogerman(resultb4s4[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 5')),
                      DataCell(Text(placedwordb4s5[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb4s5[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb4s5[2]+' -- '+wordorderb4s5[2].toString())),
                      DataCell(englishtogerman(resultb4s5[2])),
                      DataCell(Text(placedwordb4s5[3]+' -- '+wordorderb4s5[3].toString())),
                      DataCell(englishtogerman(resultb4s5[3])),
                      DataCell(Text(placedwordb4s5[4]+' -- '+wordorderb4s5[4].toString())),
                      DataCell(englishtogerman(resultb4s5[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 6')),
                      DataCell(Text(placedwordb4s6[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb4s6[1]+' -- '+wordorderb4s6[1].toString())),
                      DataCell(englishtogerman(resultb4s6[1])),
                      DataCell(Text(placedwordb4s6[2]+' -- '+wordorderb4s6[2].toString())),
                      DataCell(englishtogerman(resultb4s6[2])),
                      DataCell(Text(placedwordb4s6[3]+' -- '+wordorderb4s6[3].toString())),
                      DataCell(englishtogerman(resultb4s6[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),
                  ],
                ),

                SizedBox(height: 60),

                DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Block5', textScaleFactor: 1.5,),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 1'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 2'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 3'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 4'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 5'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 6'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 7'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            'Wort 8'),),),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                            ''),),),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 1')),
                      DataCell(Text(placedwordb5s1[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s1[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb5s1[2]+' -- '+wordorderb5s1[2].toString())),
                      DataCell(englishtogerman(resultb5s1[2])),
                      DataCell(Text(placedwordb5s1[3]+' -- '+wordorderb5s1[3].toString())),
                      DataCell(englishtogerman(resultb5s1[3])),
                      DataCell(Text(placedwordb5s1[4]+' -- '+wordorderb5s1[4].toString())),
                      DataCell(englishtogerman(resultb5s1[4])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 2')),
                      DataCell(Text(placedwordb5s2[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb5s2[1]+' -- '+wordorderb5s2[1].toString())),
                      DataCell(englishtogerman(resultb5s2[1])),
                      DataCell(Text(placedwordb5s2[2]+' -- '+wordorderb5s2[2].toString())),
                      DataCell(englishtogerman(resultb5s2[2])),
                      DataCell(Text(placedwordb5s2[3]+' -- '+wordorderb5s2[3].toString())),
                      DataCell(englishtogerman(resultb5s2[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 3')),
                      DataCell(Text(placedwordb5s3[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s3[1])),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s3[2])),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s3[3])),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb5s3[4]+' -- '+wordorderb5s3[4].toString())),
                      DataCell(englishtogerman(resultb5s3[4])),
                      DataCell(Text(placedwordb5s3[5]+' -- '+wordorderb5s3[5].toString())),
                      DataCell(englishtogerman(resultb5s3[5])),
                      DataCell(Text(placedwordb5s3[6]+' -- '+wordorderb5s3[6].toString())),
                      DataCell(englishtogerman(resultb5s3[6])),
                      DataCell(Text(placedwordb5s3[7]+' -- '+wordorderb5s3[7].toString())),
                      DataCell(englishtogerman(resultb5s3[7])),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 4')),
                      DataCell(Text(placedwordb5s4[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb5s4[1]+' -- '+wordorderb5s4[1].toString())),
                      DataCell(englishtogerman(resultb5s4[1])),
                      DataCell(Text(placedwordb5s4[2]+' -- '+wordorderb5s4[2].toString())),
                      DataCell(englishtogerman(resultb5s4[2])),
                      DataCell(Text(placedwordb5s4[3]+' -- '+wordorderb5s4[3].toString())),
                      DataCell(englishtogerman(resultb5s4[3])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
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
                      DataCell(Text(placedwordb5s5[4]+' -- '+wordorderb5s5[4].toString())),
                      DataCell(englishtogerman(resultb5s5[4])),
                      DataCell(Text(placedwordb5s5[5]+' -- '+wordorderb5s5[5].toString())),
                      DataCell(englishtogerman(resultb5s5[5])),
                      DataCell(Text(placedwordb5s5[6]+' -- '+wordorderb5s5[6].toString())),
                      DataCell(englishtogerman(resultb5s5[6])),
                      DataCell(Text(placedwordb5s5[7]+' -- '+wordorderb5s5[7].toString())),
                      DataCell(englishtogerman(resultb5s5[7])),
                    ]),

                    DataRow(cells: <DataCell>[
                      const DataCell(Text('Satz 6')),
                      DataCell(Text(placedwordb5s6[0], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('')),
                      DataCell(Text(placedwordb5s6[1], textScaleFactor: 1.5, style: TextStyle(fontWeight: FontWeight.bold))),
                      DataCell(Text('|', textScaleFactor: 3)),
                      DataCell(Text(placedwordb5s6[2]+' -- '+wordorderb5s6[2].toString())),
                      DataCell(englishtogerman(resultb5s6[2])),
                      DataCell(Text(placedwordb5s6[3]+' -- '+wordorderb5s6[3].toString())),
                      DataCell(englishtogerman(resultb5s6[3])),
                      DataCell(Text(placedwordb5s6[4]+' -- '+wordorderb5s6[4].toString())),
                      DataCell(englishtogerman(resultb5s6[4])),
                      DataCell(Text(placedwordb5s6[5]+' -- '+wordorderb5s6[5].toString())),
                      DataCell(englishtogerman(resultb5s6[5])),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
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


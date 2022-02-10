import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              IconData(0xe093,
                  fontFamily: 'MaterialIcons', matchTextDirection: true),
              size: 20,
              color: Colors.white,
            )),
        title: const Text(
          "History Pengambilan Item",
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Nama Item',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Berat',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Tanggal',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Minyak')),
              DataCell(Text('JL.kemang2')),
              DataCell(Text('10/1/2021')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Botol')),
              DataCell(Text('Jl.mawar')),
              DataCell(Text('21/10/2022')),
            ],
          ),
        ],
      ),
    );
  }
}

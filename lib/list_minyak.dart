import 'package:flutter/material.dart';

class ListMinyak extends StatefulWidget {
  const ListMinyak({Key? key}) : super(key: key);

  @override
  _ListMinyakState createState() => _ListMinyakState();
}

class _ListMinyakState extends State<ListMinyak> {
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
          "List Pengambilan Minyak",
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Nama',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Alamat',
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
              DataCell(Text('Ilham')),
              DataCell(Text('JL.raya')),
              DataCell(Text('10/1/2121')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Luhut Pannjaitan')),
              DataCell(Text('JL.sana ')),
              DataCell(Text('21/10/2030')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William Abok')),
              DataCell(Text('Jl.oktavia')),
              DataCell(Text('1/7/2021')),
            ],
          ),
        ],
      ),
    );
  }
}

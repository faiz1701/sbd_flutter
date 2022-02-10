import 'package:flutter/material.dart';

class ListSampah extends StatefulWidget {
  const ListSampah({Key? key}) : super(key: key);

  @override
  _ListSampahState createState() => _ListSampahState();
}

class _ListSampahState extends State<ListSampah> {
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
          "List Pengambilan Sampah",
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
              DataCell(Text('Ridwan')),
              DataCell(Text('JL.kemang2')),
              DataCell(Text('10/1/2021')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Jajang Nurjaman')),
              DataCell(Text('JL.maengket')),
              DataCell(Text('21/10/2022')),
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

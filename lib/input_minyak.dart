import 'package:flutter/material.dart';

class MinyakPage extends StatefulWidget {
  const MinyakPage({Key? key}) : super(key: key);

  @override
  _MinyakPageState createState() => _MinyakPageState();
}

class _MinyakPageState extends State<MinyakPage> {
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
          "Input Pengambilan Minyak",
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: "Masukan Nama",
                  labelText: "Nama Pengirim",
                  contentPadding: EdgeInsets.all(20),
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  border: UnderlineInputBorder()),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Masukan Alamat",
                labelText: "Alamat",
                contentPadding: EdgeInsets.all(20),
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                border: UnderlineInputBorder(),
              ),
              obscureText: false,
              maxLines: 3,
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Masukan Tanggal",
                  labelText: "Tanggal Pengambilan",
                  contentPadding: EdgeInsets.all(20),
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  border: UnderlineInputBorder()),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Berat  Item",
                  labelText: "Berat Minyak",
                  contentPadding: EdgeInsets.all(20),
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  border: UnderlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}

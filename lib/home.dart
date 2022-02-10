import 'package:depok_bersih/firebase_options.dart';
import 'package:depok_bersih/history_item.dart';
import 'package:depok_bersih/input_minyak.dart';
import 'package:depok_bersih/input_sampah.dart';
import 'package:depok_bersih/list_minyak.dart';
import 'package:depok_bersih/list_sampah.dart';
import 'package:depok_bersih/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.teal,
        title: const Text(
          "Depok Bersih",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Muhammad Faiz"),
              accountEmail: Text("thefaiz17@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.nicepng.com/png/detail/174-1748863_jack-bayley-avatar-vector-icon-boy.png"),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.theconversation.com/files/440348/original/file-20220111-13-xbfbme.jpg?ixlib=rb-1.1.0&rect=54%2C501%2C6086%2C3043&q=45&auto=format&w=668&h=324&fit=crop",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "About This App",
              ),
              trailing: Icon(Icons.info_outline),
            ),
            ListTile(
              title: Text(
                "Log Out",
                style: TextStyle(),
              ),
              trailing: Icon(Icons.logout),
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/plus.png",
                            width: 50.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SampahPage(),
                                ),
                              );
                            },
                            child: const Text(
                              "Input Pengambilan\n Sampah",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          // const Text(
                          //   "Input Pengambilan\n sampah",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 18.0,
                          //   ),
                          //   textAlign: TextAlign.center,
                          // ),
                          const SizedBox(
                            height: 5.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/plus.png",
                            width: 50.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MinyakPage(),
                                ),
                              );
                            },
                            child: const Text(
                              "Input Pengambilan\n Minyak",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          // const Text(
                          //   "Input Pengambilan\n Minyak",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 18.0,
                          //   ),
                          //   textAlign: TextAlign.center,
                          // ),
                          const SizedBox(
                            height: 5.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/icon5.png",
                            width: 50.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ListSampah(),
                                ),
                              );
                            },
                            child: const Text(
                              "List Pengambilan\n Sampah",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          // const Text(
                          //   "List Pengambilan\n sampah",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 18.0,
                          //   ),
                          //   textAlign: TextAlign.center,
                          // ),
                          const SizedBox(
                            height: 5.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/icon5.png",
                            width: 50.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ListMinyak(),
                                ),
                              );
                            },
                            child: const Text(
                              "List Pengambilan\n Minyak",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          // const Text(
                          //   "List Pengambilan\n Minyak",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 18.0,
                          //   ),
                          //   textAlign: TextAlign.center,
                          // ),
                          const SizedBox(
                            height: 5.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 170,
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 5,
                color: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/history.png",
                        width: 50.0,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const History(),
                            ),
                          );
                        },
                        child: const Text(
                          "History Pengambilan Item",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // const Text(
                      //   "History Pengambilan Item",
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 17.0,
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
                      const SizedBox(
                        height: 5.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

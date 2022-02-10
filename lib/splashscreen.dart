import 'package:depok_bersih/home.dart';
import 'package:depok_bersih/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      FirebaseAuth.instance.userChanges().listen((User? user) {
        if (user == null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return const WelcomePage();
            }),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return const HomePage();
            }),
          );
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF00796B),
                  Color(0xFF26A96A),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                "assets/icon4.png",
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
//
//   initWidget() {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//               decoration: const BoxDecoration(
//             color: Color(0xFF00796B),
//             gradient: LinearGradient(
//               colors: [
//                 (Color(0xFF00796B)),
//               ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           )),
//         ],
//       ),
//     );
//   }
// }

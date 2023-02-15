import 'package:firstapp/screens/dashboard.dart';
import 'package:firstapp/screens/myhomepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// void main() {
//   runApp(MyApp());
//   // runApp(Center(
//   //   child: Text(
//   //     "Govind kishor",
//   //     textDirection: TextDirection.ltr,
//   //   ),
//   // ));
//
//   // runApp(MaterialApp(
//   //   title: "The Govind App",
//   //   home: Scaffold(
//   //     appBar: AppBar(
//   //       title: Text("Dashboard".toUpperCase()),
//   //     ),
//   //     body: Center(
//   //       child: Text(
//   //         "Govind kishor",
//   //         textDirection: TextDirection.ltr,style: TextStyle(fontSize: 30.0,fontFamily:"ralewaylight"),
//   //       ),
//   //     ),
//   //   ),
//   // ));
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Flutter App",
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      //home: Dashboard()

      home: MyHomePage(),
    );
  }
}

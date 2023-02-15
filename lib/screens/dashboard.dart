import 'dart:math';

import 'package:firstapp/screens/api_service.dart';
import 'package:firstapp/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.white38,
      ),
      backgroundColor: Colors.white,

      body: Container(

        child: ElevatedButton(

          child: Text('Govind'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(5.0),
            primary: Colors.transparent,
            alignment: Alignment.bottomCenter,shape: StadiumBorder()
          ),
          onPressed: getData,
        ),
        width: 350.0,
        height: 250.0,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black87,
            border: Border.all(color: Colors.white38, width: 6.0),
            shape: BoxShape.circle,
            image:
                DecorationImage(image: AssetImage("assets/image/govind.png")),
            boxShadow: [
              BoxShadow(
                  color: Colors.blueGrey.shade200,
                  blurRadius: 7.0,
                  spreadRadius: 5.0,
                  offset: Offset(4, 4))
            ]),

        //******how to add icon and add flutter toast with adding its dependency with showing toast**//
        // child: IconButton(
        //     icon: Icon(
        //   Icons.account_balance_wallet_rounded,
        //   size: 30.0,
        //   color: Colors.redAccent,
        // ),
        //         onPressed: (){ Fluttertoast.showToast(
        //             msg: "This is a Toast message",
        //             toastLength: Toast.LENGTH_SHORT,
        //             gravity: ToastGravity.CENTER,
        //             timeInSecForIosWeb: 1,
        //             textColor: Colors.white,
        //             fontSize: 16.0
        //         );},
        // ),
        //**********************************//

        //* how to add image from asset locally//
        //child: Image(image: AssetImage("images/pexels_r_fera_432059.jpg"),),
        //**********************************//

        //* how to design each word in sentance with fontfamily//
        // child: Text.rich(
        //   TextSpan(text: "My ${getNuber()} " ,style: TextStyle(fontSize: 20.0, color: Colors.amberAccent,fontFamily: "ralewaylight"),children: [
        //     TextSpan(text: "First",style: TextStyle(fontSize: 30.0,fontWeight:FontWeight.bold,color:Colors.blueAccent,fontFamily: "reckonerbold")),
        //     TextSpan(text: "Flutter App",style: TextStyle(fontSize: 20.0,color:Colors.redAccent))
        //
        //   ]
        //
        //   ),
        //
        // ),
        //**********************************//
        // child: Stack(
        //   children: <Widget>[
        //     Container(
        //       alignment: Alignment.center,
        //       child: Image.network(
        //         'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
        //         height: 250,
        //         width: double.infinity,
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     Container(
        //         alignment: Alignment.center,
        //         child: Text(
        //           'Text Message',
        //           style: TextStyle(color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 22.0),
        //         )),
        //   ],
        // ),
      ),
    );
  }

  void getData() async{

  var user_model= await Api_service.getUsers();
  user_model!.data!.forEach((element) {
    print(element.email);
  });
  //


  }
}

int getNuber() {
  //  Random random=new Random();
  // return random.nextInt(100);
  return Random().nextInt(100);
}

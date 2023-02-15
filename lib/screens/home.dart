import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){},),
        title: Text("Home"),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart),onPressed: (){},),
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom:Radius.circular(20))),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children:<Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(8.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.green
                ),
                child: Text("React.js",style: TextStyle(color:Colors.yellowAccent,fontSize:15),),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(8.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.green
                ),
                child: Text("Flutter",style: TextStyle(color:Colors.yellowAccent,fontSize:15),),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(8.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.green
                ),
                child: Text("MySQL",style: TextStyle(color:Colors.yellowAccent,fontSize:15),),
              )
            ]
        ),
      ),
    );
  }
}

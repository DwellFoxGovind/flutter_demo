import 'dart:convert';

import 'package:firstapp/screens/usermodel.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;


class Api_service{



  static var client=http.Client();

  static Future<user_model?> getUsers() async  {
    Map<String,String> requestHeader={'Content-Type':'application/json'};
    var url=Uri.https("reqres.in","/api/users");
    var response =await client.get(url,headers: requestHeader);
    if(response.statusCode==200){
      var data=jsonDecode(response.body);
      return user_model.fromJson(data);
      print(data);

    }else{
      return null;
    }

  }
}
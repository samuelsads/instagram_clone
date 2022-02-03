import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_clone/src/pages/home_page.dart';

void main(){
  HttpOverrides.global = MyHttpOverrides();
  runApp(InstagramClone());
  }

class InstagramClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      home: HomePage(),
      theme:ThemeData.dark()      
    );
  }
}

 class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
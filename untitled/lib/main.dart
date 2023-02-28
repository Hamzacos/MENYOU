import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/pages/checkout_page.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/single_item_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{


  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
  @override
  void iniState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context) => HomePage(),
        "singleItemPage" :(context) => SingleItemPage(),
        "CheckoutPage" : (context) => CheckoutPage(),

       },
    );
  }

}


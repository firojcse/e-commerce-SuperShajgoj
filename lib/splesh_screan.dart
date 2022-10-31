import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sajgoj_final/tab_bar_class.dart';
class Splesh_Screan extends StatefulWidget {
  const Splesh_Screan({Key? key}) : super(key: key);

  @override
  _Splesh_ScreanState createState() => _Splesh_ScreanState();
}

class _Splesh_ScreanState extends State<Splesh_Screan> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(
     Duration(seconds: 3), ()=>Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (context)=>Tab_bar_Class()))
   );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: Center(
        child: Container(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Logo/app icon.png"),
                    fit: BoxFit.fill
                )
            ),
          ),
        ),
      ),
    );
  }
}

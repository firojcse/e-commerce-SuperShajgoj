import 'package:flutter/material.dart';
import 'package:sajgoj_final/registation_page.dart';
import 'package:share/share.dart';
class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 52,
          width: 165,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Logo/sslogo.png"),
                  fit: BoxFit.fill)),
        ),
        backgroundColor: Colors.pink.shade50,
        actions: [
          IconButton(
              onPressed: () {
                Share.share(
                    "https://www.youtube.com/channel/UCIZlOARmrLl67RWj5dNskPQ");
              },
              icon: Icon(
                Icons.share,
                size: 30,
                color: Colors.black,
              )),
          SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Login_Page()));
            },
            icon: Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        leading: Builder(builder: (context)=>IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu,color: Colors.black,))),

      ),
      body: Container(
        color: Colors.pink.shade50,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, top: 50),
                  child: Text(
                    "Welcome\nBack",
                    style: TextStyle(fontSize: 33),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.account_circle,
                  color: Colors.black26,
                  size: 100,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter your email/mobile",
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            prefixIcon: Icon(Icons.mail_outline),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            prefixIcon: Icon(Icons.vpn_key_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextButton(onPressed: () {}, child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Forgot Password?"),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextButton(onPressed: () {}, child: Text("Facebook Login",style: TextStyle(fontSize: 20,color: Colors.white),)),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextButton(onPressed: () {}, child: Text("Google Pluse Login",style: TextStyle(fontSize: 20,color: Colors.white),)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 100, right: 30, top: 10),
                      child: Center(
                        child: Row(
                          children: [
                            Text("New User?",style: TextStyle(fontSize: 15,color: Colors.black38)),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Registation_Page()));
                              },
                                child: Text("Register Here",style: TextStyle(fontSize: 15,color: Colors.lightBlueAccent))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

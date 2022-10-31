import 'package:flutter/material.dart';
import 'package:sajgoj_final/All%20data/gridviewbilder.dart';
import 'package:sajgoj_final/home_page.dart';
import 'package:sajgoj_final/login_page.dart';
import 'package:share/share.dart';
class Tab_bar_Class extends StatefulWidget {
  const Tab_bar_Class({Key? key}) : super(key: key);

  @override
  _Tab_bar_ClassState createState() => _Tab_bar_ClassState();
}

class _Tab_bar_ClassState extends State<Tab_bar_Class> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
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
            bottom: TabBar(tabs: [
              Tab(child: Text("Home",style: TextStyle(fontSize: 18,color: Colors.black),),),
              Tab(child: Text("Offers",style: TextStyle(fontSize: 18,color: Colors.black),),),
            ],),
          ),
          drawer: Drawer(
            backgroundColor: Color(0xFF0C0A40),
            elevation: 15.0,
            child: ListView.builder(
                itemCount: 16,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        child: ListTile(
                          title: Text(index == 0
                              ? "MAKEUP"
                              : index == 1
                              ? "PERSONAL CARE"
                              : index == 2
                              ? "LIPSTICK"
                              : index == 3
                              ? "NATURAL"
                              : index == 4
                              ? "HAIR"
                              : index == 5
                              ? "MON & BABY"
                              : index == 6
                              ? "FRAGRANCE"
                              : index == 7
                              ? "MEN"
                              : index == 8
                              ? "OFFERS"
                              : index == 9
                              ? "WELLNESS"
                              : index == 10
                              ? "COMBO"
                              : index == 10
                              ? "BUY1GAT1"
                              : index ==
                              11
                              ? "LIGERIE"
                              : index == 12
                              ? "APPLIANCES"
                              : index == 13
                              ? "CLOTHING & MORE"
                              : index == 14
                              ? "APPLIANCES"
                              : index == 15
                              ? "SKIN CARE"
                              : "LIPSTICK"),
                          textColor: Colors.white,
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MakeUp_Product()));
                            } else if (index == 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>Personal_Class()));
                            }else if (index == 2) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>Lipstick_Class ()));
                            } else if (index == 3) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>Natural_Class ()));
                            }else if (index == 4) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Hair_Class()));
                            } else if (index == 5) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mom_And_Baby_Class()));
                            } else if (index == 6) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Fragrance_Class()));
                            }else if (index == 7) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mom_And_Baby_Class()));
                            }else if (index == 8) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Offers_Class()));
                            }else if (index == 9) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mom_And_Baby_Class()));
                            }else if (index == 10) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Offers_Class()));
                            }
                          },
                          trailing: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Divider(),
                    ],
                  );
                }),
          ),
          body: TabBarView(
            children: [
              Home_Page(),
              Offers_Class(),
            ],
          ),
        ),
      ),


    );
  }
}

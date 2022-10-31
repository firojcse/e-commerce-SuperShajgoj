import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sajgoj_final/All%20data/gridviewbilder.dart';
import 'package:sajgoj_final/all_data.dart';
import 'package:sajgoj_final/login_page.dart';
import 'package:share/share.dart';

import 'all_product.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}
class _Home_PageState extends State<Home_Page> {
  List <DetailsOfMakeup>makeup=MData.makeupdata();
  List <DetailsOfHair>hair=HairData.hairdata();
  List<DetailsOfLipstick>lipstick=LipSData.lipstickdata();
  List<DetailsOfMomBaby>mombaby=MoBaData.mombabydata();
  List <DetailsOfNatural>natural=NatData.naturaldata();
  List <DetailsOfPersonalCare>parsonalCa=PCData.parsonalcaredata();
  List<DetailsOfFragrance>fragrance=FragData.fragrancedata();
  List<DetailsOfOffers>offers=OffeData.offersdata();
  shoExitPopup(){
    return showDialog(context: context,
        builder: (context){
      return AlertDialog(
        title: Text("SUPER Shajgoj"),
        content: Text("Do You want To Exit"),
        actions: [
          RaisedButton(
              child: Text("No"),
              onPressed: (){
            Navigator.of(context).pop();
          }),
          RaisedButton(
              child: Text("Yes"),
              onPressed: (){
            SystemNavigator.pop();
          }),
        ],
      );
        });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=> shoExitPopup(),
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              //Search box
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, bottom: 15, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        // fillColor: Colors.purple.shade50,
                      fillColor: Colors.green.shade50,
                        filled: true,
                        hintText: "Search For Products",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              //Slaider + Category
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 200,
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 150),
                          viewportFraction: 1.00
                      ), items: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Natural_Class()));
                        },
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/chlider images/ss2.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Hair_Class()));
                      },
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/chlider images/ss1.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MakeUp_Product()));
                        },
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/chlider images/ss3.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers_Class()));
                        },
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/chlider images/ss4.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                    ],),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 180, left: 8, right: 10, bottom: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MakeUp_Product()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(5)
                                        // borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/Icons/a1.png'), fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                          Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text('Skin',
                                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Hair_Class()));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(5)
                                        // borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/Icons/a2.png'), fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                          Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text('Hair',
                                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Lipstick_Class ()));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(5)
                                        // borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/Icons/a3.png'), fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                          Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text('Lipstick',
                                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mom_And_Baby_Class ()));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(5)
                                        // borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/Icons/a4.png'), fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                          Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text('Mom & Baby',
                                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Natural_Class()));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(5)
                                        // borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/Icons/a5.png'), fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                          Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text('Natural',
                                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(5)
                                      // borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Personal_Class()));
                                          },
                                          child: Container(
                                            height: 70,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/Icons/a6.png'), fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(bottom: 5),
                                              child: Text('Personal Care',
                                                style: TextStyle(color: Colors.white, fontSize: 12),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Fragrance_Class()));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(5)
                                        // borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/Icons/a7.png'), fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                          Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text('Fragrance',
                                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers_Class()));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(5)
                                        // borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/Icons/a8.png'), fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                          Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text('Offers',
                                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(child: Text("First Purchase Offer",style: TextStyle(fontSize: 18,color: Colors.black),),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers_Class()));
                  },
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("images/Home Page images/01.png"),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(child: Text("Hottest Deals",style: TextStyle(fontSize: 18,color: Colors.black),),),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MakeUp_Product()));
                  },
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/Home Page images/02.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
              ),
              //Product GridView
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.keyboard_arrow_down_sharp,size: 40,),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.keyboard_arrow_down_sharp,size: 40,),
                    ),
                  ],
                ),
              ),
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                            itemCount:makeup.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 3,
                                mainAxisExtent: 250
                            ),
                            itemBuilder: (context, index){
                              return GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MakeUp(detailsOfMakeup:makeup[index],)));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: 105,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(makeup[index].image1), fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Text(makeup[index].name, style: TextStyle( fontSize: 12,fontWeight: FontWeight.bold),maxLines: 2,),
                                                ),
                                                Container(decoration:BoxDecoration(
                                                    color: Colors.orange,
                                                    borderRadius: BorderRadius.circular(30)),child: Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Text(makeup[index].discount, style: TextStyle( fontSize: 12),),
                                                )),
                                                Padding(
                                                  padding: const EdgeInsets.all(2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(makeup[index].price, style: TextStyle( fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(makeup[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,size: 16,),

                                            ],
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.keyboard_arrow_up_sharp,size: 40,),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.keyboard_arrow_up_sharp,size: 40,),
                    ),
                  ],
                ),
              ),
              //2nd Section
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(child: Text("Clearance Sale",style: TextStyle(fontSize: 18,color: Colors.black),),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Personal_Class ()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/Home Page images/03.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(child: Text("Miss করলেই লস!!!",style: TextStyle(fontSize: 18,color: Colors.black),),),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Hair_Class()));
                  },
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/Home Page images/04.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
              ),
              //Product
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.keyboard_arrow_down_sharp,size: 40,),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.keyboard_arrow_down_sharp,size: 40,),
                    ),
                  ],
                ),
              ),
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                            itemCount:offers.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 3,
                                mainAxisExtent: 250
                            ),
                            itemBuilder: (context, index){
                              return GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers_Product(detailsOfOffers:offers[index],)));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: 105,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(offers[index].image1), fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Text(offers[index].name, style: TextStyle( fontSize: 12),maxLines: 2,),
                                                ),
                                                Container(decoration:BoxDecoration(
                                                    color: Colors.orange,
                                                    borderRadius: BorderRadius.circular(30)),child: Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Text(offers[index].discount, style: TextStyle( fontSize: 12),),
                                                )),
                                                Padding(
                                                  padding: const EdgeInsets.all(2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(offers[index].price, style: TextStyle( fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(offers[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,size: 16,),

                                            ],
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.keyboard_arrow_up_sharp,size: 40,),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.keyboard_arrow_up_sharp,size: 40,),
                    ),
                  ],
                ),
              ),
              //3rd Section
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(child: Text("Clearance Sale",style: TextStyle(fontSize: 18,color: Colors.black),),),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers_Class()));
                  },
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/Offer Picture/7.jpg"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
              ),
              //Product
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_back_ios_sharp,size: 30,),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                    ),
                  ],
                ),
              ),
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                            itemCount:offers.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 3,
                                mainAxisExtent: 250
                            ),
                            itemBuilder: (context, index){
                              return GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers_Product(detailsOfOffers:offers[index],)));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: 105,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(offers[index].image1), fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Text(offers[index].name, style: TextStyle( fontSize: 12),maxLines: 2,),
                                                ),
                                                Container(decoration:BoxDecoration(
                                                    color: Colors.orange,
                                                    borderRadius: BorderRadius.circular(30)),child: Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Text(offers[index].discount, style: TextStyle( fontSize: 12),),
                                                )),
                                                Padding(
                                                  padding: const EdgeInsets.all(2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(offers[index].price, style: TextStyle( fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(offers[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,color: Colors.yellow,size: 16,),
                                              Icon(Icons.star,size: 16,),

                                            ],
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_back_ios_sharp,size: 30,),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                    ),
                  ],
                ),
              ),
              //4th section
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(child: Text("Segments You Can't Miss",style: TextStyle(fontSize: 18,color: Colors.black),),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Fragrance_Class()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage('images/category image/F.png'),
                                  fit: BoxFit.fill
                                )
                              ),
                              height: 150,
                              width: 170,

                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MakeUp_Product()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage('images/category image/SK.png'),
                                      fit: BoxFit.fill
                                  )
                              ),
                              height: 150,
                              width: 170,

                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Hair_Class()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage('images/category image/H.png'),
                                  fit: BoxFit.fill
                                )
                              ),
                              height: 150,
                              width: 170,

                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mom_And_Baby_Class ()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage('images/category image/MB.png'),
                                      fit: BoxFit.fill
                                  )
                              ),
                              height: 150,
                              width: 170,

                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Natural_Class()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage('images/category image/NT.png'),
                                      fit: BoxFit.fill
                                  )
                              ),
                              height: 150,
                              width: 170,

                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Personal_Class ()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage('images/category image/PC.png'),
                                      fit: BoxFit.fill
                                  )
                              ),
                              height: 150,
                              width: 170,

                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lipstick_Class ()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage('images/category image/LS.png'),
                                      fit: BoxFit.fill
                                  )
                              ),
                              height: 150,
                              width: 170,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers_Class()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage('images/category image/M.png'),
                                      fit: BoxFit.fill
                                  )
                              ),
                              height: 150,
                              width: 170,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //lust section
              SizedBox(child: Text("BEST OFFE UP TO 80%",style: TextStyle(fontSize: 18,color: Colors.black),),),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_back_ios_sharp,size: 30,),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                    ),
                  ],
                ),
              ),
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:makeup.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index){
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 105,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            image: AssetImage(makeup[index].image1), fit: BoxFit.fill
                                        ),
                                      ),
                                    ),
                                    Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Text(makeup[index].name, style: TextStyle( fontSize: 12),maxLines: 2,),
                                              ),
                                              Container(decoration:BoxDecoration(
                                                  color: Colors.orange,
                                                  borderRadius: BorderRadius.circular(30)),child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Text(makeup[index].discount, style: TextStyle( fontSize: 12),),
                                              )),
                                              Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(makeup[index].price, style: TextStyle( fontSize: 12),),
                                                    SizedBox(width: 5,),
                                                    Text(makeup[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,color: Colors.yellow,size: 16,),
                                            Icon(Icons.star,color: Colors.yellow,size: 16,),
                                            Icon(Icons.star,color: Colors.yellow,size: 16,),
                                            Icon(Icons.star,color: Colors.yellow,size: 16,),
                                            Icon(Icons.star,size: 16,),

                                          ],
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              );
                            }),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_back_ios_sharp,size: 30,),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 30,
                      width: 50,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Natural_Class()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/Home Page images/ls.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sajgoj_final/all_data.dart';
import 'package:sajgoj_final/all_product.dart';
import 'package:sajgoj_final/login_page.dart';
import 'package:share/share.dart';
//MakeUp GridView Builder
class MakeUp_Product extends StatefulWidget {
  const MakeUp_Product({Key? key}) : super(key: key);

  @override
  _MakeUp_ProductState createState() => _MakeUp_ProductState();
}

class _MakeUp_ProductState extends State<MakeUp_Product> {
  List<DetailsOfMakeup>makeup=MData.makeupdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50,
          title: Container(
            height: 52,
            width: 165,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Logo/sslogo.png"),
                    fit: BoxFit.fill)),
          ),
          centerTitle: true,

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
        ),
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
                  ),
                );
              }),
        )
    );
  }
}
//Hair GridView Builder
class Hair_Class extends StatefulWidget {
  const Hair_Class({Key? key}) : super(key: key);

  @override
  _Hair_ClassState createState() => _Hair_ClassState();
}

class _Hair_ClassState extends State<Hair_Class> {
  List <DetailsOfHair>hair=HairData.hairdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50,
          title: Container(
            height: 52,
            width: 165,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Logo/sslogo.png"),
                    fit: BoxFit.fill)),
          ),
          centerTitle: true,

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
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              itemCount:hair.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                  mainAxisExtent: 250
              ),
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Hair_Product(detailsOfHair:hair[index],)));
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
                                image: AssetImage(hair[index].image1), fit: BoxFit.fill
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
                                    child: Text(hair[index].name, style: TextStyle( fontSize: 12),maxLines: 2,),
                                  ),
                                  Container(decoration:BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(30)),child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(hair[index].discount, style: TextStyle( fontSize: 12),),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(hair[index].price, style: TextStyle( fontSize: 12),),
                                        SizedBox(width: 5,),
                                        Text(hair[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
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
    );
  }
}
//Lipstick GridView Builder
class Lipstick_Class extends StatefulWidget {
  const Lipstick_Class({Key? key}) : super(key: key);

  @override
  _Lipstick_ClassState createState() => _Lipstick_ClassState();
}

class _Lipstick_ClassState extends State<Lipstick_Class> {
  List<DetailsOfLipstick>lipstick=LipSData.lipstickdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50,
          title: Container(
            height: 52,
            width: 165,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Logo/sslogo.png"),
                    fit: BoxFit.fill)),
          ),
          centerTitle: true,

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
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              itemCount:lipstick.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                  mainAxisExtent: 250
              ),
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Lipstick_Product(detailsOfLipstick:lipstick[index],)));
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
                                image: AssetImage(lipstick[index].image1), fit: BoxFit.fill
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
                                    child: Text(lipstick[index].name, style: TextStyle( fontSize: 12),maxLines: 2,),
                                  ),
                                  Container(decoration:BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(30)),child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(lipstick[index].discount, style: TextStyle( fontSize: 12),),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(lipstick[index].price, style: TextStyle( fontSize: 12),),
                                        SizedBox(width: 5,),
                                        Text(lipstick[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
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
    );
  }
}
//Mom & Baby GridView Builder
class Mom_And_Baby_Class extends StatefulWidget {
  const Mom_And_Baby_Class({Key? key}) : super(key: key);

  @override
  _Mom_And_Baby_ClassState createState() => _Mom_And_Baby_ClassState();
}

class _Mom_And_Baby_ClassState extends State<Mom_And_Baby_Class> {
  List<DetailsOfMomBaby>mombaby=MoBaData.mombabydata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50,
          title: Container(
            height: 52,
            width: 165,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Logo/sslogo.png"),
                    fit: BoxFit.fill)),
          ),
          centerTitle: true,

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
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              itemCount:mombaby.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                  mainAxisExtent: 250
              ),
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mom_And_Baby_Product(detailsOfMomBaby:mombaby[index],)));
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
                                image: AssetImage(mombaby[index].image1), fit: BoxFit.fill
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
                                    child: Text(mombaby[index].name, style: TextStyle( fontSize: 12),maxLines: 2,),
                                  ),
                                  Container(decoration:BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(30)),child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(mombaby[index].discount, style: TextStyle( fontSize: 12),),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(mombaby[index].price, style: TextStyle( fontSize: 12),),
                                        SizedBox(width: 5,),
                                        Text(mombaby[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
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
    );
  }
}
//Natural Gridview Builder
class Natural_Class extends StatefulWidget {
  const Natural_Class({Key? key}) : super(key: key);

  @override
  _Natural_ClassState createState() => _Natural_ClassState();
}

class _Natural_ClassState extends State<Natural_Class> {
  List <DetailsOfNatural>natural=NatData.naturaldata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50,
          title: Container(
            height: 52,
            width: 165,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Logo/sslogo.png"),
                    fit: BoxFit.fill)),
          ),
          centerTitle: true,

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
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              itemCount:natural.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                  mainAxisExtent: 250
              ),
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Natural_Product(detailsOfNatural:natural[index],)));
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
                                image: AssetImage(natural[index].image1), fit: BoxFit.fill
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
                                    child: Text(natural[index].name, style: TextStyle( fontSize: 12),maxLines: 2,),
                                  ),
                                  Container(decoration:BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(30)),child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(natural[index].discount, style: TextStyle( fontSize: 12),),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(natural[index].price, style: TextStyle( fontSize: 12),),
                                        SizedBox(width: 5,),
                                        Text(natural[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
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
    );
  }
}
//Personal Care GridView Builder
class Personal_Class extends StatefulWidget {
  const Personal_Class({Key? key}) : super(key: key);

  @override
  _Personal_ClassState createState() => _Personal_ClassState();
}

class _Personal_ClassState extends State<Personal_Class> {
  List <DetailsOfPersonalCare>parsonalCa=PCData.parsonalcaredata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50,
          title: Container(
            height: 52,
            width: 165,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Logo/sslogo.png"),
                    fit: BoxFit.fill)),
          ),
          centerTitle: true,

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
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Text("Hello")));
            },
            child: GridView.builder(
                itemCount:parsonalCa.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    crossAxisCount: 3,
                    mainAxisExtent: 250
                ),
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalCare_Product(detailsOfPersonalCare:parsonalCa[index],)));
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
                                  image: AssetImage(parsonalCa[index].image1), fit: BoxFit.fill
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
                                      child: Text(parsonalCa[index].name, style: TextStyle( fontSize: 12),maxLines: 2,),
                                    ),
                                    Container(decoration:BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(30)),child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(parsonalCa[index].discount, style: TextStyle( fontSize: 12),),
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(parsonalCa[index].price, style: TextStyle( fontSize: 12),),
                                          SizedBox(width: 5,),
                                          Text(parsonalCa[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
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
          ),
        )
    );
  }
}
//Fragrance GridView Builder
class Fragrance_Class extends StatefulWidget {
  const Fragrance_Class({Key? key}) : super(key: key);

  @override
  _Fragrance_ClassState createState() => _Fragrance_ClassState();
}

class _Fragrance_ClassState extends State<Fragrance_Class> {
  List<DetailsOfFragrance>fragrance=FragData.fragrancedata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50,
          title: Container(
            height: 52,
            width: 165,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Logo/sslogo.png"),
                    fit: BoxFit.fill)),
          ),
          centerTitle: true,

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
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              itemCount:fragrance.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                  mainAxisExtent: 250
              ),
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Fragrance_Product(detailsOfFragrance:fragrance[index],)));
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
                                image: AssetImage(fragrance[index].image1), fit: BoxFit.fill
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
                                    child: Text(fragrance[index].name, style: TextStyle( fontSize: 12),maxLines: 2,),
                                  ),
                                  Container(decoration:BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(30)),child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(fragrance[index].discount, style: TextStyle( fontSize: 12),),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(fragrance[index].price, style: TextStyle( fontSize: 12),),
                                        SizedBox(width: 5,),
                                        Text(fragrance[index].lineprice, style: TextStyle( fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.black38),),
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
    );
  }
}
//Offers GridView Builder
class Offers_Class extends StatefulWidget {
  const Offers_Class({Key? key}) : super(key: key);

  @override
  _Offers_ClassState createState() => _Offers_ClassState();
}

class _Offers_ClassState extends State<Offers_Class> {
  List<DetailsOfOffers>offers=OffeData.offersdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50,
          title: Container(
            height: 52,
            width: 165,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Logo/sslogo.png"),
                    fit: BoxFit.fill)),
          ),
          centerTitle: true,

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
        ),
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
    );
  }
}




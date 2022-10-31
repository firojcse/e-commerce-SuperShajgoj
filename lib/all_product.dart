import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sajgoj_final/all_data.dart';
import 'package:sajgoj_final/login_page.dart';
import 'package:share/share.dart';
//MakeUp Product
class MakeUp extends StatefulWidget {
  final DetailsOfMakeup detailsOfMakeup;
  MakeUp({Key? key, required this.detailsOfMakeup}) : super(key: key);

  @override
  State<MakeUp> createState() => _MakeUpState();
}

class _MakeUpState extends State<MakeUp> {
  List<DetailsOfMakeup>makeup=MData.makeupdata();
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, bottom: 15, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.shade50,
                        filled: true,
                        hintText: "Search For Products",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              //Product Image
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.detailsOfMakeup.image1),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //CarouselSlider
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.00
                    ), items: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfMakeup.image1),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfMakeup.image2),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],),
                ],
              ),
              SizedBox(height: 10,),
              //Product Deteails
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                           widget.detailsOfMakeup.name,
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold), maxLines: 2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.detailsOfMakeup.price, style: TextStyle(fontSize: 16),),
                              SizedBox(width: 5,),
                              Text(widget.detailsOfMakeup.lineprice, style: TextStyle(fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black38),),
                              Text(" Save", style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                              Text(widget.detailsOfMakeup.discount, style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Description",
                      style: TextStyle(fontSize: 18, color: Colors.pink),),
                    SizedBox(width: 20,),
                    Text("Reviews",
                      style: TextStyle(fontSize: 18, color: Colors.black38),),
                  ],
                ),
              ),
              Divider(),
              Text(widget.detailsOfMakeup.discription),
              //add to card
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "dicriment",
                                  onPressed: () {  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 40,
                            color: Colors.red,
                            child: Text(
                              "0", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "increment",
                                  onPressed: () {  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("+ Add To Card", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              //Normal Text
              SizedBox(child: Text("Products Your May Like", style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),),
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
                            scrollDirection: Axis.horizontal,
                            itemCount: makeup.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  makeup[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(makeup[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        makeup[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(makeup[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        makeup[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(

                      body: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: lipstick.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  lipstick[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(lipstick[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        lipstick[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(lipstick[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        lipstick[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              //buttom images
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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

            ],
          ),
        ),
      ),
    );
  }
}
//Hair Product
class Hair_Product extends StatefulWidget {
  final DetailsOfHair detailsOfHair;
  const Hair_Product({Key? key, required this.detailsOfHair}) : super(key: key);

  @override
  _Hair_ProductState createState() => _Hair_ProductState();
}

class _Hair_ProductState extends State<Hair_Product> {
  List <DetailsOfHair>hair=HairData.hairdata();
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, bottom: 15, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.shade50,
                        filled: true,
                        hintText: "Search For Products",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              //Product Image
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.detailsOfHair.image1),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //CarouselSlider
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.00
                    ), items: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfHair.image1),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfHair.image2),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],),
                ],
              ),
              SizedBox(height: 10,),
              //Product Deteails
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            widget.detailsOfHair.name,
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold), maxLines: 2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.detailsOfHair.price, style: TextStyle(fontSize: 16),),
                              SizedBox(width: 5,),
                              Text(widget.detailsOfHair.lineprice, style: TextStyle(fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black38),),
                              Text(" Save", style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                              Text(widget.detailsOfHair.discount, style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Description",
                      style: TextStyle(fontSize: 18, color: Colors.pink),),
                    SizedBox(width: 20,),
                    Text("Reviews",
                      style: TextStyle(fontSize: 18, color: Colors.black38),),
                  ],
                ),
              ),
              Divider(),
              Text(widget.detailsOfHair.discription),
              //add to card
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "dicriment",
                                  onPressed: () {  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 40,
                            color: Colors.red,
                            child: Text(
                              "0", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "increment",
                                  onPressed: () {  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("+ Add To Card", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              //Normal Text
              SizedBox(child: Text("Products Your May Like", style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),),
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
                            scrollDirection: Axis.horizontal,
                            itemCount: hair.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  hair[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(hair[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        hair[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(hair[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        hair[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(

                      body: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: natural.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  natural[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(natural[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        natural[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(natural[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        natural[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              //buttom images
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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

            ],
          ),
        ),
      ),
    );
  }
}
//Lipstick Product
class Lipstick_Product extends StatefulWidget {
  final DetailsOfLipstick detailsOfLipstick;
  const Lipstick_Product({Key? key, required this.detailsOfLipstick}) : super(key: key);

  @override
  _Lipstick_ProductState createState() => _Lipstick_ProductState();
}

class _Lipstick_ProductState extends State<Lipstick_Product> {
  List<DetailsOfLipstick>lipstick=LipSData.lipstickdata();
  List <DetailsOfMakeup>makeup=MData.makeupdata();
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, bottom: 15, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.shade50,
                        filled: true,
                        hintText: "Search For Products",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              //Product Image
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.detailsOfLipstick.image1),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //CarouselSlider
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.00
                    ), items: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfLipstick.image1),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfLipstick.image2),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],),
                ],
              ),
              SizedBox(height: 10,),
              //Product Deteails
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            widget.detailsOfLipstick.name,
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold), maxLines: 2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.detailsOfLipstick.price, style: TextStyle(fontSize: 16),),
                              SizedBox(width: 5,),
                              Text(widget.detailsOfLipstick.lineprice, style: TextStyle(fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black38),),
                              Text(" Save", style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                              Text(widget.detailsOfLipstick.discount, style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Description",
                      style: TextStyle(fontSize: 18, color: Colors.pink),),
                    SizedBox(width: 20,),
                    Text("Reviews",
                      style: TextStyle(fontSize: 18, color: Colors.black38),),
                  ],
                ),
              ),
              Divider(),
              Text(widget.detailsOfLipstick.discription),
              //add to card
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "dicriment",
                                  onPressed: () {  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 40,
                            color: Colors.red,
                            child: Text(
                              "0", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "increment",
                                  onPressed: () {  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("+ Add To Card", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              //Normal Text
              SizedBox(child: Text("Products Your May Like", style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),),
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
                            scrollDirection: Axis.horizontal,
                            itemCount: lipstick.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  lipstick[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(lipstick[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        lipstick[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(lipstick[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        lipstick[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(

                      body: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: makeup.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  makeup[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(makeup[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        makeup[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(makeup[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        makeup[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              //buttom images
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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

            ],
          ),
        ),
      ),
    );
  }
}
//Mom And Baby Product
class Mom_And_Baby_Product extends StatefulWidget {
  final DetailsOfMomBaby detailsOfMomBaby ;
  const Mom_And_Baby_Product({Key? key, required this.detailsOfMomBaby}) : super(key: key);

  @override
  _Mom_And_Baby_ProductState createState() => _Mom_And_Baby_ProductState();
}

class _Mom_And_Baby_ProductState extends State<Mom_And_Baby_Product> {
  List<DetailsOfMomBaby>mombaby=MoBaData.mombabydata();
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, bottom: 15, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.shade50,
                        filled: true,
                        hintText: "Search For Products",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              //Product Image
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.detailsOfMomBaby.image1),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //CarouselSlider
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.00
                    ), items: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfMomBaby.image1),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfMomBaby.image2),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],),
                ],
              ),
              SizedBox(height: 10,),
              //Product Deteails
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            widget.detailsOfMomBaby.name,
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold), maxLines: 2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.detailsOfMomBaby.price, style: TextStyle(fontSize: 16),),
                              SizedBox(width: 5,),
                              Text(widget.detailsOfMomBaby.lineprice, style: TextStyle(fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black38),),
                              Text(" Save", style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                              Text(widget.detailsOfMomBaby.discount, style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Description",
                      style: TextStyle(fontSize: 18, color: Colors.pink),),
                    SizedBox(width: 20,),
                    Text("Reviews",
                      style: TextStyle(fontSize: 18, color: Colors.black38),),
                  ],
                ),
              ),
              Divider(),
              Text(widget.detailsOfMomBaby.discription),
              //add to card
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "dicriment",
                                  onPressed: () {  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 40,
                            color: Colors.red,
                            child: Text(
                              "0", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "increment",
                                  onPressed: () {  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("+ Add To Card", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              //Normal Text
              SizedBox(child: Text("Products Your May Like", style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),),
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
                            scrollDirection: Axis.horizontal,
                            itemCount: mombaby.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  mombaby[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(mombaby[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        mombaby[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(mombaby[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        mombaby[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: parsonalCa.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  parsonalCa[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(parsonalCa[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        parsonalCa[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(parsonalCa[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        parsonalCa[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              //buttom images
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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

            ],
          ),
        ),
      ),
    );
  }
}
//Natural Prosuct
class Natural_Product extends StatefulWidget {
  final DetailsOfNatural detailsOfNatural;
  const Natural_Product({Key? key, required this.detailsOfNatural}) : super(key: key);

  @override
  _Natural_ProductState createState() => _Natural_ProductState();
}

class _Natural_ProductState extends State<Natural_Product> {
  List <DetailsOfNatural>natural=NatData.naturaldata();
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, bottom: 15, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.shade50,
                        filled: true,
                        hintText: "Search For Products",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              //Product Image
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.detailsOfNatural.image1),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //CarouselSlider
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.00
                    ), items: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfNatural.image1),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfNatural.image2),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],),
                ],
              ),
              SizedBox(height: 10,),
              //Product Deteails
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            widget.detailsOfNatural.name,
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold), maxLines: 2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.detailsOfNatural.price, style: TextStyle(fontSize: 16),),
                              SizedBox(width: 5,),
                              Text(widget.detailsOfNatural.lineprice, style: TextStyle(fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black38),),
                              Text(" Save", style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                              Text(widget.detailsOfNatural.discount, style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Description",
                      style: TextStyle(fontSize: 18, color: Colors.pink),),
                    SizedBox(width: 20,),
                    Text("Reviews",
                      style: TextStyle(fontSize: 18, color: Colors.black38),),
                  ],
                ),
              ),
              Divider(),
              Text(widget.detailsOfNatural.discription),
              //add to card
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "dicriment",
                                  onPressed: () {  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 40,
                            color: Colors.red,
                            child: Text(
                              "0", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "increment",
                                  onPressed: () {  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("+ Add To Card", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              //Normal Text
              SizedBox(child: Text("Products Your May Like", style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),),
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
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: natural.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  natural[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(natural[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        natural[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(natural[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        natural[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: hair.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  hair[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(hair[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        hair[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(hair[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        hair[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              //buttom images
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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

            ],
          ),
        ),
      ),
    );
  }
}
//Personal Care
class PersonalCare_Product extends StatefulWidget {
  final DetailsOfPersonalCare detailsOfPersonalCare;
  const PersonalCare_Product({Key? key,required this.detailsOfPersonalCare}) : super(key: key);

  @override
  _PersonalCare_ProductState createState() => _PersonalCare_ProductState();
}

class _PersonalCare_ProductState extends State<PersonalCare_Product> {
  List<DetailsOfMomBaby>mombaby=MoBaData.mombabydata();
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, bottom: 15, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.shade50,
                        filled: true,
                        hintText: "Search For Products",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              //Product Image
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.detailsOfPersonalCare.image1),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //CarouselSlider
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.00
                    ), items: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfPersonalCare.image1),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfPersonalCare.image2),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],),
                ],
              ),
              SizedBox(height: 10,),
              //Product Deteails
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            widget.detailsOfPersonalCare.name,
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold), maxLines: 2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.detailsOfPersonalCare.price, style: TextStyle(fontSize: 16),),
                              SizedBox(width: 5,),
                              Text(widget.detailsOfPersonalCare.lineprice, style: TextStyle(fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black38),),
                              Text(" Save", style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                              Text(widget.detailsOfPersonalCare.discount, style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Description",
                      style: TextStyle(fontSize: 18, color: Colors.pink),),
                    SizedBox(width: 20,),
                    Text("Reviews",
                      style: TextStyle(fontSize: 18, color: Colors.black38),),
                  ],
                ),
              ),
              Divider(),
              Text(widget.detailsOfPersonalCare.discription),
              //add to card
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "dicriment",
                                  onPressed: () {  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 40,
                            color: Colors.red,
                            child: Text(
                              "0", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "increment",
                                  onPressed: () {  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("+ Add To Card", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              //Normal Text
              SizedBox(child: Text("Products Your May Like", style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),),
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
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: parsonalCa.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  parsonalCa[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(parsonalCa[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        parsonalCa[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(parsonalCa[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        parsonalCa[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mombaby.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  mombaby[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(mombaby[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        mombaby[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(mombaby[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        mombaby[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              //buttom images
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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

            ],
          ),
        ),
      ),
    );
  }
}
//Offers Product
class Offers_Product extends StatefulWidget {
  final DetailsOfOffers detailsOfOffers;
  const Offers_Product({Key? key,required this.detailsOfOffers}) : super(key: key);

  @override
  _Offers_ProductState createState() => _Offers_ProductState();
}

class _Offers_ProductState extends State<Offers_Product> {
  List <DetailsOfMakeup>makeup=MData.makeupdata();
  List <DetailsOfHair>hair=HairData.hairdata();
  List<DetailsOfLipstick>lipstick=LipSData.lipstickdata();
  List<DetailsOfMomBaby>mombaby=MoBaData.mombabydata();
  List <DetailsOfNatural>natural=NatData.naturaldata();
  List <DetailsOfPersonalCare>parsonalCa=PCData.parsonalcaredata();
  List<DetailsOfFragrance>fragrance=FragData.fragrancedata();
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, bottom: 15, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.shade50,
                        filled: true,
                        hintText: "Search For Products",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              //Product Image
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.detailsOfOffers.image1),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //CarouselSlider
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.00
                    ), items: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfOffers.image1),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfOffers.image2),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],),
                ],
              ),
              SizedBox(height: 10,),
              //Product Deteails
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            widget.detailsOfOffers.name,
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold), maxLines: 2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.detailsOfOffers.price, style: TextStyle(fontSize: 16),),
                              SizedBox(width: 5,),
                              Text(widget.detailsOfOffers.lineprice, style: TextStyle(fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black38),),
                              Text(" Save", style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                              Text(widget.detailsOfOffers.discount, style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Description",
                      style: TextStyle(fontSize: 18, color: Colors.pink),),
                    SizedBox(width: 20,),
                    Text("Reviews",
                      style: TextStyle(fontSize: 18, color: Colors.black38),),
                  ],
                ),
              ),
              Divider(),
              Text(widget.detailsOfOffers.discription),
              //add to card
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "dicriment",
                                  onPressed: () {  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 40,
                            color: Colors.red,
                            child: Text(
                              "0", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "increment",
                                  onPressed: () {  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("+ Add To Card", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              //Normal Text
              SizedBox(child: Text("Products Your May Like", style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),),
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
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: offers.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  offers[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(offers[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        offers[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(offers[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        offers[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: parsonalCa.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  parsonalCa[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(parsonalCa[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        parsonalCa[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(parsonalCa[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        parsonalCa[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mombaby.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  mombaby[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(mombaby[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        mombaby[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(mombaby[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        mombaby[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: natural.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  natural[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(natural[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        natural[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(natural[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        natural[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: lipstick.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  lipstick[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(lipstick[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        lipstick[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(lipstick[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        lipstick[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              //buttom images
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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

            ],
          ),
        ),
      ),
    );
  }
}
//Fragrance Product
class Fragrance_Product extends StatefulWidget {
  final DetailsOfFragrance detailsOfFragrance;
  const Fragrance_Product({Key? key, required this.detailsOfFragrance}) : super(key: key);

  @override
  _Fragrance_ProductState createState() => _Fragrance_ProductState();
}

class _Fragrance_ProductState extends State<Fragrance_Product> {
  List <DetailsOfPersonalCare>parsonalCa=PCData.parsonalcaredata();
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, bottom: 15, right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.purple.shade50,
                        filled: true,
                        hintText: "Search For Products",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              //Product Image
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.detailsOfFragrance.image1),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //CarouselSlider
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.00
                    ), items: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfFragrance.image1),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.detailsOfFragrance.image2),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],),
                ],
              ),
              SizedBox(height: 10,),
              //Product Deteails
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            widget.detailsOfFragrance.name,
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold), maxLines: 2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),
                                Icon(
                                  Icons.star, color: Colors.orange, size: 18,),


                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.detailsOfFragrance.price, style: TextStyle(fontSize: 16),),
                              SizedBox(width: 5,),
                              Text(widget.detailsOfFragrance.lineprice, style: TextStyle(fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black38),),
                              Text(" Save", style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                              Text(widget.detailsOfFragrance.discount, style: TextStyle(
                                  fontSize: 16, color: Colors.red),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Description",
                      style: TextStyle(fontSize: 18, color: Colors.pink),),
                    SizedBox(width: 20,),
                    Text("Reviews",
                      style: TextStyle(fontSize: 18, color: Colors.black38),),
                  ],
                ),
              ),
              Divider(),
              Text(widget.detailsOfFragrance.discription),
              //add to card
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "dicriment",
                                  onPressed: () {  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 40,
                            color: Colors.red,
                            child: Text(
                              "0", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                FloatingActionButton(

                                  tooltip: "increment",
                                  onPressed: () {  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("+ Add To Card", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              //Normal Text
              SizedBox(child: Text("Products Your May Like", style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),),
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
                        padding: const EdgeInsets.only(left: 10),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: parsonalCa.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  parsonalCa[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(parsonalCa[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        parsonalCa[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(parsonalCa[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        parsonalCa[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              Container(
                height: 260,
                width: 400,
                child: Material(
                  child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: fragrance.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 1,
                                mainAxisExtent: 200
                            ),
                            itemBuilder: (context, index) {
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
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width / 2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  fragrance[index].image1),
                                              fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      3.0),
                                                  child: Text(fragrance[index].name,
                                                    style: TextStyle(
                                                        fontSize: 12),
                                                    maxLines: 2,),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius: BorderRadius
                                                            .circular(30)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(5.0),
                                                      child: Text(
                                                        fragrance[index].discount,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Text(fragrance[index].price,
                                                        style: TextStyle(
                                                            fontSize: 12),),
                                                      SizedBox(width: 5,),
                                                      Text(
                                                        fragrance[index].lineprice,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            color: Colors
                                                                .black38),),
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
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(
                                                Icons.star, color: Colors.yellow,
                                                size: 16,),
                                              Icon(Icons.star, size: 16,),

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
              //buttom images
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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

            ],
          ),
        ),
      ),
    );
  }
}



import 'package:apple/component/product.dart';
import 'package:apple/page/giftCardPage.dart';
import 'package:apple/page/airpodPage.dart';
import 'package:apple/page/ipadPage.dart';
import 'package:apple/page/iphonePage.dart';
import 'package:apple/page/loginPage.dart';
import 'package:apple/page/macPage.dart';
import 'package:apple/page/watchPage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected= false;
  List image=[
    "Assets/iphone.jpg",
    "Assets/mac2.jpg",
    "Assets/watch.jpg",
    "Assets/air.jpg",
    "Assets/ipad.jpg",
  ];
  List product=[
    "Assets/macP.jpg",
    "Assets/ipadP.jpg",
    "Assets/iphoneP.jpg",
    "Assets/airP.jpg",
    "Assets/watchP.jpg",
    "Assets/giftCard.jpeg"
  ];
  List productName=[
    "Mac",
    "iPad",
    "iPhone",
    "AirPods",
    "Apple Watch",
    "Apple Gift Card",
  ];

  List pages=[
    Mac(),
    Ipad(),
    Iphone(),
    AirPods(),
    Watch(),
    GiftCard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          title: Text("Apple Store"),
          leading: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
          }, 
          icon: Icon(Icons.person),iconSize: 30, padding: EdgeInsets.only(left: 0)
          ),
          actions:[
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined),iconSize: 30, padding: EdgeInsets.only(right: 0),),
            ],
        ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search in Store",
                hintStyle: TextStyle(color: Colors.grey[500], height: 1),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide: BorderSide(width: 0.8),
                  )),
            ),
          ),

          Container(
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(5),
            child: CarouselSlider(
              items: [0,1,2,3,4].map((i) {
                return ClipRRect(borderRadius: BorderRadius.circular(7),child: Image.asset("${image[i]}", fit: BoxFit.fill,));
              }).toList(), 
              options: CarouselOptions(viewportFraction: 1, disableCenter: true, autoPlay: true)
              ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.all(5),
            child: GridView.count(      
              physics: NeverScrollableScrollPhysics(),       
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 5,  
                childAspectRatio: (150/195),       
                children:[ 
                  // for(int i=0; i<product.length; i++)
                  //1st product 
                  HPProduct(name: "Mac", imgURL: product[0], onTapContainer: (){}, className: pages[0]),
                  HPProduct(name: "iPad", imgURL: product[1], onTapContainer: (){}, className: pages[1]),
                  HPProduct(name: "iPhone", imgURL: product[2], onTapContainer: (){}, className: pages[2]),
                  HPProduct(name: "AirPods", imgURL: product[3], onTapContainer: (){}, className: pages[3]),
                  HPProduct(name: "Apple Watch", imgURL: product[4], onTapContainer: (){}, className: pages[4]),
                  HPProduct(name: "Apple Gift Card", imgURL: product[5], onTapContainer: (){}, className: pages[5]),
       
                ]
              ),
          ),
          
        ],
      )

    );
  }
  
}

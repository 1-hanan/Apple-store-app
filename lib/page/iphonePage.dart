import 'package:apple/component/product.dart';
import 'package:flutter/material.dart';

class Iphone extends StatefulWidget {
  const Iphone({super.key});

  @override
  State<Iphone> createState() => _IphoneState();
}

class _IphoneState extends State<Iphone> {

  List iphoneImg=[
    "Assets/iphone1.jpg",
    "Assets/iphone2.jpg",
    "Assets/iphone3.jpg",
    "Assets/iphone4.jpg",
    "Assets/iphone5.jpg",
  ];

  List iphoneName=[
    "iPhone 14 Pro max",
    "iPhone 14 & iPhone 14 Plus",
    "iPhone 13 mini & iPhone 13",
    "iPhone SE",
    "iPhone 12",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Apple Store"),
          // leading: IconButton(onPressed: (){}, icon: Icon(Icons.apple),iconSize: 35),
          actions:[
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined),iconSize: 30, padding: EdgeInsets.only(right: 0),),
            IconButton(onPressed: (){}, icon: Icon(Icons.person),iconSize: 30, padding: EdgeInsets.only(left: 0))
            ],
        ),
        body: ListView(
          children: [
            Container(
            padding: EdgeInsets.all(5),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 5,  
                childAspectRatio: (110/200),       
                children:[ 
                  Product(
                    name: iphoneName[0], 
                    imgURL: iphoneImg[0], 
                    description: "Brighter 6.1” Super Retina XDR display¹ featuring Always-On", 
                    price: "\$999",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  Product(
                    name: iphoneName[1], 
                    imgURL: iphoneImg[1], 
                    description: "6.1-inch durable design with Ceramic Shield.¹ Plus water and dust resistance", 
                    price: "\$799",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  
                  Product(
                    name: iphoneName[2], 
                    imgURL: iphoneImg[2], 
                    description: "6.1-inch Super Retina XDR display¹", 
                    price: "\$699",
                    onPressed: (){},
                    onTapImg: (){},
                    ),

                  Product(
                    name: iphoneName[3], 
                    imgURL: iphoneImg[3], 
                    description: "4.7-inch Retina HD displayfootnote¹ that’s bright, colorful, and sharp", 
                    price: "\$429",
                    onPressed: (){},
                    onTapImg: (){},
                    ),

                  Product(
                    name: iphoneName[4], 
                    imgURL: iphoneImg[4], 
                    description: "6.1-inch Super Retina XDR displayfootnote¹ for great contrast and incredible color accuracy", 
                    price: "\$599",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                ]
              ),
          ),
          ],
        ),
    );
  }
}
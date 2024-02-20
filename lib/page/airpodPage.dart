import 'package:apple/component/product.dart';
import 'package:flutter/material.dart';

class AirPods extends StatefulWidget {
  const AirPods({super.key});

  @override
  State<AirPods> createState() => _AirPodsState();
}

class _AirPodsState extends State<AirPods> {

    List airImg=[
    "Assets/air1.jpg",
    "Assets/air2.png",
    "Assets/air3.png",
  ];

  List airName=[
    "AirPods",
    "AirPods",
    "AirPods Max",
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
                    name: airName[0], 
                    imgURL: airImg[0], 
                    description: "3rd generation", 
                    price: "\$169",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  Product(
                    name: airName[1], 
                    imgURL: airImg[1], 
                    description: "2nd generation", 
                    price: "\$129",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  
                  Product(
                    name: airName[2], 
                    imgURL: airImg[2], 
                    description: "",
                    price: "\$549",
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
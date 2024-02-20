import 'package:apple/component/product.dart';
import 'package:flutter/material.dart';

class Mac extends StatefulWidget {
  const Mac({super.key});

  @override
  State<Mac> createState() => _MacState();
}

class _MacState extends State<Mac> {
  List macImg=[
    "Assets/mac1.jpg",
    "Assets/mac3.jpg",
    "Assets/mac4.jpg",
    "Assets/mac5.jpg",
    "Assets/mac6.jpg",
  ];

  List macName=[
    "MacBook Air with M1 chip",
    "MacBook Air with M2 chip",
    "MacBook Pro 13”",
    "MacBook Pro 14” and 16”",
    "iMac 24”",
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
                    name: macName[0], 
                    imgURL: macImg[0], 
                    description: "Apple M1 chip delivers powerful CPU, GPU, and machine learning performance", 
                    price: "\$999",
                    onPressed: (){},
                    onTapImg: (){},
                    ),

                  Product(
                    name: macName[1], 
                    imgURL: macImg[1], 
                    description: "All-new strikingly thin design so you can work, play, or create just about anything — anywhere", 
                    price: "\$1199",
                    onPressed: (){},
                    onTapImg: (){},
                    ),

                  Product(
                    name: macName[2], 
                    imgURL: macImg[2], 
                    description: "Get more done faster with the next-generation Apple M2 chip", 
                    price: "\$1299",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  
                  Product(
                    name: macName[3], 
                    imgURL: macImg[3], 
                    description:"M2 Pro or M2 Max — the most powerful and efficient chip ever in a pro laptop", 
                    price: "\$1999",
                    onPressed: (){},
                    onTapImg: (){},
                    ),

                  Product(
                    name: macName[4], 
                    imgURL: macImg[4], 
                    description: "Apple M1 chip delivers powerful CPU, GPU, and machine learning performance", 
                    price: "\$1299",
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


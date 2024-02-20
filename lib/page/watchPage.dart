import 'package:apple/component/product.dart';
import 'package:flutter/material.dart';

class Watch extends StatefulWidget {
  const Watch({super.key});

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {

  List watchImg=[
    "Assets/watch1.png",
    "Assets/watch2.jpg",
    "Assets/watch3.png",
    "Assets/watch4.jpg",
  ];

  List watchName=[
    "Apple Watch Ultra",
    "Apple Watch Series 8",
    "Apple Watch SE",
    "Apple Watch Hermès",
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
                    name: watchName[0], 
                    imgURL: watchImg[0], 
                    description: "The ultra-tough Action button strikes a balance with weight", 
                    price: "\$799",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  Product(
                    name: watchName[1], 
                    imgURL: watchImg[1], 
                    description: "Bright Always-On Retina display with an expansive edge-to-edge design", 
                    price: "\$399",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  
                  Product(
                    name: watchName[2], 
                    imgURL: watchImg[2], 
                    description: "20% faster than Apple Watch SE (1st generation) with the S8 SiP¹", 
                    price: "\$249",
                    onPressed: (){},
                    onTapImg: (){},
                    ),

                  Product(
                    name: watchName[3], 
                    imgURL: watchImg[3], 
                    description: "Exclusive Hermès bands and watch faces", 
                    price: "\$1229",
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
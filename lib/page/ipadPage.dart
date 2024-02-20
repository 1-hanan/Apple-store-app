import 'package:apple/component/product.dart';
import 'package:flutter/material.dart';

class Ipad extends StatefulWidget {
  const Ipad({super.key});

  @override
  State<Ipad> createState() => _IpadState();
}

class _IpadState extends State<Ipad> {
    List ipadImg=[
    "Assets/ipad1.jpg",
    "Assets/ipad2.jpg",
    "Assets/ipad3.jpg",
    "Assets/ipad4.jpg",
    "Assets/ipad5.jpg",
  ];

  List ipadName=[
    "iPad Pro 11-inch",
    "iPad Air",
    "iPad (10th gen.)",
    "iPad (9th gen.)",
    "iPad mini",
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
                    name: ipadName[0], 
                    imgURL: ipadImg[0], 
                    description: "The Apple M2 chip powers a massive leap in performance for pro workflows and all-day battery life¹", 
                    price: "\$799",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  Product(
                    name: ipadName[1], 
                    imgURL: ipadImg[1], 
                    description: "Apple M1 chip powers next-level performance and all-day battery lifefootnote¹", 
                    price: "\$599",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  
                  Product(
                    name: ipadName[2], 
                    imgURL: ipadImg[2], 
                    description: "The A14 Bionic chip lets you run multiple apps and work smoothly between them", 
                    price: "\$499",
                    onPressed: (){},
                    onTapImg: (){},
                    ),

                  Product(
                    name: ipadName[3], 
                    imgURL: ipadImg[3], 
                    description: "The A13 Bionic chip with Neural Engine makes everything you do incredibly responsive", 
                    price: "\$329",
                    onPressed: (){},
                    onTapImg: (){},
                    ),

                  Product(
                    name: ipadName[4], 
                    imgURL: ipadImg[4], 
                    description: "A15 Bionic chip for incredible performance and all-day battery lifefootnote¹", 
                    price: "\$499",
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
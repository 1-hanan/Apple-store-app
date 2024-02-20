import 'package:apple/component/product.dart';
import 'package:flutter/material.dart';

class GiftCard extends StatefulWidget {
  const GiftCard({super.key});

  @override
  State<GiftCard> createState() => _GiftCardState();
}

class _GiftCardState extends State<GiftCard> {

  List giftImg=[
    "Assets/giftCard1.jpeg",
    "Assets/giftCard2.jpeg",
    
  ];

  List giftName=[
    "Apple Gift Card",
    "Apple Gift Card",
    
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
                    name: giftName[0], 
                    imgURL: giftImg[0], 
                    description: "10 USD - Apple Key - UNITED STATES", 
                    price: "\$70",
                    onPressed: (){},
                    onTapImg: (){},
                    ),
                  Product(
                    name: giftName[1], 
                    imgURL: giftImg[1], 
                    description: "6 USD - Apple Key - UNITED STATES", 
                    price: "\$49",
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
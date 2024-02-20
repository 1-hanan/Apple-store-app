import 'package:flutter/material.dart';


class Product extends StatelessWidget {
  const Product({super.key, required this.name, required this.imgURL, required this.description, required this.price, required this.onPressed, required this.onTapImg});

  final String name;
  final String imgURL;
  final String description;
  final String price;
  final VoidCallback onPressed; 
  final VoidCallback onTapImg;

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    SizedBox(height: 10,),
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
                    InkWell(
                      onTap: onTapImg,
                      child: Container(
                        height: 150,
                        width: 180,
                        child: Image.asset(imgURL),
                      ),
                    ),
                    Text(description,textAlign: TextAlign.center,),
                    SizedBox(height: 8,),
                    Text(price,textAlign: TextAlign.center,),
                    SizedBox(height: 5,),
                    ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    minimumSize: Size(10,35),
                    alignment: Alignment.center,
                    elevation: 5,
                    backgroundColor:Color.fromARGB(255, 10, 33, 49),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: onPressed,
                    child: Text("Buy")
                    ),

                   ],
                  ),
                );
  }
}


class HPProduct extends StatelessWidget {
  const HPProduct({super.key, required this.name, required this.imgURL, required this.onTapContainer, required this.className});

  final String name;
  final String imgURL;
  final VoidCallback onTapContainer;
  final Widget className;

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: Column(
                   children: [
                    InkWell(
                      onTap: onTapContainer,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 180,
                        child: Image.asset(imgURL),
                      ),
                    ),
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    minimumSize: Size(10,35),
                    alignment: Alignment.center,
                    elevation: 5,
                    backgroundColor:Color.fromARGB(255, 10, 33, 49),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> className));
                    },
                    child: Text("More")
                    ),

                   ],
                  ),
                );
  }
}
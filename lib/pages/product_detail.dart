import 'package:flutter/material.dart';
import 'package:shop/widget/support_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef5f1),
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              Center(
                  child: Image.asset(
                    "images/laptop.jpeg",
                    height: 320,
                  ))
            ]),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                width: MediaQuery.of(context).size.width, child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Laptop", style: AppWidget.boldTextFieldStyle(),),
                        Text("\$200", style: TextStyle(color: Color(0xFFfd6f3e), fontSize: 23, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("Details", style: AppWidget.semiBoldTextFieldStyle(),),
                    SizedBox(height: 10,),
                    Text("-----------Product description-----------"),
                    SizedBox(height: 50,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text("Buy now", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

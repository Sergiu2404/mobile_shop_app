import 'package:flutter/material.dart';
import 'package:shop/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphones_icon.png",
    "images/laptop_icon.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, username",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    Text(
                      "Good morning",
                      style: AppWidget.lightTextFieldStyle(),
                    ),
                  ]
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/empty_profile_photo.png", height: 70, width: 70, fit: BoxFit.cover,),
                )
              ]
            ),
            SizedBox(height: 15),
            Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none, hintText: "Search for products", hintStyle: AppWidget.lightTextFieldStyle(), suffixIcon: Icon(Icons.search, color: Colors.grey,),),
                )
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories", style: AppWidget.semiBoldTextFieldStyle(),),
                Text("See all", style: TextStyle(color: Color(0xFFfd6f3e), fontSize: 14, fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Container(
                  height: 130,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFFFD6F3E),
                      borderRadius: BorderRadius.circular(10)
                  ),

                  child: Center(child: Text("All", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),))
                ),
                Expanded(
                  child: Container(
                    height: 130,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Category(image: categories[index]);
                        }
                    )
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All products", style: AppWidget.semiBoldTextFieldStyle(),),
                Text("See all", style: TextStyle(color: Color(0xFFfd6f3e), fontSize: 14, fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 240,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: Column( children: [
                        Image.asset("images/laptop.jpeg", height: 150, width: 150, fit: BoxFit.cover,),
                        Text("Laptop", style: AppWidget.semiBoldTextFieldStyle(),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("\$600", style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22, fontWeight: FontWeight.bold),),
                            SizedBox(width: 15,),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(5)),
                                child: Icon(Icons.add, color: Colors.white,)
                            )
                          ],
                        )
                      ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: Column( children: [
                      Image.asset("images/TV.jpeg", height: 150, width: 150, fit: BoxFit.cover,),
                      Text("Smart TV", style: AppWidget.semiBoldTextFieldStyle(),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("\$400", style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22, fontWeight: FontWeight.bold),),
                          SizedBox(width: 15,),
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(5)),
                              child: Icon(Icons.add, color: Colors.white,)
                          )
                        ],
                      )
                    ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: Column( children: [
                      Image.asset("images/smart_watch.jpeg", height: 150, width: 150, fit: BoxFit.cover,),
                      Text("Smart Watch", style: AppWidget.semiBoldTextFieldStyle(),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("\$110", style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22, fontWeight: FontWeight.bold),),
                          SizedBox(width: 15,),
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(5)),
                              child: Icon(Icons.add, color: Colors.white,)
                          )
                        ],
                      )
                    ]
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image;
  Category({ required this.image });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, height: 50, width: 50, fit: BoxFit.cover,),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}


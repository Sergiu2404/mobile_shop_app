import 'package:flutter/material.dart';
import 'package:shop/pages/login.dart';
import 'package:shop/widget/support_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/login.jpeg"),
              Center( child: Text("Sign Up", style: AppWidget.semiBoldTextFieldStyle(),)),
              SizedBox(height: 20,),

              Text("Please enter your credentials below to log in", style: AppWidget.lightTextFieldStyle(),),
              SizedBox(height: 40,),

              Text("Name", style: AppWidget.semiBoldTextFieldStyle(),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: Color(0xFFF4F5F9), borderRadius: BorderRadius.circular(10), ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Name"),
                ),
              ),
              SizedBox(height: 20,),

              Text("Email", style: AppWidget.semiBoldTextFieldStyle(),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: Color(0xFFF4F5F9), borderRadius: BorderRadius.circular(10), ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Email"),
                ),
              ),
              SizedBox(height: 20,),

              Text("Password", style: AppWidget.semiBoldTextFieldStyle(),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: Color(0xFFF4F5F9), borderRadius: BorderRadius.circular(10), ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
              ),
              SizedBox(height: 30,),

              Center(
                child: Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                  child: Center( child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)),
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: AppWidget.lightTextFieldStyle(),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text("Sign In", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500, fontSize: 10),)

                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

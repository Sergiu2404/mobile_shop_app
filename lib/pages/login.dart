import 'package:flutter/material.dart';
import 'package:shop/pages/signup.dart';
import 'package:shop/widget/support_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              Center( child: Text("Sign In", style: AppWidget.semiBoldTextFieldStyle(),)),
              SizedBox(height: 20,),
        
              Text("Please enter your credentials below to log in", style: AppWidget.lightTextFieldStyle(),),
              SizedBox(height: 40,),
        
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
              SizedBox(height: 20,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("forgot password?", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500, fontSize: 10),),
                ],
              ),
              SizedBox(height: 30,),
        
              Center(
                child: Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                  child: Center( child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)),
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: AppWidget.lightTextFieldStyle(),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text("Sign Up", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500, fontSize: 10),)
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

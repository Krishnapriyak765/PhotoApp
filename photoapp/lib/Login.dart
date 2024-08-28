import 'package:flutter/material.dart';
import 'package:photoapp/HomePage.dart';
import 'package:photoapp/SignUp.dart';
import 'package:photoapp/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Center(
                  child: Container(
                      height: height * .65,
                      width: width * 1,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Image.asset("asset/login.webp", fit: BoxFit.cover),
                      )),
                ),
                CircleAvatar(
                  child: IconButton(onPressed: ()=>Navigator.of(context).pop(), icon: const Icon(Icons.arrow_back)),
                  backgroundColor: Colors.amber,
                )
            ]),
              SizedBox(height: height * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(2, 4),
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "UserName", 
                          icon: Icon(Icons.person),
                           border: InputBorder.none),
                      textAlign: TextAlign.left,
                      minLines: 1,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      validator: (String? value) {
                        return value == null ? "Please enter username" : value;
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(2, 4),
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Password",
                          icon: Icon(Icons.remove_red_eye),
                           border: InputBorder.none),
                      textAlign: TextAlign.left,
                      minLines: 1,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      validator: (String? value) {
                        return value == null ? "Please enter username" : value;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                  height: height * 0.045,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(height * 0.02)),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage())),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: height * 0.015,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )),
              SizedBox(height: height * 0.02),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Dont have an account?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.012,
                      fontWeight: FontWeight.w400),
                ),
                WidgetSpan(
                  child: InkWell(
                    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignUpPage())),
                     child: Text(" SignUp" ,
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: height * 0.012,
                        fontWeight: FontWeight.w400),)
                  ),
                   )
              ])),
              SizedBox(
                height: height * 0.03,
              ),
              //  Image(image:AssetImage("asset/login.webp"))
            ],
          ),
        ),
      ),
    );
  }
}

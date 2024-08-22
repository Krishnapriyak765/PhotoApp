import 'package:flutter/material.dart';
import 'package:photoapp/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: height * 0.6,
                width: width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                      boxShadow: [ 
                        BoxShadow(color: Colors.white,
                        blurRadius: 10.0,
                      spreadRadius: 2.0,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),)
                        
                      ],
                ),
                

                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset("asset/login.webp",fit: BoxFit.cover),
                )
              ),
            )
            //  Image(image: AssetImage("asset/login.webp")   )

            
          ],
        ),
      ),
    );
  }
}

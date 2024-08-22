import 'package:flutter/material.dart';
import 'package:photoapp/HomePage.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: const Offset(
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
            //  Image(image: AssetImage("asset/login.webp")   )
            SizedBox(
              height: height * 0.01,
            ),
            Text(
                style: TextStyle(
                    fontSize: height * 0.02,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
                " Before Continuing , You Are Ready To Accept The Terms And Conditions As Well As Privacy Policy"),
            
            Text(
                style: TextStyle(
                    fontSize: height * 0.01,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400),
                "Start Terms & Conditions And Privacy Policy"),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
                height: height * 0.045,
                width: width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(height * 0.02)),
                child: InkWell(
                  onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage())),
                  child: Center(
                    child: Text("Get Started",
                    style: TextStyle(
                      fontSize: height*0.015,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  ),
                )),
                SizedBox(
              height: height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}

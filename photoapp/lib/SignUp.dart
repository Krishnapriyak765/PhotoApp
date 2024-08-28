import 'package:flutter/material.dart';
import 'package:photoapp/Login.dart';
import 'package:photoapp/main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontSize: height * 0.03,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
        leading: CircleAvatar(
          child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back)),
          backgroundColor: Colors.amber,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: height * 0.03),
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
                          hintText: "User Name",
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
                        hintText: "Phone Number",
                        icon: Icon(Icons.phone),
                        border: InputBorder.none,
                      ),
                      textAlign: TextAlign.left,
                      minLines: 1,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      validator: (String? value) {
                        return value == null ? "Please enter Last name" : value;
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
                          hintText: "Email",
                          icon: Icon(Icons.email),
                          border: InputBorder.none),
                      textAlign: TextAlign.left,
                      minLines: 1,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      validator: (String? value) {
                        return value == null ? "Please enter email" : value;
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
              SizedBox(height: height * 0.03),
              Container(
                  height: height * 0.045,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(height * 0.02)),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Login())),
                    child: Center(
                      child: Text(
                        "Sign Up",
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
                  text: "Already have an account?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.012,
                      fontWeight: FontWeight.w400),
                ),
                WidgetSpan(
                  child: InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Login())),
                      child: Text(
                        " Login",
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: height * 0.012,
                            fontWeight: FontWeight.w400),
                      )),
                )
              ])),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.06,
                  width: width * 1,
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
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: height * 0.025,
                                child: Image.asset("asset/google.png")),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "Sign Up with Google",
                              style: TextStyle(
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

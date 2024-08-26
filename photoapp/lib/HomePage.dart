import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
         child: CircleAvatar(
                    child: IconButton(onPressed: ()=>Navigator.of(context).pop(), icon: Icon(Icons.arrow_back)),
                    backgroundColor: Colors.amber,
                  )
        ),
      ),
    );
  }
}
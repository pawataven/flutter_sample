import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("help"),),
      body: const Center(child: Column(children: [
        SizedBox(height: 30,),
        Text("heelp page")
      ],),),
    );
  }
}
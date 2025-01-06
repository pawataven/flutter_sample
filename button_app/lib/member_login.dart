import 'package:flutter/material.dart';

class Memberlogin extends StatelessWidget {
  const Memberlogin({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("mmber login"),),
      body: const Center(child: Column(children: [
        SizedBox(height: 30,),
        Text("member loin pagge")
      ],),),
    );
  }
}
import 'package:flutter/material.dart';

class Productdetail extends StatelessWidget {
  const Productdetail({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("product detail"),),
      body: const Center(child: Column(children: [
        SizedBox(height: 30,),
        Text("productail  pagge")
      ],),),
    );
  }
}
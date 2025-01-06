import 'package:button_app/productdetail.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("product"),),
      body:  Center(child: Column(
      children: [
       const SizedBox(height: 60,),
       const SizedBox(height: 30,),
       btnDetail(context),
      ],),),
    );
  }
  
  btnDetail(BuildContext ctx) {
    return TextButton(
      onPressed: () => Navigator.push(ctx,
      MaterialPageRoute(builder: (ctx)=> const Productdetail())), 
      child:  const Text('product Detail'));
  }
}
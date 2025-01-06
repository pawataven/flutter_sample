import 'package:button_app/member_login.dart';
import 'package:flutter/material.dart';

class member extends StatelessWidget {
  const member({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("member"),),
      body:  Center(child: Column(
      children: [
       const SizedBox(height: 60,),
       const SizedBox(height: 30,),
       btnlogin(context),
      ],),),
    );
  }
  
  btnlogin(BuildContext ctx) {
    return TextButton(
      onPressed: () => Navigator.push(ctx,
      MaterialPageRoute(builder: (ctx)=> const Memberlogin())), 
      child:  const Text('member login'));
  }
}
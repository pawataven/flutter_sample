import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyGridPage extends StatelessWidget {
  const MyGridPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('GridView.builder'),
      centerTitle: true,
    ),
    body: GridView.builder(
      itemCount: 7,
      padding: const  EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: buildGridTile(context, index),
      ),
    ),
  );

  Widget buildGridTile (BuildContext ctx, int index){
    var rnd = Random();

    return GridTile(
      footer: GridTileBar(
        backgroundColor: const Color.fromARGB(255, 143, 140, 131),
        title: const Text("สินค้า"),
        subtitle: const Text("\${50 + rnd.nextInt(200)}"),
        trailing: InkWell(
          child: const Icon(
            Icons.zoom_in,
            size: 22,
            color: Colors.white,
          ),
          onTap: () {

          },        
          ),
      ),

      child: Image.network("https://picsum.photos/250?random=$index",
      fit: BoxFit.cover,
      ),    
      );
  }
}
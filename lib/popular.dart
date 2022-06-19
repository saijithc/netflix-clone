import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Row(children: [ListView.builder(itemBuilder: (ctx,index){
      return GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,childAspectRatio: 1,crossAxisSpacing: 8,),
      itemCount: 6, itemBuilder: (BuildContext ctx, index){
      return Container(height: MediaQuery.of(context).size.height*0.05,width: MediaQuery.of(context).size.height*0.5,
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/money.jpg'),fit: BoxFit.cover) ),);
      });
    })],),);
  }
}
import 'dart:math';

import 'package:flutter/material.dart';

import 'home.dart';
class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Downloads',),backgroundColor: Colors.black,actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
      IconButton(onPressed: (){}, icon: const Icon(Icons.email_rounded,color: Color.fromARGB(255, 138, 237, 196),))],),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [const Center(child: Text('Introducing Downloads for You',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),  ),
       const SizedBox(height: 15,), const Flexible(child: Padding(
          padding: EdgeInsets.all(15),
          child: Text('We''ll Download a personalized selection of movies and shows for you, so there is always something to watch on your phone.',style: TextStyle(color: Color.fromARGB(255, 183, 179, 179)),),
        )),
         SizedBox(height: MediaQuery.of(context).size.height*0.08),
        Stack(children:[ CircleAvatar(radius: MediaQuery.of(context).size.height*0.2,),
        Transform.rotate(angle: -19*pi/180,
          child: Container(margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.01,top: MediaQuery.of(context).size.height*0.08),
            width: MediaQuery.of(context).size.width*0.4,height:MediaQuery.of(context).size.width*0.6,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.amber,
          image:DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+ Home.trendingmovies[5]['poster_path'],)) ),),
        ),
         Transform.rotate(angle: 18*pi/180,
           child: Container(margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.4,top: MediaQuery.of(context).size.height*0.05),
            width: MediaQuery.of(context).size.width*0.4,height:MediaQuery.of(context).size.width*0.6,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.amber,
            image:DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+ Home.trendingmovies[3]['poster_path'],)) ),),
         ),Container(margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.19,top: MediaQuery.of(context).size.height*0.05),
            width: MediaQuery.of(context).size.width*0.4,height:MediaQuery.of(context).size.width*0.6,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.amber,
            image:DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+ Home.trendingmovies[4]['poster_path'],),fit: BoxFit.fill) ),),
        ],)],));
  }
}
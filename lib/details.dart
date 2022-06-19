
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Details extends StatelessWidget {
   const Details({Key? key, required this.name, required this.description, required this.bannerurl, required this.posterurl, required this.vote, required this.launch_on}) : super(key: key);
  final String name , description ,bannerurl, posterurl, vote, launch_on;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
    body: ListView(children: [SizedBox(height: 250,child: Stack(children: [Positioned(
      child: SizedBox(height: 250,width: MediaQuery.of(context).size.width,
      child: Image.network(bannerurl,fit: BoxFit.cover,),
      )),Positioned(bottom: 10 ,child: Text(' ⭐  Average Rating -'+vote,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),))
      ],),),const SizedBox(height: 10,),
      Container(padding: const EdgeInsets.all(10),
      child: Text(name!=null? name:'Loading..',style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      ),Container(padding: const EdgeInsets.only(left: 15),
      child: Text('Releasing on -'+launch_on,style: const TextStyle(color: Colors.white,fontSize: 15),),),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [Container(margin: const EdgeInsets.only(left: 15,right: 15),height: 150,
        child: Image.network(posterurl),
        ),
        Flexible(child: Text(description,style: const TextStyle(color: Colors.white,fontSize: 15),))],),
      )],),);
  }
}
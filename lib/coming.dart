import 'package:flutter/material.dart';
import 'package:netflix/details.dart';
import 'package:netflix/home.dart';
import 'package:tmdb_api/tmdb_api.dart';


class Coming extends StatefulWidget {
  const Coming({Key? key}) : super(key: key);

  @override
  State<Coming> createState() => _ComingState();
}

class _ComingState extends State<Coming> {
  
    @override



  
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text('Coming Soon',style: TextStyle(color: Colors.white),),actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white, )),
    const CircleAvatar(radius: 12,  backgroundImage: ExactAssetImage('assets/sai.jpg',),),const SizedBox(width: 10,)],),
   body: Container(color: Colors.black,
       height: MediaQuery.of(context).size.height*1,
       width: double.infinity,
       child:    SizedBox(
         child: ListView.builder(itemCount:Home.comingsoon.length,
                 itemBuilder: (BuildContext ctx, index){
                 return Column(children: [Padding(
                   padding: const EdgeInsets.all(10),
                   child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Details(name:Home.comingsoon[index]['title'] ?? 'Loading..',
                       description: Home.comingsoon[index]['overview'] ?? 'Loading..', 
                       bannerurl:'http://image.tmdb.org/t/p/w500'+ Home.comingsoon[index]['backdrop_path']  , 
                        posterurl:  'http://image.tmdb.org/t/p/w500'+ Home.comingsoon[index]['poster_path'],
                         vote:  Home.comingsoon[index]['vote_average']??'Loading..', relese: Home.comingsoon[index]['release_date']??'Loading..')));
                    },
                     child: Container(height: MediaQuery.of(context).size.height*0.27,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+ Home.comingsoon[index]['poster_path'],),
                                      fit: BoxFit.fill
                                      )),
                     ),
                   ),
                 ),],);
     
               }),
       )
     ),
            );
  }
}
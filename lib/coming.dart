import 'package:flutter/material.dart';
import 'package:netflix/details.dart';
import 'package:netflix/home.dart';

import 'package:google_fonts/google_fonts.dart';


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
                 return Column(children: [Row(
                   children: [SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                     Flexible(
                       child: Text(Home.comingsoon[index]['title']??'',style: GoogleFonts.actor(textStyle: TextStyle(color: Colors.white,fontSize:  MediaQuery.of(context).size.width*0.05,
                       
                         fontWeight: FontWeight.w700, letterSpacing: .5)),maxLines: 2,),
                     ),
                   ],
                 ),
                  Padding(
                   padding: const EdgeInsets.all(10),
                   child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Details(name:Home.comingsoon[index]['title'] ?? 'Loading..',
                       description: Home.comingsoon[index]['overview'] ?? 'Loading..', 
                       bannerurl:'http://image.tmdb.org/t/p/w500'+ Home.comingsoon[index]['backdrop_path'] , 
                        posterurl:  'http://image.tmdb.org/t/p/w500'+ Home.comingsoon[index]['poster_path'],
                         vote:  Home.comingsoon[index]['vote_average']??'Loading..', relese: Home.comingsoon[index]['release_date']??'Loading..')));
                    },
                     child: Container(height: MediaQuery.of(context).size.height*0.27,width: MediaQuery.of(context).size.width*0.9,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+ Home.comingsoon[index]['poster_path'],),
                                      fit: BoxFit.fill
                                      )),
                     ),
                   ),
                 ),Row(
                   children: [SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                     Flexible(child: Text( Home.comingsoon[index]['overview']??'Loading..' ,style: GoogleFonts.aBeeZee(textStyle: const TextStyle(color: Colors.white,overflow: TextOverflow.ellipsis)),maxLines: 2,)),
                   ],
                 ),SizedBox(height: MediaQuery.of(context).size.height*0.05,)],);
     
               }),
       )
     ),
            );
  }
}
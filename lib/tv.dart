import 'package:flutter/material.dart';

import 'details.dart';
import 'home.dart';

class TvScreen extends StatelessWidget {
  const TvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(color: Colors.black,
              height: MediaQuery.of(context).size.height*0.3,
              child:    SizedBox(
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: Home.tv.length,
                        itemBuilder: (BuildContext ctx, index){
                        return Padding(
                          padding: const EdgeInsets.only(top:8 ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Details(name: Home.tv[index]['title']??'Loading', description:Home.tv[index]['overview']??'' , bannerurl:  'http://image.tmdb.org/t/p/w500'+ Home.tv[index]['backdrop_path'],
                                   posterurl:  'http://image.tmdb.org/t/p/w500'+ Home.tv[index]['poster_path'], vote:  Home.tv[index]['vote_average']??'Loading..', relese: Home.tv[index]['first_air_date']??'Loading..')
                                    ));
                                },
                                child: Container(height: MediaQuery.of(context).size.height*0.26,width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+ Home.tv[index]['poster_path']))),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
              )            
            );
  }
}
import 'package:flutter/material.dart';
import 'package:netflix/details.dart';
import 'package:netflix/home.dart';

class Listshowing extends StatefulWidget {
   Listshowing({Key? key ,required this.list,required this.date,required this.name,required this.width,required this.height}) : super(key: key);
dynamic list = [];
dynamic date;
String name;
dynamic width,height;
  @override
  State<Listshowing> createState() => _Listshowing();
}

class _Listshowing extends State<Listshowing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      color: Colors.black,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Home.trendingmovies.length,
          itemBuilder: (BuildContext ctx, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => Details(
                                name: widget.list[index][widget.name] ?? '',
                                description:widget.list[index]
                                        ['overview'] ??
                                    'Loading..',
                                bannerurl: 'http://image.tmdb.org/t/p/w500' +
                                   widget.list[index]['backdrop_path'],
                                posterurl: 'http://image.tmdb.org/t/p/w500' +
                                   widget.list[index]['poster_path'],
                                relese:widget.list[index]
                                        [widget.date] ??
                                    'coming soon',
                                vote: widget.list[index]
                                        ['vote_average'] ??
                                    'Loading..',
                                //  vote: Home.trendingmovies[index]['vote_average']??'Loading',
                                //  launch_on:  Home.trendingmovies[index]['release_date']?? 'Loading..'.toString()
                              )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        height: MediaQuery.of(context).size.height *widget.height,
                        width: MediaQuery.of(context).size.width * widget.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://image.tmdb.org/t/p/w500' +
                                       widget.list[index]
                                            ['poster_path']),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                  // SizedBox(height: MediaQuery.of(context).size.height*0.02,
                  //   child: Text( Home.trendingmovies[index]['title'] ?? 'Loading..',style: const TextStyle(color: Colors.white,overflow: TextOverflow.ellipsis)),)
                ],
              ),
            );
          }),
    );
  }
}

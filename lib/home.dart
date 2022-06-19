

import 'package:flutter/material.dart';
import 'package:netflix/details.dart';
import 'package:tmdb_api/tmdb_api.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  List trendingmovies =[];
  final String apikey = '6b90848ea929bdd3ea1c08df1ad1f331';
  final readaccesstoken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YjkwODQ4ZWE5MjliZGQzZWExYzA4ZGYxYWQxZjMzMSIsInN1YiI6IjYyYWQ4ODYxMGQ5ZjVhMDA5NDIxYTdlNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ggODArE8MFRBCcvWxQYXCKsQYo98yeN6aA4L4HezaZc';
  List topratedmovies = [];
  List tv = [];
  @override
  void initState() {
    loadmovies();
    super.initState(); 
  }
 loadmovies()async{
 TMDB tmdbWithCustomeLogs = TMDB(ApiKeys(apikey, readaccesstoken),logConfig: const ConfigLogger(showLogs: true,showErrorLogs: true));
 Map trendingresults = await tmdbWithCustomeLogs.v3.trending.getTrending();
 Map topratedresults = await tmdbWithCustomeLogs.v3.movies.getTopRated();
 Map tvresuls = await tmdbWithCustomeLogs.v3.tv.getPopular();
setState(() {
  trendingmovies = trendingresults['results'];
  topratedmovies = topratedresults['results'];
  tv = tvresuls['results'];
});
// print(trendingmovies);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
     CustomScrollView(
        slivers: <Widget>[
           SliverAppBar(backgroundColor: Colors.transparent,
            actions: [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('TVShows',style: TextStyle(fontSize: 10),),Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.19,right:MediaQuery.of(context).size.width*0.19 ),
                    child: const Text('Movies',style: TextStyle(fontSize: 10)),
                  ),TextButton(onPressed:() {}, child: Row(children:  [const Text('Categories',style: TextStyle(fontSize: 10,color: Colors.white)),Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.09),
                    child: const Icon(Icons.arrow_drop_down,color: Colors.white,),
                  )],))
                ],
              ),],
            pinned: true,
            snap:false,
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height*0.6,
            flexibleSpace: FlexibleSpaceBar(titlePadding: const EdgeInsets.only(top: 5),
          
              centerTitle: true,
              background: Container(child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [Row(children: [Padding(
                padding:  EdgeInsets.only(bottom:MediaQuery.of(context).size.height*0.4 ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: MediaQuery.of(context).size.height*0.06,width: MediaQuery.of(context).size.width*0.06,decoration: const BoxDecoration(color: Colors.transparent,image:DecorationImage(image: AssetImage('assets/download.png')) ),),
                  Padding(
                    padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.7  ),
                    child: TextButton(onPressed: (){}, child: Row(children: [const Icon(Icons.search,color: Colors.white,),Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03),
                      child: const CircleAvatar(radius: 12,  backgroundImage: ExactAssetImage('assets/sai.jpg')),
                    ),],)),
                  )],
                ), 
              ),
              ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children:  const [
                Text('Offbeat -',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)),),Text( 'psychology -',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)) ),Text('Cyberpunk -',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226) )),Text('Twist & Turns',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)) )],),
             const SizedBox(height: 10,), Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.end, children: [Column(children: const [Icon(Icons.add,color: Colors.white,),Text('My List',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)) ),],),
              ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white), onPressed: (){}, child: Row(children: const [Icon(Icons.play_arrow ,color: Colors.black,),Text('Play',style: TextStyle(color: Color.fromARGB(255, 16, 16, 16)) )],)),
              Row(children: [Column(children: const [Icon(Icons.info_outline,color: Colors.white,),Text('info',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)) )],)],) ],)], ),
                width: double.infinity,height: MediaQuery.of(context).size.height*0.15,decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/stranger.jpg'),fit: BoxFit.cover)),),
            ),
          ),
   //<<<<<<<<.........................T.R.E.N.D.I.N.G....................>>>>>/////       
           SliverToBoxAdapter(
            child: Container(
              height: 45,color: Colors.black,
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Trending Now',style: TextStyle(color: Colors.white,fontSize:  MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
            ),
          ),
           SliverToBoxAdapter(
            child: Container(color: Colors.black,
              height: MediaQuery.of(context).size.height*0.3,
              child:    SizedBox(
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: trendingmovies.length,
                        itemBuilder: (BuildContext ctx, index){
                        return Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Column(
                            children: [
                              InkWell(onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder:(ctx)=>Details(name: trendingmovies[index]['title'], description:trendingmovies[index]['overview'] , bannerurl: 'http://image.tmdb.org/t/p/w500'+trendingmovies[index]['backdrop_path'], posterurl:'http://image.tmdb.org/t/p/w500'+trendingmovies[index]['poster_path'] , vote: trendingmovies[index]['vote_average'].toString(), launch_on: trendingmovies[index]['release_date']) ));},
                                child: Container(height: MediaQuery.of(context).size.height*0.26,width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+trendingmovies[index]['poster_path'],),
                                // fit: BoxFit.fill
                                )),
                                ),
                              ),SizedBox(height: MediaQuery.of(context).size.height*0.02,
                                child: Text(trendingmovies[index]['title'] ?? 'Loading..',style: const TextStyle(color: Colors.white),),)
                            ],
                          ),
                        );
                      }),
              )
            ),
          ),
     //<<<<<<<<..................E.N.D.I.N.G.......T.R.E.N.D.I.N.G....................>>>>>/////    
//---------------------------------------------------------------------------------------------/////
     //<<<<<<<<.........................T.O.P....R.A.T.E.D.....................>>>>>/////       
            SliverToBoxAdapter(
            child: Container(
              height: 35,color: Colors.black,
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Top Rated',style: TextStyle(color: Colors.white,fontSize:  MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
            ),
          ), SliverToBoxAdapter(
            child: Container(color: Colors.black,
              height: MediaQuery.of(context).size.height*0.3,
              child:    SizedBox(
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: topratedmovies.length,
                        itemBuilder: (BuildContext ctx, index){
                        return Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Details(name: topratedmovies[index]['title'], description: topratedmovies[index]['overview'],
                                   bannerurl: 'http://image.tmdb.org/t/p/w500'+topratedmovies[index]['backdrop_path'], posterurl:  'http://image.tmdb.org/t/p/w500'+topratedmovies[index]['poster_path'], vote: topratedmovies[index]['vote_average'].toString(), launch_on:  topratedmovies[index]['release_date'])));
                                },
                                child: Container(height: MediaQuery.of(context).size.height*0.26,width: MediaQuery.of(context).size.width*0.45,
                                // child: Image.asset('assets/money.jpg',fit: BoxFit.cover,),
                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+topratedmovies[index]['poster_path']))),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.02,width: MediaQuery.of(context).size.height*0.2,
                                child: Text(topratedmovies[index]['title'] ?? 'Loading..',style: const TextStyle(color: Colors.white,),),)
                            ],
                          ),
                        );
                      }),
              )            
            ),
          ), 
     //<<<<<<<<......................E.N.D.I.N.G...T.O.P....R.A.T.E.D.....................>>>>>/////  
     
     //----------------------------------------------------------------------------------------////
     
     //<<<<<.........................T.V...S.H.O.W.S..........................>>>>>>>////      
           SliverToBoxAdapter(
            child: Container(
              height: 35,color: Colors.black,
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('TV Shows',style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
            ),
          ), SliverToBoxAdapter(
            child: Container(color: Colors.black,
              height: MediaQuery.of(context).size.height*0.3,
              child:    SizedBox(
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: tv.length,
                        itemBuilder: (BuildContext ctx, index){
                        return Padding(
                          padding: const EdgeInsets.only(top:8 ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Details(name: tv[index]['title'], description: tv[index]['overview'],
                                   bannerurl: 'http://image.tmdb.org/t/p/w500'+tv[index]['backdrop_path'], posterurl: 'http://image.tmdb.org/t/p/w500'+tv[index]['poster_path'], vote: tv[index]['vote_average'].toString(), launch_on: tv[index]['release_date'])));
                                },
                                child: Container(height: MediaQuery.of(context).size.height*0.26,width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+tv[index]['poster_path']))),
                                ),
                              ),SizedBox(height: MediaQuery.of(context).size.height*0.02,
                                child: Text(tv[index]['original_name'] ?? 'Loading..',style: const TextStyle(color: Colors.white),),)
                            ],
                          ),
                        );
                      }),
              )            
            ),
          ),
     //<<<<<.....................E.N.D.I.N.G....T.V...S.H.O.W.S..........................>>>>>>>////          
        ],
      ),
      );
  }
}
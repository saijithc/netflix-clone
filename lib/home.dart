import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                  ),TextButton(onPressed:() {}, child: Row(children:  [Text('Categories',style: TextStyle(fontSize: 10,color: Colors.white)),Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.09),
                    child: Icon(Icons.arrow_drop_down,color: Colors.white,),
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
                    Container(height: MediaQuery.of(context).size.height*0.06,width: MediaQuery.of(context).size.width*0.06,decoration: BoxDecoration(color: Colors.transparent,image:DecorationImage(image: AssetImage('assets/download.png')) ),),
                  Padding(
                    padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.7  ),
                    child: TextButton(onPressed: (){}, child: Row(children: [Icon(Icons.search,color: Colors.white,),Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03),
                      child: const CircleAvatar(radius: 12,  backgroundImage: ExactAssetImage('assets/sai.jpg')),
                    ),],)),
                  )],
                ),
                
              ),
              ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children:  [
                Text('Offbeat -',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)),),Text( 'psychology -',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)) ),Text('Cyberpunk -',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226) )),Text('Twist & Turns',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)) )],),
             SizedBox(height: 10,), Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.end, children: [Column(children: [Icon(Icons.add,color: Colors.white,),Text('My List',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)) ),],),
              ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white), onPressed: (){}, child: Row(children: [Icon(Icons.play_arrow ,color: Colors.black,),Text('Play',style: TextStyle(color: Color.fromARGB(255, 16, 16, 16)) )],)),
              Row(children: [Column(children: [Icon(Icons.info_outline,color: Colors.white,),Text('info',style: TextStyle(color: Color.fromARGB(255, 235, 226, 226)) )],)],) ],)], ),
                width: double.infinity,height: MediaQuery.of(context).size.height*0.15,decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/stranger.jpg'),fit: BoxFit.cover)),),
            ),
          ),
           SliverToBoxAdapter(
            child: Container(
              height: 20,color: Colors.black,
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Popular on Netflix',style: TextStyle(color: Colors.white,fontSize:  MediaQuery.of(context).size.width*0.04),),
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
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 10,
                        itemBuilder: (BuildContext ctx, index){

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(height: MediaQuery.of(context).size.height*0.09,width: MediaQuery.of(context).size.width*0.5,child: Image.asset('assets/money.jpg',fit: BoxFit.cover,),),
                        );
                      }),
              )
             
            ),
          ),
            SliverToBoxAdapter(
            child: Container(
              height: 20,color: Colors.black,
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Trending Now',style: TextStyle(color: Colors.white,fontSize:  MediaQuery.of(context).size.width*0.04),),
                    ),
                  ],
                ),
              ),
            ),
          ), SliverToBoxAdapter(
            child: Container(color: Colors.black,
              height: MediaQuery.of(context).size.height*0.3,
              child:    SizedBox(
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 10,
                        itemBuilder: (BuildContext ctx, index){

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(height: MediaQuery.of(context).size.height*0.09,width: MediaQuery.of(context).size.width*0.5,child: Image.asset('assets/money.jpg',fit: BoxFit.cover,),),
                        );
                      }),
              )
             
            ),
          ),  SliverToBoxAdapter(
            child: Container(
              height: 20,color: Colors.black,
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Only on Netflix',style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.04),),
                    ),
                  ],
                ),
              ),
            ),
          ), SliverToBoxAdapter(
            child: Container(color: Colors.black,
              height: MediaQuery.of(context).size.height*0.3,
              child:    SizedBox(
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 10,
                        itemBuilder: (BuildContext ctx, index){

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(height: MediaQuery.of(context).size.height*0.09,width: MediaQuery.of(context).size.width*0.5,child: Image.asset('assets/money.jpg',fit: BoxFit.cover,),),
                        );
                      }),
              )
             
            ),
          ),
       
        ],
      ),
      );
  }
}
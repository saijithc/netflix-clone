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
            child: Container(color: Colors.black,
              height: MediaQuery.of(context).size.width*0.11,
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03,top: MediaQuery.of(context).size.width*0.02),
                      child: const Text('Popular on Netflix',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(decoration: BoxDecoration(color: Colors.black),
                      
                      height: 200.0,
                      child: Center(
                        child: Text('hei', textScaleFactor: 5),
                      ),
                    ),Container(decoration: BoxDecoration(color: Color.fromARGB(255, 167, 106, 106)),
                      
                      height: 200.0,
                      child: Center(
                        child: Text('hei', textScaleFactor: 5),
                      ),),Container(decoration: BoxDecoration(color: Colors.black),
                      
                      height: 200.0,
                      child: Center(
                        child: Text('hei', textScaleFactor: 5),
                      ),
                    ),
                      Container(decoration: BoxDecoration(color: Color.fromARGB(255, 249, 87, 87)),
                      
                      height: 200.0,
                      child: Center(
                        child: Text('hei', textScaleFactor: 5),
                      ),)
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      );
  }
}
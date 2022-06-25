import 'package:flutter/material.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Downloads',),backgroundColor: Colors.black,actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      IconButton(onPressed: (){}, icon: const Icon(Icons.email_rounded,color: Color.fromARGB(255, 138, 237, 196),))],),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [const Center(child: Text('Introducing Downloads for You',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),  ),
       const SizedBox(height: 15,), const Flexible(child: Padding(
          padding: EdgeInsets.all(15),
          child: Text('We''ll Download a personalized selection of movies and shows for you, so there is always something to watch on your phone.',style: TextStyle(color: Color.fromARGB(255, 183, 179, 179)),),
        )),
        const SizedBox(height: 25,),
        Stack(children:[ CircleAvatar(radius: MediaQuery.of(context).size.height*0.18,)
        ],)],));
  }
}
import 'package:flutter/material.dart';
import 'package:netflix/coming.dart';
import 'package:netflix/download.dart';
import 'package:netflix/fastLaugh.dart';
import 'package:netflix/home.dart';

class Bottom extends StatefulWidget {
 const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();

}

class _BottomState extends State<Bottom> {
  final List pages=[const Home(),const Coming(),const FastLaugh(),const Downloads()];
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,resizeToAvoidBottomInset: false,body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,unselectedItemColor: Colors.white38,
        currentIndex: _currentIndex,onTap: (newIndex){
        setState(() {
          _currentIndex = newIndex;
        });
      },
        items: const [
      BottomNavigationBarItem(backgroundColor: Colors.black,icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),backgroundColor: Colors.black,label: 'Coming Soon'),
      BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions_outlined),backgroundColor: Colors.black,label: 'Fast Laughs'),
      BottomNavigationBarItem(icon: Icon(Icons.download_for_offline_outlined),backgroundColor: Colors.black,label: 'Downloads')
    ]),);
  }
}
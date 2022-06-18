import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationBar(items: const [
      BottomNavigationBarItem(backgroundColor: Colors.black,icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),backgroundColor: Colors.black,label: 'Coming Soon'),
      BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions_outlined),backgroundColor: Colors.black,label: 'Fast Laughs'),
      BottomNavigationBarItem(icon: Icon(Icons.download_for_offline_outlined),backgroundColor: Colors.black,label: 'Downloads')
    ]),);
  }
}
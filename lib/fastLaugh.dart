

import 'package:flutter/widgets.dart';

class Fastlaugh extends StatelessWidget {
  const Fastlaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/intros.gif')))
      );
  }
}
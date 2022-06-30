import 'package:netflix/home.dart';
class IndexChanging  {
 static  int? number; 

   static Future getnumvalue(int k)async{
    final length=Home.trendingmovies.length;
    for (int i =k; i < length; i++) {
   await Future.delayed(const Duration(seconds: 1));
    IndexChanging.number=i;   
    if(i==length){
      i=0;
      
    }
    }
    return number;
  }
}

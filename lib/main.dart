import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:Home()
    )
  );
}


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
       title: Text("Harel Moshayof"),
       centerTitle: true,
       backgroundColor: Colors.blue,
     ),
     body: Row(
       children: [
         SizedBox(width: 30,),
         Column(
           children: [
             SizedBox(height: 30,),
             Row(
               children: [

                 CircleAvatar(
                   backgroundImage: AssetImage("Assets/me.png"),
                   radius: 80.0,
                 ),
               ],
             ),
          SizedBox(height: 20,),
             Row(

               children: [
                 Icon(Icons.school),
                 SizedBox(width: 5,),
                 Text("Education",
                 style: TextStyle(
                   fontSize: 20.0,
                 ),
                 ),
               ],
             ),
             Row(
               children: [
                 SizedBox(width: 30,),
                 Text("2019-Present , software and information system engineering in BGU\n"
                     +"2018-19 Pre-Academic program for engineers of BGU\n"+
                     "2016, CCNA( Cisco Certified Network Associate) course and certification\n"
                     "2015, Satellite communication engineering\n"+
                     "2015, Microsoft Office 2013 course\n"+
                     "2015 Radio communication course by Ceragon\n"+
                     "2013 , Network technician course 1600 of Hoshen\n"+
                     "2013 , Graduate of Alonim project\n"+
                     "2009-2013,majored in chemistry and Robotics , high school diploma\n"
                     ),
               ],
             )

           ],
           crossAxisAlignment: CrossAxisAlignment.start,

         ),
       ],
     ),
   );


  }

}
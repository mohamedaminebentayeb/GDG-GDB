import 'package:flutter/material.dart';

import 'package:flutter_application_1/loading_page.dart';
class Showimage extends StatefulWidget {
  const Showimage({ Key? key }) : super(key: key);

  @override
  _ShowimageState createState() => _ShowimageState();
}

class _ShowimageState extends State<Showimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                    backgroundColor:Color.fromARGB(255, 3, 11, 122),
                     centerTitle: true,
                        title:  Column( 
                                  children : [
                                   Text("Show images" ,  style: TextStyle(color: Colors.white),)
                                  ]

                          )
                   ),
                                       backgroundColor:Color.fromARGB(255, 3, 11, 122),

               body : Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    /* FutureBuilder(
                                future: downloadURL('16392542_303.jpg'),
                                    builder: (BuildContext context,
                                     AsyncSnapshot<String> snapshot) {
                                      if (snapshot.hasError) {
                                     return Text('Something went wrong');
                                      }

                                   if (snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData) {
                                           return Loading();
                                           }
                                   if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                                           return Container(
                                            // width: 100,
                                             //height: 250,
                                             child:Image.network(snapshot.data!, fit :BoxFit.cover
                                             ,)
                                          );} 
                         return Container();

                                  }

                     ),*/
    
                   ],



                 ),
               ),
      
    );
  }
}
downloadURL(String imageName) async {


  // Within your widgets:
  // Image.network(downloadURL);
}
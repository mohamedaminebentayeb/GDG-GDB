import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/loading_page.dart';

class ShowData extends StatefulWidget {
  @override
    _ShowDataState createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  
  
  @override
  Widget build(BuildContext context) {
  
    return Container();
  }
}
class ClassementCard extends StatelessWidget {
  final String fullname;
  final String team;
  ClassementCard({
    //required Key key,
    this.fullname: "loading",
    
    this.team : "loading",
    
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color:Color.fromARGB(255, 240, 159, 11),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Row(
                children: [
                  
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: AutoSizeText(
                            'Full name  : $fullname',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: AutoSizeText(
                           'Team : $team ',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                          
                      
                         
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}
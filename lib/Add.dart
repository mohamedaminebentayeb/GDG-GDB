
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/TextInput.dart';
const myRed = Color.fromARGB(255, 3, 11, 122);
const myRed2 = Color.fromARGB(255, 3, 14, 158);

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> { 
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
 
  final _formKey = GlobalKey<FormState>();
    return Container(
      child: Scaffold(
        appBar: AppBar(
                    backgroundColor:Color.fromARGB(255, 3, 11, 122),
                     centerTitle: true,
                        title:  Column( 
                                  children : [
                                   Text("Add Data" ,  style: TextStyle(color: Colors.white),)
                                  ]

                          )
                   ),
        
      backgroundColor:Color.fromARGB(255, 3, 11, 122) ,  
          body: Center(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
   
             
                 Stack(
                    alignment: AlignmentDirectional.center,              
                    clipBehavior: Clip.none,
                    children :[  
                   LogCard(
                      formKey: _formKey,
                    ),
                    ],
                 
            ),
              
             ],
          ),
           )
      
    )
    );
       
      
     
   
  }
}

// ignore: must_be_immutable
class LogCard extends StatefulWidget {
  LogCard({
    Key? key,
    required this.formKey,
  }) : super(key: key);
  
  GlobalKey<FormState> formKey;

  @override
  _LogCardState createState() => _LogCardState();
}

class _LogCardState extends State<LogCard> {
    
     addUser(fullname , team  , id) {
      
    }
  late TextEditingController _fullname;
  late TextEditingController _team;
  late TextEditingController _id;

  @override
  void initState() {
    super.initState();
    _fullname = TextEditingController();
    _team = TextEditingController();
    _id = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding:const EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: widget.formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextForm(
                  labelText: 'Full name',
                  controller: _fullname,
                   
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextForm(
                  labelText: 'Team',
                  controller: _team,
                 
                   
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextForm(
                  labelText: 'ID',
                  controller: _id,
                   
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        child: Text(
                          "Add data",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          
                      addUser(_fullname.text , _team.text , _id.text);

                          
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          backgroundColor: myRed,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: myRed,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        color: Colors.white,
      ),
    );
    
  }
   void Showflash(message)
  {

   showFlash(
          context: context,
          duration: const Duration(seconds: 2),
          builder: (context, controller) {
            return Flash.dialog(
                controller: controller,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                backgroundGradient: LinearGradient(colors: [myRed, myRed]),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                       message,

                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        backgroundColor: myRed),
                  ),
                ));
          });


  }
  }
 
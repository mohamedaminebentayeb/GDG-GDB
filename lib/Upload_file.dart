
import 'dart:io';

import 'package:flash/flash.dart';
import 'package:flutter_application_1/SignIn.dart';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
class UploadFile extends StatefulWidget {
  const UploadFile({ Key? key }) : super(key: key);

  @override
  _UploadFileState createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  @override
  Widget build(BuildContext context) {
    
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
     Future<void> uploadFile( filePath ,  filename) async {

    
}
    
    return Scaffold(
         appBar: AppBar(
                    backgroundColor:Color.fromARGB(255, 3, 11, 122),
                     centerTitle: true,
                        title:  Column( 
                                  children : [
                                   Text("Upload image" ,  style: TextStyle(color: Colors.white),)
                                  ]

                          )
                   ),
                             backgroundColor:Color.fromARGB(255, 3, 11, 122) ,

                   body : Column(
                     
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       
                             Center(
                                  child : ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                                      primary: Color.fromARGB(255, 240, 159, 11),
                                                         minimumSize: const Size(200, 50),
                                                         maximumSize: const Size(200, 50),
                                    ),
                                    onPressed: ()async{
                                  FilePickerResult? result = await FilePicker.platform.pickFiles(
                                           type: FileType.custom,
                                           allowedExtensions: ['jpg', 'jpeg'],
                                        );
                                        if(result != null)
                                        {

                                            final  filepath  = result.files.first.bytes;


                                            final filename =result.files.single.name;
                                            uploadFile(filepath , filename);

                                        }
                                        else{Showflash('no file selected');
                                        return null;}






                                    },
                                    child : Text(' upload file'),
                                  )



                             ),
                          ],
                   )
      
    );
    
  }

}



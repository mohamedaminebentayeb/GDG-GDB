import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/loading_page.dart';

class ShowSpecifiedData extends StatelessWidget {
  final String documentId;               /// id of document you can get it from database
 
  ShowSpecifiedData(this.documentId);

  @override
  Widget build(BuildContext context) {
   

        return Loading();
     
  }
}
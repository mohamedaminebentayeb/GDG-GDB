

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Add.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/ShowImageName.dart';
import 'package:flutter_application_1/Storage.dart';
import 'package:flutter_application_1/Update_data.dart';
import 'package:flutter_application_1/authentification.dart';
import 'package:flutter_application_1/cloufirestore.dart';
import 'package:flutter_application_1/logIn.dart';
import 'package:flutter_application_1/remove.dart';
import 'package:flutter_application_1/showdata.dart';
import 'package:flutter_application_1/showimage.dart';
import 'package:flutter_application_1/splashscreen.dart';

import 'Upload file.dart';
void main()async  {
  
   
 runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Gotham', //setting default font
//primaryColor: myBlue,
      // 0xffe6023d
      // to change calendar color
      //primarySwatch: calendarColor,
                    backgroundColor: Colors.yellow,

    ),
    initialRoute: '/home', // initialisation de la route
    routes: {
      
  '/inscription': (context) =>
          authentificate(), // definition eds autres routes
     
      '/splashscreen': (context) =>
           SplashScreen(),
       '/login': (context) =>
          Login(),
        '/cloudfirebase': (context) =>
          CloudFirebase(),
          '/storage' :(context) =>
          Storage(),
          '/home' : (context) =>
          HomePage(),
          '/adddata' :(context) =>AddData(),  
          '/showdata' :(context) => ShowData(),
          '/remove' :(context)=> RemoveData(),
          '/update' :(context) =>UpdateData(),
          '/upload' : (context) => UploadFile(),
          '/ShowImageName' : (context) => ShowImageName(),
          '/Showimage' : (context) => Showimage(),
    },
  ));}



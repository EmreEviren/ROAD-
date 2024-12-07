import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';


class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        //width: double.infinity,
        child: Column(
          children: [
            // Logo bölümü
            Expanded(
              child: Container(

                child: Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 300 ,
                  fit: BoxFit.contain,
                ),
              ),
            ),




           InkWell(
             onTap: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) =>  HomeScreen()),
               );
             },
             child:
             CircularProgressIndicator(
               color: Color.fromARGB(255, 29,53,87)

           ),
           ),

            // Yükleniyor yazısı




         

          ],
        ),
      ),
    );
  }
}
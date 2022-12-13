import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTitle extends StatelessWidget {
  final String urlImage;
  final String name;
  final double price;
  final String dec;
  const CoffeeTitle({super.key, required this.urlImage, required this.name, required this.price, required this.dec});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54 ,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Expanded(
                
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    urlImage,
                    height: 90,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.bebasNeue(fontSize: 25),
                  ),
                  SizedBox(height: 3,),
                  Text(
                    dec,
                    style: TextStyle(color:Colors.grey[600]),
                  )
                ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$'+price.toString()),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: FaIcon(FontAwesomeIcons.plus , size: 16,),
                  )
                ],
              ),
            )
            
          ]
        ),
      ),
    );
  }
}
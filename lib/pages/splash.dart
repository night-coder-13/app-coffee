import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/coffee.png')),
          Container(
            margin: EdgeInsets.only(top: 3),
            child: Text(
              'Coffee Land',
              style: GoogleFonts.cookie(
                textStyle: TextStyle(color: Colors.black , fontSize: 20.0, decoration: TextDecoration.none)
              )  
            ),
          ),
        ],
      )
    );
  }
}
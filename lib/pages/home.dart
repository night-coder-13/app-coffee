import 'package:caffe/util/coffee_tile.dart';
import 'package:caffe/util/coffee_type.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeType =[
    [
      'Cappucino',
      true
    ],
    [
      'Latte',
      false
    ],
    [
      'Black',
      false
    ],
    [
      'sperso',
      false
    ],
    [
      'chocolate',
      false
    ],
  ];

  void coffeeTypeSlected(int index){
    setState((){
      for(int i=0;i<coffeeType.length ; i++){
        coffeeType[i][1]=false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) =>WillPopScope(child: 
    Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(25.0),
          child: FaIcon(FontAwesomeIcons.bars,size: 25,),
        ),
        actions: [
          // Image.asset('assets/coffee.png')
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: 
            Image.asset('assets/coffee.png'),
            // FaIcon(FontAwesomeIcons.user,size: 25,),
          )
        ],
      ),
      bottomNavigationBar: 
      CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.orange,
        color: Colors.grey.shade800,
        height: 55,
        items: <Widget>[
          FaIcon(FontAwesomeIcons.home,size: 24,color: Colors.white,),
          FaIcon(FontAwesomeIcons.heart,size: 24,color: Colors.white,),
          FaIcon(FontAwesomeIcons.cartShopping,size: 24,color: Colors.white,),
          FaIcon(FontAwesomeIcons.bell,size: 24,color: Colors.white,),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      
      // Padding(
      //   padding: EdgeInsets.only(left:8,right: 8,top: 8),
      //   child: BottomNavigationBar(items: const [
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.home,size: 24,),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.cartPlus,size: 24,),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.heart,size: 24,),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.bell,size: 24,),
      //       label: ''
      //     ),
          
      //   ],backgroundColor: Colors.transparent,selectedItemColor: Colors.orange,elevation: 0,),
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0 , vertical: 3.0),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(
                fontSize: 53
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: FaIcon(FontAwesomeIcons.search , size: 20,),
                ),
                hintText: 'Find your coffee..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)
                )
              ),
            ),
          ),
          SizedBox(height: 25,),

          Container(
            height: 50,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: coffeeType.length,
              itemBuilder: (context,index){
                return CoffeeType(
                    coffeeType: coffeeType[index][0],
                    isSelected: coffeeType[index][1],
                    onTap: () {
                      coffeeTypeSlected(index);
                    },
                  );
              },
              scrollDirection: Axis.horizontal,
              
            ),
          ),

          
          Expanded(
            child: GridView.count(
              // physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              primary: false,
              childAspectRatio: 0.75,
              // MediaQuery.of(context).size.width /
              // (MediaQuery.of(context).size.height /1.35),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                CoffeeTitle(dec: 'With Almin Milk', name: 'Latte', price: 54.25, urlImage: 'assets/e.jpg',),
                CoffeeTitle(dec: 'With Almin Milk', name: 'Cappuccino', price: 84.17, urlImage: 'assets/cup.jpg',),
                CoffeeTitle(dec: 'With Almin Coffee', name: 'Espresso', price: 24.25, urlImage: 'assets/espresso.jpg',),
                CoffeeTitle(dec: 'With Almin Milk', name: 'hot chocolate', price: 54.30, urlImage: 'assets/hot.jpg',),
                CoffeeTitle(dec: 'With Almin Milk', name: 'Cafe Glace', price: 65.00, urlImage: 'assets/cuf.jpg',),
              ],
          
            ),
          ),


          // Expanded(child: 
          //   ListView(
          //     // scrollDirection: Axis.horizontal,
          //     children: [
                
          //     ],
          //   )
          // )

        ],
      ),
    )
  , onWillPop: () async {
    print('Back');
    return true;
  });
    
}
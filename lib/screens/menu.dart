// ignore_for_file: prefer_const_constructors
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use
// ignore_for_file: unused_local_variable
// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:restaurant_app/pallete.dart';
import 'package:restaurant_app/screens/checkout.dart';
import 'package:restaurant_app/widget/clipper.dart';
import 'package:restaurant_app/widget/index_1.dart';
import 'package:restaurant_app/widget/index_2.dart';
import 'package:restaurant_app/widget/recommended.dart';
import 'package:unicons/unicons.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  void tapped(int index) {
    if (index == 0) {
      Navigator.of(context).push(NavIndexSatu());
    } else if (index == 1) {
      Navigator.of(context).push(NavIndexDua());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTelu,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
        ),
      ),
      body: CustomBody(),
    );
  }

  Widget CustomBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              // custom app bar
              ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  width: size.width,
                  height: 370,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),

              ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  width: size.width,
                  height: 195,
                  decoration: BoxDecoration(
                    color: colorSiji,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),

              // custom app bar
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // heading text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deliver to',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Tulangan, ID',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),

                        // cart button
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 65,
                              height: 35,
                              decoration: BoxDecoration(
                                color: colorLoro,
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    UniconsLine.shopping_cart,
                                    color: colorSiji,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    '9',
                                    style: GoogleFonts.poppins(
                                      color: colorSiji,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // search field
                    SizedBox(height: 20),
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colorSijiSetengah,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.only(top: 10),
                          hintText: 'Search for something tasty...',
                          hintStyle: GoogleFonts.poppins(color: Colors.grey),
                          prefixIcon: Icon(
                            UniconsLine.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),

                    // widget tengah
                    SizedBox(height: 30),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(255, 209, 209, 209),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(Iconsax.repeat5),
                              SizedBox(width: 15),
                              Text(
                                'Repeat last order',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(255, 209, 209, 209),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(Iconsax.message_question),
                              SizedBox(width: 15),
                              Text(
                                'Help me choose',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: size.width,
                          height: 50,
                          child: Row(
                            children: [
                              Icon(Iconsax.reserve5),
                              SizedBox(width: 15),
                              Text(
                                'Surprise me',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Top categories
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Categories',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: 90,
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'View all',
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(UniconsLine.arrow_right, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // content top categories
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: SizedBox(
              height: 45,
              width: size.width,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('vegan');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.leaf, color: Colors.green),
                          SizedBox(width: 10),
                          Text(
                            'Vegan',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('Beef');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.bowlFood,
                              color: Colors.deepOrange),
                          SizedBox(width: 10),
                          Text(
                            'Beef',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('coffe');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_drink_sharp, color: Colors.brown),
                          SizedBox(width: 10),
                          Text(
                            'Coffe',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('Donuts');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.donut_small, color: Colors.pink),
                          SizedBox(width: 10),
                          Text(
                            'Donuts',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('Ice Cream');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.icecream, color: Colors.orange),
                          SizedBox(width: 5),
                          Text(
                            'Cream',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),

          // Recommended
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: 90,
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'View all',
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(UniconsLine.arrow_right, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // content recommeded
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                mainAxisExtent: 210,
              ),
              itemCount: gridContentRecommended.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => tapped(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            "${gridContentRecommended.elementAt(index)['images']}",
                            height: 120,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 15),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${gridContentRecommended.elementAt(index)['judul']}",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${gridContentRecommended.elementAt(index)['harga']}",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(width: 45),
                                  Icon(CupertinoIcons.heart, color: Colors.red),
                                  Icon(Icons.shopping_cart_checkout),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


// Animate Navigate Hehe 
Route NavIndexSatu() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const IndexSatu(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 0.5);
      const end = Offset.zero;
      const curve = Curves.easeOutQuint;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

// Animate Navigate Hehe 
Route NavIndexDua() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const IndexDua(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 0.5);
      const end = Offset.zero;
      const curve = Curves.easeOutQuint;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

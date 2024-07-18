import 'package:fit/view/exercise/parts/Arm/Bicep/bicep.dart';
import 'package:fit/view/exercise/parts/Arm/Shoulders/shoulder.dart';
import 'package:fit/view/exercise/parts/Arm/tricep/tricep.dart';
import 'package:fit/view/exercise/parts/abs/crunches.dart';
import 'package:fit/view/exercise/parts/abs/jumping_jack_view.dart';
import 'package:fit/view/exercise/parts/abs/legRaise.dart';
import 'package:fit/view/home/online_home.dart';
import 'package:flutter/material.dart';

import '../../../home/home_view.dart';
import '../../../profile/profile_view.dart';

class Armwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnlineHomePageView()));
                          },
                          icon: Image.asset("images/before_nav.png"),
                        ),
                        IconButton(
                          onPressed: () {
                          },
                          icon: Image.asset("images/about_us.png"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Container(
                      height: media.width * 0.25,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/exercise/Arm/bicep/bicep0.jpg",
                              height: 100,
                              width: 70,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bicep()));
                                      },
                                      child: Text(
                                        "Bicep",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Poppins",
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  // Add more children here if needed
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Container(
                      height: media.width * 0.25,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/exercise/Arm/tricep/triceps_0.jpg",
                              height: 100,
                              width: 70,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Tricep()));
                                      },
                                      child: Text(
                                        "Tricep",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Poppins",
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  // Add more children here if needed
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Container(
                      height: media.width * 0.25,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/exercise/Arm/shoulder/shoulder0.jpg",
                              height: 100,
                              width: 70,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Shoulder()));
                                      },
                                      child: Text(
                                        "Shoulders",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Poppins",
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 500.0,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

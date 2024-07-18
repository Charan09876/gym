import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit/common/color_extension.dart';
import 'package:fit/common_widget/round_button.dart';
import 'package:fit/view/exercise/parts/abs/absTrining.dart';
import 'package:fit/view/home/home_view.dart';
import 'package:fit/view/home/online_home.dart';
import 'package:fit/view/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Crunches extends StatefulWidget {
  const Crunches({super.key});

  @override
  State<Crunches> createState() => _Crunches();
}

class _Crunches extends State<Crunches> {
  var cal = 0;
  var time = 0;
  var btn_text = "Start";
  var _isBtnClicked = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var auth = FirebaseAuth.instance;
    var user = auth.currentUser?.displayName;
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    final DocumentSnapshot snapshot =
    await firestore.collection('users').doc(user).get();

    if (snapshot['calorie'] == null) {
      firestore.collection('users').doc(user).set({
        'calorie': '1',
      }, SetOptions(merge: true));
    }
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: TColor.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                                builder: (context) => AbsTraining()));
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
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/crunches.gif",
                height: media.width * 0.6,
                width: double.maxFinite,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Crunches",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Poppins", fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Easy | 180 calories | 20 minutes",
                  style: TextStyle(
                      color: TColor.darkgray,
                      fontFamily: "Poppins",
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Poppins", fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Lie down on your back. Plant your feet on the floor, hip-width apart. Bend your knees and place your arms across your chest. Contract your abs and inhale",
                  style: TextStyle(
                      color: TColor.darkgray,
                      fontFamily: "Poppins",
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "You will need 20 minutes to complete 3 sets. ",
                  style: TextStyle(
                      color: TColor.darkgray,
                      fontFamily: "Poppins",
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
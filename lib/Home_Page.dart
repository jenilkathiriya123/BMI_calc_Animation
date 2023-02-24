import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color Color1 = Color(0xff1D1E33);
  Color textC1 = Colors.white;
  double r1 = 0;
  double wo = 0;

  Color Color2 = Color(0xff1D1E33);
  Color textC2 = Colors.white;
  double r2 = 0;

  int slidervalue = 100;
  double w = 2;
  double age = 0;
  double bmi = 0;

  String bmiC = "calculate";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xff090E21),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 25, right: 25),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  TweenAnimationBuilder(
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOut,
                    tween: Tween<Offset>(
                      begin: Offset(-60, 0),
                      end: Offset(0, 0),
                    ),
                    builder: (context, Offset offset, child) {
                      return Transform.translate(
                        offset: offset,
                        child: Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                Color1 = Color(0xff3B3C4D);
                                textC1 = Color(0xffEB1555);
                                r1 = 8;

                                Color2 = Color(0xff1D1E33);
                                textC2 = Colors.white;
                              });
                            },
                            child: Container(
                              width: 140,
                              decoration: BoxDecoration(
                                color: Color1,
                                borderRadius: BorderRadius.circular(r1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: 0, end: 2 * pi),
                                    duration: Duration(seconds:2),
                                    builder: (BuildContext context, double val,
                                        Widget? child) {
                                      return Transform.rotate(
                                        angle: val,
                                        child: Icon(
                                          Icons.female_sharp,
                                          color: textC1,
                                          size: 70,
                                        ),
                                      );
                                    },
                                  ),
                                  Text(
                                    "Female",
                                    style:
                                        TextStyle(fontSize: 25, color: textC1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TweenAnimationBuilder(
                    duration: Duration(seconds: 2),
                    tween: Tween<Offset>(
                      begin: Offset(60, 0),
                      end: Offset(0, 0),
                    ),
                    builder: (context, Offset offset, child) {
                      return Transform.translate(
                        offset: offset,
                        child: Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                Color1 = Color(0xff1D1E33);
                                textC1 = Colors.white;

                                Color2 = Color(0xff3B3c4D);
                                textC2 = Color(0xffEB1555);
                              });
                            },
                            child: Container(
                              width: 140,
                              decoration: BoxDecoration(
                                color: Color2,
                                borderRadius: BorderRadius.circular(r2),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: 0, end: 2 * pi),
                                    duration: Duration(seconds: 2),
                                    builder: (BuildContext context, double val,
                                        Widget? child) {
                                      return Transform.rotate(
                                        angle: val,
                                        child: Icon(
                                          Icons.male,
                                          color: textC1,
                                          size: 70,
                                        ),
                                      );
                                    },
                                  ),
                                  Text(
                                    "Male",
                                    style:
                                        TextStyle(fontSize: 25, color: textC2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 2,
              child: TweenAnimationBuilder(
                duration: Duration(seconds: 2),
                curve: Curves.easeInOut,
                tween: Tween<Offset>(
                  begin: Offset(0, 300),
                  end: Offset(0, 0),
                ),
                builder: (BuildContext context, Offset offset, Widget? child) {
                  return Transform.translate(
                    offset: offset,
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1D1E33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: slidervalue.toString(),
                                  style: const TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                  ),
                                ),
                                const TextSpan(
                                  text: " cm",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff626473),
                                    letterSpacing: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Slider(
                            min: 100,
                            max: 200,
                            value: slidervalue.toDouble(),
                            onChanged: (val) {
                              setState(
                                () {
                                  slidervalue = val.toInt();
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  TweenAnimationBuilder(
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceOut,
                    tween: Tween<Offset>(
                      begin: Offset(0, -300),
                      end: Offset(0, 0),
                    ),
                    builder:
                        (BuildContext context, Offset offset, Widget? child) {
                      return Transform.translate(
                        offset: offset,
                        child: Expanded(
                          child: Container(
                            width: 145,
                            decoration: BoxDecoration(
                              color: const Color(0xff1D1E33),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  "$wo",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (wo <= 0) {
                                            wo = 2;
                                          } else {
                                            wo--;
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff4c4E5E),
                                        ),
                                        child: Icon(
                                          Icons.remove,
                                          size: 30,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          wo++;
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff6E6F7A),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Color(0xffF67FA4),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  TweenAnimationBuilder(
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceOut,
                    tween: Tween<Offset>(
                      begin: Offset(0, -300),
                      end: Offset(0, 0),
                    ),
                    builder:
                        (BuildContext context, Offset offset, Widget? child) {
                      return Transform.translate(
                        offset: offset,
                        child: Expanded(
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: const Color(0xff1D1E33),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  "$age",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          (age <= 0) ? age = 0 : age--;
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff4c4E5E),
                                        ),
                                        child: Icon(
                                          Icons.remove,
                                          size: 30,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff4c4E5E),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Color(0xffF67FA4),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xffEB1555),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: InkWell(
          onTap: () {
            setState(() {
              bmi = (wo / slidervalue / slidervalue) * 10000;
              if (bmi <= 18.5) bmiC = "UnderWeight";
              if (bmi >= 18.5 && bmi <= 24.9) bmiC = "Healthy";
              if (bmi >= 24.9 && bmi <= 30) bmiC = "OverWeight";
              if (bmi >= 30) bmiC = "Obese";
            });
          },
          child: Text(
            bmiC,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

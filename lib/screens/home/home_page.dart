
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close_rounded,
                            color: Colors.black,
                          ),
                        ),
                        Text('Premium',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text('The Secrets to be Fluent in English',style: TextStyle(fontSize: 20.0,color: Colors.grey),),
          Expanded(
            child: Container(
              color: Colors.cyan,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม All Topics
                        Expanded(
                          child: CategoryButton(
                            text: 'Full Access to Pattern Lessons',
                            icon: Icons.travel_explore,
                            color: Colors.lightBlue,
                            isSelected: true,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Popular
                        Expanded(
                          child: CategoryButton(
                            text: 'Unlock All Limitations',
                            icon: Icons.border_color_outlined,
                            color: Colors.pink,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม Newest
                        Expanded(
                          child: CategoryButton(
                            text: 'All Topics Available',
                            icon: Icons.book,
                            color: Colors.orange,
                            isSelected: true,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Advanced
                        Expanded(
                          child: CategoryButton(
                            text: 'Personlized Coaching',
                            icon: Icons.newspaper,
                            color: Colors.green,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('2021 Special Early Birds Offer',style: TextStyle(fontSize: 20.0, decoration: TextDecoration.underline,
                          color: Colors.pinkAccent,decorationColor: Colors.pinkAccent, ),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('IDR50.000',style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,color: Colors.black),),
                      Text('/month',style: TextStyle(fontSize: 20.0, color: Color.fromARGB(
                          195, 19, 16, 16)),),
                    ]
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          color: Color.fromARGB(237, 8, 199, 149),
                          textColor: Colors.white,
                          child: Text('Start 3 Days Free Trial',style: TextStyle(fontSize: 26.0, color: Colors.white),),
                          padding: EdgeInsets.all(40),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('View all Plan',style: TextStyle(fontSize: 20.0, decoration: TextDecoration.underline,
                        color: Colors.black,decorationColor: Colors.black, ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  CategoryButton({required String text, required IconData icon, required MaterialColor color, required bool isSelected}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(14.0),
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color:Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: isSelected ? color : Colors.white,
              size: 60.0,
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.black87),
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:statusbutler/models/alarm_model.dart';
import 'package:statusbutler/widgets/custom_text.dart';

import '../../widgets/widgets.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Alarm> alarms = [
    Alarm(
      id: 1,
      description: 'OK',
      color: Color.fromRGBO(41, 211, 145, 1),
    ),
    Alarm(
      id: 2,
      description: 'OK',
      color: Color.fromRGBO(41, 211, 145, 1),
    ),
    Alarm(
      id: 3,
      description: 'OK',
      color: Color.fromRGBO(41, 211, 145, 1),
    ),
    Alarm(
      id: 4,
      description: 'OK',
      color: Color.fromRGBO(41, 211, 145, 1),
    ),
    Alarm(
      id: 5,
      description: 'OK',
      color: Color.fromRGBO(41, 211, 145, 1),
    ),
    Alarm(
      id: 6,
      description: 'WARNING',
      color: Colors.amber,
    ),
    Alarm(
      id: 7,
      description: 'OK',
      color: Color.fromRGBO(41, 211, 145, 1),
    ),
    Alarm(
      id: 8,
      description: 'OK',
      color: Color.fromRGBO(41, 211, 145, 1),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: screenWidth,
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 940,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(63, 194, 202, 1),
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {},
                        child: CustomText(
                          text: 'SUBSCRIBE TO UPDATES',
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 940,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color.fromRGBO(41, 211, 145, 1),
                ),
                child: CustomText(
                  text: 'All Systems Operational',
                  color: Colors.white,
                  size: 18,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 940,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                            text: 'Router',
                            weight: FontWeight.bold,
                          ),
                          CustomText(
                            text: '99,98 & uptime',
                            color: Colors.grey[400],
                          ),
                          const CustomText(
                            text: 'Operational',
                            color: Color.fromRGBO(41, 211, 145, 1),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      SizedBox(
                        height: 30,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: alarms.length,
                          separatorBuilder: (context, _) => const SizedBox(
                            width: 4,
                          ),
                          itemBuilder: (context, index) => buildBars(index),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: '90 days ago',
                            color: Colors.grey[400],
                          ),
                          const Expanded(
                            child: Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                            ),
                          ),
                          CustomText(
                            text: 'Today',
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBars(int index) {
    return OnHoverButton(
      context: context,
      alarm: alarms[index],
      index: index,
    );
  }
}

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ekerja/utils/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/Widget/CourseWidget.dart';
import '../../../controllers/auth_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  final auth = Get.find<AuthController>();
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavyBar(
          containerHeight: 55.0,
          backgroundColor: Colors.white70,
          selectedIndex: controller.currentIndex.value,
          showElevation: false,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) => controller.changePage(index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              inactiveColor: Colors.black,
              icon: const Icon(Icons.apps),
              title: const Text('Home'),
              activeColor: Colors.red,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              inactiveColor: Colors.black,
              icon: const Icon(Icons.search_outlined),
              title: const Text('Search'),
              activeColor: Colors.green,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              inactiveColor: Colors.black,
              icon: const Icon(Icons.settings),
              title: const Text(
                'Settings ',
              ),
              activeColor: Colors.yellow,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              inactiveColor: Colors.black,
              icon: const Icon(Icons.account_box),
              title: const Text('Account'),
              activeColor: Colors.blue,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: edge, vertical: edge),
          child: PageView(
            controller: controller.pageController,
            children: <Widget>[
              ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/Memoji.png"),
                    ),
                    title: Text(
                      'Home',
                      style: BlackText.copyWith(fontSize: 20),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'Class ',
                          style: BlackText,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '8',
                          style: BlackText,
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.notification_add,
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: controller.searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: "Search any course",
                      hintStyle: TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Recent Courses',
                        style: BlackText.copyWith(fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        'See all',
                        style: BlueText.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        courseGrid(),
                        SizedBox(
                          width: 10,
                        ),
                        courseGrid(),
                        SizedBox(
                          width: 10,
                        ),
                        courseGrid(),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Kids Course',
                        style: BlackText.copyWith(fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        'See all',
                        style: BlueText.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24.0),
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            'assets/images/apple.png',
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "E-Kerja",
                                          style: BlackText.copyWith(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Sign in to your account",
                                          style: GreyText.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ])),
                              SizedBox(
                                width: 10,
                              ),
                              courseGrid(),
                              SizedBox(
                                width: 10,
                              ),
                              courseGrid(),
                              SizedBox(
                                width: 10,
                              ),
                              courseGrid(),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Lowongan Pekerjaan',
                        style: BlackText.copyWith(fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        'See all',
                        style: BlueText.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Search",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
                color: Colors.green,
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
                color: Colors.yellow,
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Account",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
                color: Colors.blue,
              ),
            ],
          ),
        )));
  }
}

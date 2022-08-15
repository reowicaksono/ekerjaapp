import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/modules/home/controllers/home_controller.dart';
import '../theme.dart';

class ListHomeWidget extends StatelessWidget {
  const ListHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return ListView(
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
        courseGrid(),
        SizedBox(
          height: 20,
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
                              child: Image.asset('assets/images/apple.png',
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "E-Kerja",
                                style: BlackText.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Sign in to your account",
                                style: GreyText.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w400),
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
    );
  }
}

Container courseGrid() {
  return Container(
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
                  child:
                      Image.asset('assets/images/apple.png', fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "E-Kerja",
                    style: BlackText.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sign in to your account",
                    style: GreyText.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ])),
        SizedBox(
          width: 10,
        ),
      ],
    ),
  );
}

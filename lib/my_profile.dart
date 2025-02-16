import 'package:flutter/material.dart';

import 'widgets/costum_profile_widget.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int _selectedIndex = 0;

  final List<Widget> widgetOptions = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontFamily: 'Somar'),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Somar'),
        elevation: 0,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff059FB3),
        unselectedItemColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // icon: Icon(Icons.person_2_outlined),
            icon: Image(
              image: AssetImage('assets/icons/user.png'),
            ),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.notifications_none),
            icon: Image(
              image: AssetImage('assets/icons/notification.png'),
            ),
            label: 'الإشعارات',
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.calendar_month_rounded),
            icon: Image(
              image: AssetImage('assets/icons/calendar.png'),
            ),
            label: 'المواعيد',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/home-hashtag.png'),
            ),
            // Icon(Icons.home),
            label: 'الرئيسية',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   actions: const [Icon(Icons.arrow_forward_ios, color: Colors.black)],
      // ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 33,
                ),
                const Row(children: [
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.black),
                  SizedBox(
                    width: 26,
                  )
                ]),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'الملف الشخصي',
                  style: TextStyle(
                      color: Color(0xff059FB3),
                      fontSize: 36,
                      fontFamily: 'Somar',
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Image(image: AssetImage('assets/image.png')),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'يارا حلبي ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontFamily: 'Somar',
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 28,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 51.0),
                    child: Column(
                      children: [
                        CostumProfileWidget(
                          text: 'تعديل المعلومات',
                          icon: 'assets/icons/edit.png',
                        ),
                        SizedBox(
                          height: 52,
                        ),
                        CostumProfileWidget(
                          text: ' اللغة',
                          icon: 'assets/icons/global.png',
                        ),
                        SizedBox(
                          height: 52,
                        ),
                        CostumProfileWidget(
                          text: 'الإعدادت ',
                          icon: 'assets/icons/setting-2.png',
                        ),
                        SizedBox(
                          height: 71,
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 33.0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  width: double.infinity,
                  // height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xffE33629),
                      width: 1,
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xffE33629),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(' تسجيل الخروج',
                              style: TextStyle(
                                color: Color(0xffE33629),
                                fontSize: 17,
                                fontFamily: 'Somar',
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            width: 13,
                          ),
                          Image(image: AssetImage('assets/icons/login.png'))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 146,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:delivery_app/screens/register_screen.dart';
import 'package:delivery_app/screens/tips/get_started.dart';
import 'package:delivery_app/widgets/tip_info_viewer.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import '../../widgets/custem_button.dart';
import '../login_screen.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  @override
  Widget build(BuildContext context) {
    var myPages = [
      {
        'title': 'Find food you love',
        'des': 'Discover the best foods from over 1.000 resturants',
        'image': 'assets/images/tips/tips_1.png'
      },
      {
        'title': 'Live Tracking',
        'des': 'Real time tracking of your food on the app after ordered',
        'image': 'assets/images/tips/tips_2.png'
      },
      {
        'title': 'Fast Delivery',
        'des': 'Fast delivery to your home,office or wherever you are',
        'image': 'assets/images/tips/tips_3.png'
      },
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.66,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: PageIndicatorContainer(
                      shape: IndicatorShape.circle(),
                      align: IndicatorAlign.bottom,
                      indicatorColor: Colors.grey,
                      indicatorSelectorColor: Colors.red,
                      child: PageView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: myPages.length,
                        itemBuilder: (BuildContext context, index) {
                          return TipInfoViewerWidget(
                              des: myPages[index]['des'],
                              imageUrl: myPages[index]['image'],
                              title: myPages[index]['title']);
                        },
                      ),
                      length: myPages.length),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 20),
                      child: MaterialButton(
                        color: Colors.red,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegisterScreen();
                          }));
                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: MaterialButton(
                        color: Color(0xfff0f0f0),
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.blue.shade900,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Continue using Facebook',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../customlistfile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 7,
                            blurRadius: 5,
                            offset: const Offset(0, 3)),
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      SizedBox(
                        width: 95.w,
                      ),
                      Text(
                        'Notification',
                        style: TextStyle(
                            color: Theme.of(context).iconTheme.color,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 7,
                            blurRadius: 5,
                            offset: const Offset(0, 3)),
                      ]),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'RECENT',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).iconTheme.color,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      CustomListTile(
                        height: 95,
                        leadingIcon: Image(
                          image:
                              const AssetImage('assets/images/notification/fire.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Heat:",
                        subtitleText:
                            "you are carrying some thing with high heat which may be harmful for you.",
                        fontSize: 18,
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xffB6B6B6),
                        ),
                      ),
                      CustomListTile(
                        leadingIcon: Image(
                          image:
                              const AssetImage('assets/images/notification/fire.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Heat:",
                        height: 90,
                        fontSize: 18,
                        subtitleText:
                            "you are carrying some thing with high temperature: 30 C° ",
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xffB6B6B6),
                        ),
                      ),
                      CustomListTile(
                        height: 95,
                        fontSize: 18,
                        leadingIcon: Image(
                          image: const AssetImage(
                              'assets/images/notification/charge.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Battery:",
                        subtitleText:
                            "your battery percentage is almost done, please charge it. ",
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 7,
                            blurRadius: 5,
                            offset: const Offset(0, 3)),
                      ]),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'EARLIER',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).iconTheme.color,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      CustomListTile(
                        height: 90,
                        leadingIcon: Image(
                          image:
                              const AssetImage('assets/images/notification/fire.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Heat:",
                        subtitleText:
                            "you are carrying some thing with high heat which may be harmful for you.",
                        fontSize: 18,
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xffB6B6B6),
                        ),
                      ),
                      CustomListTile(
                        height: 90,
                        fontSize: 18,
                        leadingIcon: Image(
                          image: const AssetImage(
                              'assets/images/notification/charge.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Battery:",
                        subtitleText:
                            "your battery percentage is almost done, please charge it. ",
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).iconTheme.color,
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
    );
  }
}

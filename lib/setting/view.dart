import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../customlistfile.dart';
import 'theme_button.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
                        'Setting',
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
                              'GENERAL',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).iconTheme.color,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      CustomListTile(
                        leadingIcon: Image(
                          image: const AssetImage('assets/images/setting/person.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Account",
                        subtitleText: "",
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xff707070),
                        ),
                      ),
                      CustomListTile(
                        leadingIcon: Image(
                          image: const AssetImage(
                              'assets/images/setting/notification.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Notification",
                        subtitleText: "",
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
                              const AssetImage('assets/images/setting/darkmode.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Dark Mode",
                        subtitleText: "",
                        trailing: const ChangeThemeButton(),
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
                              const AssetImage('assets/images/setting/language.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Language",
                        subtitleText: "",
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
                          image: const AssetImage('assets/images/setting/logout.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Logout",
                        subtitleText: "",
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
                padding: const EdgeInsets.all(12.0),
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
                              'FEEDBACK',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).iconTheme.color,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      CustomListTile(
                        leadingIcon: Image(
                          image: const AssetImage('assets/images/setting/debug.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Send a Debug",
                        subtitleText: "",
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
                              const AssetImage('assets/images/setting/feedback.png'),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        titleText: "Send Feedback",
                        subtitleText: "",
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).iconTheme.color,
                        ),
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
}

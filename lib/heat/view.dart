import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeatScreen extends StatefulWidget {
  const HeatScreen({Key? key}) : super(key: key);

  @override
  _HeatScreenState createState() => _HeatScreenState();
}

class _HeatScreenState extends State<HeatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    'Heat',
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
            height: 200.h,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'The Temperature Of The Thing You \n               Are Carrying:',
              style: TextStyle(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '30 C°',
                style: TextStyle(
                    color: const Color(0xff0377FE),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.w,
              ),
              // Icon(Icons.battery_charging_full_rounded,color: Color(0xff08254F),)
              Image.asset(
                'assets/images/battery/iconheat.png',
                height: 30.h,
                width: 30.w,
                color: Theme.of(context).iconTheme.color,
              )
            ],
          )
        ],
      ),
    );
  }
}

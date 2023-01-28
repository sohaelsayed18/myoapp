import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(children: [
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
              child: Center(
                child: Text(
                  'Home',
                  style: TextStyle(
                      color: Theme.of(context).iconTheme.color,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 160.h,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1 / 1,
              ),
              itemCount: general.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: GestureDetector(
                  onTap: general[index].press,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 7,
                              blurRadius: 5,
                              offset: const Offset(0, 3)),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              general[index].image,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              general[index].name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Theme.of(context).iconTheme.color,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0.w),
            child: Column(children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Instructions",
                    style: TextStyle(
                        color: Theme.of(context).iconTheme.color,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp),
                  )),
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 250.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 7,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "the user of the hand must take into account the\n"
                          " maintenance of physical rehabilitation to maintainthe\n"
                          " integrity of the muscles and the safety of\n "
                          "proper blood flow in the muscles.\n"
                          " the hand should also not be exposed to water\n"
                          " for a long time to preserve the internal components\n "
                          "of the hand and prevent water from reaching\n"
                          " the internal components.\n"
                          " the battery must be constantly monitored so as\n "
                          "not to be subjected to a sudden stop of the hand\n"
                          " when it is needed.\n"
                          " high heat should not be exposed to preserve the\n"
                          " raw materials used in the hand industry.",
                          style: TextStyle(
                              color: Theme.of(context).iconTheme.color,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "Read More",
                          style: TextStyle(color: Color(0xff0377FE)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}

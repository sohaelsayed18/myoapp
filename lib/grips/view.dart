import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model.dart';

class GripsPage extends StatefulWidget {
  const GripsPage({Key? key}) : super(key: key);

  @override
  State<GripsPage> createState() => _GripsPageState();
}

class _GripsPageState extends State<GripsPage> {
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
                        'Grips',
                        style: TextStyle(
                            color: Theme.of(context).iconTheme.color,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1 / 1,
                      ),
                      itemCount: general.length,
                      itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 7.h, horizontal: 4.w),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(15.r),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(0, 2)),
                              ],
                            ),
                            child: Image.asset(
                              general[index].image,
                              color: Theme.of(context).iconTheme.color,
                            ),
                          ))))
            ])));
  }
}

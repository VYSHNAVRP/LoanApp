import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loanapp/Screen3.dart';
import 'package:loanapp/Screen5.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0.w, top: 40.h),
              child: Container(
                child: Text(
                  "Pay Fast",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 33.sp),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 12.h),
              child: Container(
                child: Text(
                  "Forget Everythig  you know \n         about Banking ",
                  style:
                  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.0.w, top: 30.h),
              child: Image.asset("assets/mango.png",),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(onTap: (){Navigator .of (context).push(MaterialPageRoute(builder: (_)=>Screen5()),); },
              child: Container(
                width: 170.w,
                height: 40.h,
                decoration: ShapeDecoration(
                    color: Colors.pinkAccent,
                    shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          (30.r),
                        )))),
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp),
                  ),
                ),
              ),
            ),
             SizedBox(height: 15.h,),
             GestureDetector(onTap:  (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Screen3()));},
               child: Container(
                width: 170.w,
                height: 40.h,
                decoration: ShapeDecoration(
                    color: Colors.pinkAccent,
                    shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          (30.r),
                        )))),
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                           ),
             ),
          ],
        ),
      ),
    );
  }
}

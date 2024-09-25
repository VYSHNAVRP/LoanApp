import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loanapp/Screen7.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h),
                child: Text(
                  "Verify",
                  style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Please enter the 6 digit one time \n Code to activate your account!",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80.0.h),
                child: OtpTextField(
                  numberOfFields: 5,
                  borderColor: Colors.black,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        });
                  }, // end onSubmit
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Didn't receive a code?",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Resend code!",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.sp),
              ),
              Container(
                height: 1.h,
                width: 120.w,
                color: Colors.black,
              ),
              SizedBox(
                height: 70.h,
              ),

        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => Screen7()),
            );
          },
                child: Container(
                  width: 330.w,
                  height: 48.h,
                  decoration: ShapeDecoration(
                    color: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular((20)),),),
                  child: Center(
                    child: Text("Verify", style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),),
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

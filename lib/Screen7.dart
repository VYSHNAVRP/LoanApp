import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:loanapp/Screen8.dart';

class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  double _currentvalue=20;
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity.w,
                height: 690.h,
                decoration: ShapeDecoration(
                    color: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.r),
                            topLeft: Radius.circular(30.r)))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 30.h),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 310.w, top: 30.h),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130.w, top: 30.h),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 115.w,
                  top: 88,
                ),
                child: Text(
                  "Good afternoon,",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 110.w, top: 110.h),
                child: Text(
                  "jacquie !",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 40.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 185.h),
                child: Stack(
                  children: [
                    Container(
                      width: 330.w,
                      height: 130.h,
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Text(
                        "Loan Limit",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 230.w),
                      child: Image.asset(
                        "assets/mini.png",
                        height: 80.h,
                        width: 120.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 245.w,
                      ),
                      child: Image.asset(
                        "assets/curve.png",
                        height: 70.h,
                        width: 90.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 265.w),
                      child: Text(
                        "100%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 78.6.h),
                      child: Image.asset(
                        "assets/circle.png",
                        height: 70.h,
                        width: 75.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, top: 35.h),
                      child: Text(
                        "\$10,000.00",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 145.w, top: 35.h),
                      child: Text(
                        "Request for \$5,500.00",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 77.h, left: 15.w),
                      child: SizedBox(
                        width: 300.w,
                        child: LinearProgressBar(
                          maxSteps: 4,
                          progressType: LinearProgressBar.progressTypeLinear,
                          // Use Linear progress
                          currentStep: 1,
                          progressColor: Colors.black,
                          backgroundColor: Colors.grey,
                          borderRadius: BorderRadius.circular(10.r), //  NEW
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 85.h, left: 280.w),
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context, void Function(void Function()) setState) { return Stack(
                                  children: [
                                    Container(
                                      height: 500.h,
                                      width: double.infinity.w,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 30.w, top: 25.h),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(left: 30.w, top: 20.h),
                                      child: Text(
                                        "How long do you want the loan for?",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(left: 110.w, top: 60.h),
                                      child: Text(
                                        "2 Months",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 30.sp),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: 120.h, left: 27.w),
                                      child: SizedBox(
                                        width: 310.w,
                                        height: 8.h,
                                        child:Slider(
                                          max: 100,
                                          divisions: 5,
                                          value: _currentvalue,
                                          onChanged: (double value) { setState((){
                                            _currentvalue=value;
                                          });

                                           },)
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(left: 10.w, top: 150.h),
                                      child: Container(
                                        width: 340.w,
                                        height: 95.h,
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(20.r))),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.w, top: 160.h),
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "Monthly\npayments\n "),
                                                TextSpan(
                                                    text: "NILL",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 35.sp,
                                                        fontWeight:
                                                        FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 45.w, top: 160.h),
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "  No of\npayments\n "),
                                                TextSpan(
                                                    text: "NILL",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 35.sp,
                                                        fontWeight:
                                                        FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 45.w, top: 160.h),
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "  Total\npaybacks\n "),
                                                TextSpan(
                                                    text: "NILL",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 35.sp,
                                                        fontWeight:
                                                        FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(top: 250.h),
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            activeColor: Colors.yellow,
                                            value: ischecked, onChanged: (value){
                                            setState(() {
                                              ischecked =value!;

                                            });
                                          },),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "I agree to the ",
                                                ),
                                                TextSpan(
                                                  text: "Terms & conditions ",
                                                  style: TextStyle(
                                                    color: Colors.pinkAccent,
                                                  ),
                                                ),
                                                TextSpan(text: "and "),
                                                TextSpan(
                                                  text: "Policy.",
                                                  style: TextStyle(
                                                    color: Colors.pinkAccent,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (BuildContext context) {
                                              return SizedBox(
                                                width: double.infinity.w,
                                                height: 600.h,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 25.h,
                                                      ),
                                                      child: Text(
                                                        "That  was way to easy!",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 17.sp,
                                                            fontWeight:
                                                            FontWeight.w500),
                                                      ),
                                                    ),
                                                    SizedBox(height: 15.h),
                                                    Text(
                                                      "Congratulations!",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 30.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    SizedBox(
                                                      height: 120,
                                                      width: 90,
                                                      child: CircleAvatar(
                                                        child: Icon(
                                                          Icons.done,
                                                          color: Colors.green,
                                                          size: 50,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Transaction Summery",
                                                      style: TextStyle(
                                                          fontSize: 20.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    Container(
                                                      height: 200.h,
                                                      width: 290.w,
                                                      color: Colors.white,
                                                      child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left: 10.w,
                                                            right: 10.r),
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 20.h,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "Next Repayment Date:"),
                                                                Text(
                                                                    "02/04/2023"),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "Interest Rate:"),
                                                                Text("10%")
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "Monthly Repayment:"),
                                                                Text("\$5,000.00")
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "No of payments:"),
                                                                Text("2"),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text("Reason:"),
                                                                Text(
                                                                    "Emetgency Bill"),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "Total payback Amount:"),
                                                                Text(
                                                                    "\$10,050.00"),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Screen8()));},
                                                      child: Container(
                                                        height: 48.h,
                                                        width: 330.w,
                                                        decoration: ShapeDecoration(
                                                            color:
                                                            Colors.pinkAccent,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    20.r))),
                                                        child: Center(
                                                          child: Text(
                                                            "Accept",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight:
                                                                FontWeight.w700,
                                                                fontSize: 24.sp),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    GestureDetector(onTap: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                      child: Container(
                                                        height: 48.h,
                                                        width: 330.w,
                                                        decoration: ShapeDecoration(
                                                            color:
                                                            Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    20.r))),
                                                        child: Center(
                                                          child: Text(
                                                            "Decline",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight:
                                                                FontWeight.w700,
                                                                fontSize: 24.sp),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 300.h, left: 17.w),
                                        child: Container(
                                          height: 70.h,
                                          width: 330.w,
                                          decoration: ShapeDecoration(
                                              color: Colors.pinkAccent,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      20.r))),
                                          child: Center(
                                            child: Text(
                                              "Apply Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 30.sp),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );},

                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.arrow_circle_right,
                          size: 45.sp,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 150.w, top: 97.h),
                      child: Text(
                        "Request for Loan",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 340.h),
                child: Container(
                  width: double.infinity.w,
                  height: 350.h,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 360.h, left: 20.w),
                child: Text(
                  "How do you want to use your limit?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 410.h, left: 25.w),
                child: Container(
                  width: 315.w,
                  height: 69.h,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFF979797)),
                          borderRadius: BorderRadius.circular(20))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0.w),
                        child: Image.asset(
                          "assets/new.png",
                          height: 40.h,
                          width: 43.w,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Emergency Bills",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 70.w,
                      ),
                      Container(
                        width: 40.w,
                        height: 35.h,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side:
                                    BorderSide(width: 1.w, color: Colors.black),
                                borderRadius: BorderRadius.circular(360.r))),
                        child: Center(
                            child: Icon(
                          Icons.arrow_forward_ios_outlined,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 500.h, left: 25.w),
                child: Container(
                  width: 315.w,
                  height: 69.h,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFF979797)),
                          borderRadius: BorderRadius.circular(20))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0.w),
                        child: Image.asset(
                          "assets/new.png",
                          height: 40.h,
                          width: 43.w,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Food and shopping",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 56.w,
                      ),
                      Container(
                        width: 40.w,
                        height: 35.h,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side:
                                    BorderSide(width: 1.w, color: Colors.black),
                                borderRadius: BorderRadius.circular(360.r))),
                        child: Center(
                            child: Icon(
                          Icons.arrow_forward_ios_outlined,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 592.h, left: 25.w),
                child: Container(
                  width: 315.w,
                  height: 69.h,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFF979797)),
                          borderRadius: BorderRadius.circular(20))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0.w),
                        child: Image.asset(
                          "assets/new.png",
                          height: 40.h,
                          width: 43.w,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "others",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 146.w,
                      ),
                      Container(
                        width: 40.w,
                        height: 35.h,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side:
                                    BorderSide(width: 1.w, color: Colors.black),
                                borderRadius: BorderRadius.circular(360.r))),
                        child: Center(
                            child: Icon(
                          Icons.arrow_forward_ios_outlined,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

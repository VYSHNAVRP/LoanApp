import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18..w, top: 30.h),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 28.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 70.w, top: 30.h),
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
                  padding: EdgeInsets.only(left: 100.w, top: 30.h),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w, top: 17.h),
              child: Text(
                "Good afternoon,",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              "jacquie !",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 40.sp,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
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
                    padding: EdgeInsets.only(left: 10.w, top: 5.h),
                    child: Text(
                      "Loan Balance",
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
                      "50%",
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
                      "\$3,000.00  of  \$10,050.00",
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 230.w, top: 35.h),
                    child: Text(
                      "39 days left",
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
                        currentStep: 2,
                        progressColor: Colors.black,
                        backgroundColor: Colors.grey,
                        borderRadius: BorderRadius.circular(10.r), //  NEW
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (Buildcontext) {
                            return SizedBox(
                              width: double.infinity.w,
                              height: 300.h,
                              child: DefaultTabController(
                                length: 2,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.w, top: 10.h),
                                          child: Text(
                                            "Repay Loan",
                                            style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 10.h, right: 12.r),
                                            child: Icon(Icons.close),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.h),
                                    Container(
                                      height: 40.h,
                                      child: TabBar(
                                        indicatorSize: TabBarIndicatorSize.tab,
                                        indicator: BoxDecoration(
                                          color: Color(0xFFFF0083),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        tabs: [
                                          Tab(
                                            icon: Text(
                                              "Full Repayment",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.sp),
                                            ),
                                          ),
                                          Tab(
                                            icon: Text(
                                              "Partial Repayment",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          Container(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.w, top: 10.h),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Repay your loan today and take another one\n                          immediatly.",
                                                    style: TextStyle(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                  SizedBox(
                                                    height: 15.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "You currently owe",
                                                        style: TextStyle(
                                                            fontSize: 17.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "\$10,050.00",
                                                        style: TextStyle(
                                                            fontSize: 25.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      showModalBottomSheet<
                                                              void>(
                                                          context: context,
                                                          isScrollControlled:
                                                              true,
                                                          builder: (BuildContext
                                                              context) {
                                                            return SizedBox(
                                                              height: 600,
                                                              width: double
                                                                  .infinity.w,
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  children: <Widget>[
                                                                    Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: 10
                                                                              .h),
                                                                      child:
                                                                          Text(
                                                                        "That was way to easy!",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                20.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          12.h,
                                                                    ),
                                                                    Text(
                                                                      "CONGRATULATIONS",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              30.sp),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          120,
                                                                      width: 90,
                                                                      child:
                                                                          CircleAvatar(
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .done,
                                                                          color:
                                                                              Colors.green,
                                                                          size:
                                                                              50,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          12.h,
                                                                    ),
                                                                    Text(
                                                                      "Transaction Summary",
                                                                      style: TextStyle(
                                                                          fontSize: 20
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          12.h,
                                                                    ),
                                                                    Text(
                                                                      "\$10,050.00",
                                                                      style: TextStyle(
                                                                          fontSize: 30
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          12.h,
                                                                    ),
                                                                    Text(
                                                                      "your loan has been fully\n                 paid",
                                                                      style: TextStyle(
                                                                          fontSize: 20
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          50.h,
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          50.h,
                                                                      width:
                                                                          320.w,
                                                                      decoration: ShapeDecoration(
                                                                          color: Colors
                                                                              .pinkAccent,
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r))),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Text(
                                                                          ""
                                                                          "okay",
                                                                          style: TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 30.sp,
                                                                              fontWeight: FontWeight.w500),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          });
                                                    },
                                                    child: Container(
                                                      height: 50.h,
                                                      width: 250.w,
                                                      decoration: ShapeDecoration(
                                                          color:
                                                              Colors.pinkAccent,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20))),
                                                      child: Center(
                                                          child: Text(
                                                        "continue",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      )),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 17.w, top: 10.h),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Repay your loan today and take another one\n                          immediately",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 16),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        labelText:
                                                            "Enter amount",
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                  GestureDetector(onTap:(){
                                                    showModalBottomSheet<
                                                        void>(
                                                        context: context,
                                                        isScrollControlled:
                                                        true,
                                                        builder: (BuildContext
                                                        context) {
                                                          return SizedBox(
                                                            height: 600,
                                                            width: double
                                                                .infinity.w,
                                                            child:
                                                            SingleChildScrollView(
                                                              child: Column(
                                                                children: <Widget>[
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 10
                                                                            .h),
                                                                    child:
                                                                    Text(
                                                                      "That was way to easy!",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                          20.sp,
                                                                          fontWeight: FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                    12.h,
                                                                  ),
                                                                  Text(
                                                                    "CONGRATULATIONS",
                                                                    style: TextStyle(
                                                                        fontWeight: FontWeight
                                                                            .w500,
                                                                        fontSize:
                                                                        30.sp),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                    120,
                                                                    width: 90,
                                                                    child:
                                                                    CircleAvatar(
                                                                      child:
                                                                      Icon(
                                                                        Icons
                                                                            .done,
                                                                        color:
                                                                        Colors.green,
                                                                        size:
                                                                        50,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                    12.h,
                                                                  ),
                                                                  Text(
                                                                    "Transaction Summary",
                                                                    style: TextStyle(
                                                                        fontSize: 20
                                                                            .sp,
                                                                        fontWeight:
                                                                        FontWeight.w500),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                    12.h,
                                                                  ),
                                                                  Text(
                                                                    "\$10,050.00",
                                                                    style: TextStyle(
                                                                        fontSize: 30
                                                                            .sp,
                                                                        fontWeight:
                                                                        FontWeight.w600),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                    12.h,
                                                                  ),
                                                                  Text(
                                                                    "your loan has been fully\n                 paid",
                                                                    style: TextStyle(
                                                                        fontSize: 20
                                                                            .sp,
                                                                        fontWeight:
                                                                        FontWeight.w500),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                    50.h,
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                    50.h,
                                                                    width:
                                                                    320.w,
                                                                    decoration: ShapeDecoration(
                                                                        color: Colors
                                                                            .pinkAccent,
                                                                        shape:
                                                                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r))),
                                                                    child:
                                                                    Center(
                                                                      child:
                                                                      Text(
                                                                        ""
                                                                            "okay",
                                                                        style: TextStyle(
                                                                            color: Colors.white,
                                                                            fontSize: 30.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                  },
                                                    child: Container(
                                                      height: 50.h,
                                                      width: 250.w,
                                                      decoration: ShapeDecoration(
                                                          color:
                                                              Colors.pinkAccent,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20))),
                                                      child: Center(
                                                        child: Text(
                                                          "continue",
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight:
                                                                  FontWeight.w700,
                                                              fontSize: 20.sp),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 280.w, top: 88.h),
                      child: Icon(
                        Icons.arrow_circle_right,
                        size: 45.sp,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 180.w, top: 97.h),
                    child: Text(
                      "Repay Loan",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity.w,
              height: 379.6.h,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r)))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 12.h),
                        child: Text(
                          "Transactions",
                          style: TextStyle(
                              fontSize: 19.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w, top: 12.h),
                        child: Text(
                          "See all",
                          style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "mini statement",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 12.h),
                        child: Text(
                          "Loan Disbursement",
                          style: TextStyle(
                              fontSize: 19.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w, top: 12.h),
                        child: Text(
                          "\$10,050.00",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "2022-09-12",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 12.h),
                        child: Text(
                          "Withdraw to bank",
                          style: TextStyle(
                              fontSize: 19.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w, top: 12.h),
                        child: Text(
                          "-\$10,050.00",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "2022-09-12",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 12.h),
                        child: Text(
                          "Loan Repayment",
                          style: TextStyle(
                              fontSize: 19.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w, top: 12.h),
                        child: Text(
                          "\$3,000.00",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "2022-09-12",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 12.h),
                        child: Text(
                          "Loan Repayment Fees",
                          style: TextStyle(
                              fontSize: 19.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w, top: 12.h),
                        child: Text(
                          "-\$32.00",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "2022-09-12",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:loanapp/Screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    final introKey = GlobalKey<IntroductionScreenState>();

    void _onIntroEnd(context) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Screen2()),
      );
    }
//vyshnav
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IntroductionScreen(
          key: introKey,
          globalBackgroundColor: Colors.white,
          allowImplicitScrolling: true,
          autoScrollDuration: 3000,
          infiniteAutoScroll: true,
          pages: [
            PageViewModel(
                title: "Send Money",
                body:
                    "send money to all networks and banks\n right from your pay fast \n account",
                image: Padding(
                  padding:  EdgeInsets.only(left: 12.0.w,top: 15.h),
                  child: Image.asset("assets/mango.png"),
                )),
            PageViewModel(
                title: "pay bills",
                body:
                    "pay bills such as electricity,water bill,Tv \n subscription etc \n Buy air time and Bundles",
                image: Padding(
                  padding:  EdgeInsets.only(left: 10.0.w,top: 15.h),
                  child: Image.asset("assets/apple.png"),
                )),
            PageViewModel(
                title: "pay merchants",
                body: " Even with insufficient balance,pay by \n phone at merchants with pay fast \n accounts",
                image: Image.asset("assets/banana.png")),

          ],
          onDone: () => _onIntroEnd(context),
          onSkip: () => _onIntroEnd(context),
          // You can override onSkip callback
          showSkipButton: true,
          skipOrBackFlex: 0,
          nextFlex: 0,
          showBackButton: false,
          //rtl: true, // Display as right-to-left
          back: const Icon(Icons.arrow_back),
          skip:
              const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
          next: const Icon(Icons.arrow_forward),
          done:
              const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.all(16),
          controlsPadding: kIsWeb
              ? const EdgeInsets.all(12.0)
              : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color(0xFFBDBDBD),
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        ),
      ),
    );
  }
}

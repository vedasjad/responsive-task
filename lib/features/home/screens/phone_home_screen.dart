import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_page/common/colors/colors.dart';
import 'package:responsive_page/common/constants.dart';

class PhoneHomeScreen extends StatefulWidget {
  const PhoneHomeScreen({super.key});

  @override
  State<PhoneHomeScreen> createState() => _PhoneHomeScreenState();
}

class _PhoneHomeScreenState extends State<PhoneHomeScreen> {
  int hoveredCardIndex = -1;
  int hoveredHeaderIndex = -1;
  bool isCallbackHover = false;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.1,
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        scrolledUnderElevation: 0,
        // forceMaterialTransparency: true,
        elevation: isDrawerOpen ? 0 : 4,
        shadowColor: AppColors.grey.withOpacity(0.5),
        leadingWidth: screenWidth * 0.45,
        title: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            "assets/images/aimed-labs.png",
            width: screenWidth * 0.45,
            fit: BoxFit.fitWidth,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                isDrawerOpen = !isDrawerOpen;
              });
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: AppColors.blue,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenWidth * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We Are",
                  softWrap: true,
                  style: GoogleFonts.getFont(
                    "Ubuntu",
                    color: AppColors.grey,
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "The ",
                      softWrap: true,
                      style: GoogleFonts.getFont(
                        "Ubuntu",
                        color: AppColors.black,
                        fontSize: screenWidth * 0.09,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(right: 10),
                      child: Lottie.asset(
                        "assets/animations/biceps.json",
                        width: screenWidth * 0.09,
                        height: screenWidth * 0.09,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      "Product",
                      softWrap: true,
                      style: GoogleFonts.getFont(
                        "Montserrat",
                        color: AppColors.blue,
                        fontSize: screenWidth * 0.12,
                        fontWeight: FontWeight.w900,
                        shadows: const [
                          Shadow(
                            color: AppColors.black,
                            blurRadius: 0.3,
                            offset: Offset(1, 1),
                          ),
                          Shadow(
                            color: AppColors.black,
                            blurRadius: 0.3,
                            offset: Offset(-1, -1),
                          ),
                          Shadow(
                            color: AppColors.black,
                            blurRadius: 0.3,
                            offset: Offset(1, -1),
                          ),
                          Shadow(
                            color: AppColors.black,
                            blurRadius: 0.3,
                            offset: Offset(-1, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "Team ",
                      softWrap: true,
                      style: GoogleFonts.getFont(
                        "Montserrat",
                        color: AppColors.blue,
                        fontSize: screenWidth * 0.12,
                        fontWeight: FontWeight.w900,
                        shadows: const [
                          Shadow(
                            color: AppColors.black,
                            blurRadius: 0.3,
                            offset: Offset(1, 1),
                          ),
                          Shadow(
                            color: AppColors.black,
                            blurRadius: 0.3,
                            offset: Offset(-1, -1),
                          ),
                          Shadow(
                            color: AppColors.black,
                            blurRadius: 0.3,
                            offset: Offset(1, -1),
                          ),
                          Shadow(
                            color: AppColors.black,
                            blurRadius: 0.3,
                            offset: Offset(-1, 1),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "you need.",
                      softWrap: true,
                      style: GoogleFonts.getFont(
                        "Ubuntu",
                        color: AppColors.black,
                        fontSize: screenWidth * 0.09,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: GoogleFonts.getFont(
                              "Ubuntu",
                              color: AppColors.black,
                              fontSize: screenWidth * 0.09,
                              fontWeight: FontWeight.w700,
                            ),
                            children: const [
                              TextSpan(
                                text: "What will you build ",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Lottie.asset(
                        "assets/animations/bulb.json",
                        width: screenWidth * 0.15,
                        height: screenWidth * 0.15,
                        fit: BoxFit.contain,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: GoogleFonts.getFont(
                            "Ubuntu",
                            color: AppColors.black,
                            fontSize: screenWidth * 0.09,
                            fontWeight: FontWeight.w700,
                          ),
                          children: const [
                            TextSpan(
                              text: " now?",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List<Widget>.generate(
                    5,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                              child: Icon(
                                Icons.circle_rounded,
                                size: 5,
                              ),
                            ),
                            Expanded(
                              child: RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    letterSpacing: 1,
                                    fontSize: screenWidth * 0.05,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "${AppConstants.cardsHeadingFirst[index]} ",
                                    ),
                                    TextSpan(
                                      text: AppConstants
                                          .cardsHeadingSecond[index],
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: AppColors.blue,
                                        decorationThickness: 2,
                                        color: AppColors.blue,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onHover: (isHover) {
                          setState(() {
                            isCallbackHover = isHover;
                          });
                        },
                        onTap: () {},
                        splashColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
                        overlayColor:
                            const MaterialStatePropertyAll(Colors.transparent),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              screenWidth * 0.015,
                              screenWidth * 0.015,
                              screenWidth * 0.02,
                              screenWidth * 0.015),
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.02, vertical: 13),
                          decoration: BoxDecoration(
                            color: isCallbackHover
                                ? AppColors.green
                                : AppColors.blue,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: isCallbackHover
                                  ? AppColors.black
                                  : Colors.transparent,
                              width: 0.1,
                            ),
                          ),
                          child: Text(
                            "GET A CALLBACK",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: isCallbackHover
                                  ? AppColors.black
                                  : AppColors.white,
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          isDrawerOpen
              ? Container(
                  height: screenHeight * 0.6,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: screenWidth,
                  color: AppColors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List<Widget>.generate(
                          6,
                          (index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              child: InkWell(
                                onHover: (isHover) {
                                  setState(() {
                                    if (isHover) {
                                      hoveredHeaderIndex = index;
                                    } else {
                                      hoveredHeaderIndex = -1;
                                    }
                                  });
                                },
                                onTap: () {},
                                child: Container(
                                  color: hoveredHeaderIndex == index
                                      ? AppColors.green
                                      : Colors.transparent,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 10),
                                  child: Text(
                                    AppConstants.headersList[index],
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: screenWidth * 0.03,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onHover: (isHover) {
                                setState(() {
                                  isCallbackHover = isHover;
                                });
                              },
                              onTap: () {},
                              splashColor: Colors.transparent,
                              splashFactory: NoSplash.splashFactory,
                              overlayColor: const MaterialStatePropertyAll(
                                  Colors.transparent),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(
                                    screenWidth * 0.015,
                                    screenWidth * 0.015,
                                    screenWidth * 0.02,
                                    screenWidth * 0.015),
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.02,
                                    vertical: 13),
                                decoration: BoxDecoration(
                                  color: isCallbackHover
                                      ? AppColors.green
                                      : AppColors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: isCallbackHover
                                        ? AppColors.black
                                        : Colors.transparent,
                                    width: 1.5,
                                  ),
                                ),
                                child: Text(
                                  "GET A CALLBACK",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: isCallbackHover
                                        ? AppColors.black
                                        : AppColors.white,
                                    fontSize: screenWidth * 0.032,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

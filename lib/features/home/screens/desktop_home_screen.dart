import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_page/common/colors/colors.dart';

class DesktopHomeScreen extends StatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  State<DesktopHomeScreen> createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
  List<String> headersList = [
    "HOME",
    "CAREER",
    "SERVICES",
    "ABOUT US",
    "CLIENTS",
    "TECHSTACK",
  ];
  List<String> cardsHeadingFirst = [
    "Mesmerizing & Beautiful",
    "Robust & Engaging",
    "Innovative & Disruptive",
    "Automated & Efficient",
    "Cost Effective & Scalable",
  ];
  List<String> cardsHeadingSecond = [
    "UI & UX",
    "Mobile & Web Apps",
    "AI / ML Integrations",
    "Business / Robotic Process Automation",
    "Cloud Computing",
  ];

  int hoveredCardIndex = -1;
  int hoveredHeaderIndex = -1;
  bool isCallbackHover = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.13,
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        scrolledUnderElevation: 0,
        // forceMaterialTransparency: true,
        elevation: 10,
        shadowColor: AppColors.grey.withOpacity(0.5),
        leadingWidth: screenWidth * 0.2,
        title: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            "assets/images/aimed-labs.png",
            width: screenWidth * 0.15,
            fit: BoxFit.fitWidth,
          ),
        ),
        actions: List<Widget>.generate(
          7,
          (index) {
            if (index < 6) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    child: Text(
                      headersList[index],
                      style: TextStyle(
                        fontSize: screenWidth * 0.013,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return InkWell(
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
                  margin: const EdgeInsets.fromLTRB(20, 20, 35, 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                  decoration: BoxDecoration(
                    color: isCallbackHover ? AppColors.green : AppColors.blue,
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
                    style: TextStyle(
                      color:
                          isCallbackHover ? AppColors.black : AppColors.white,
                      fontSize: screenWidth * 0.013,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "We Are",
              style: GoogleFonts.getFont(
                "Ubuntu",
                color: AppColors.grey,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "The ",
                    style: GoogleFonts.getFont(
                      "Ubuntu",
                      color: AppColors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Lottie.asset(
                      "assets/animations/biceps.json",
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "Product Team",
                    style: GoogleFonts.getFont(
                      "Montserrat",
                      color: AppColors.blue,
                      fontSize: 80,
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
                    " you need.",
                    style: GoogleFonts.getFont(
                      "Ubuntu",
                      color: AppColors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Expanded(
                    child: Text(
                      "What will you build",
                      style: GoogleFonts.getFont(
                        "Ubuntu",
                        color: AppColors.black,
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Lottie.asset(
                    "assets/animations/bulb.json",
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    " now?",
                    style: GoogleFonts.getFont(
                      "Ubuntu",
                      color: AppColors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List<Widget>.generate(
                5,
                (index) {
                  return InkWell(
                    onHover: (isHover) {
                      setState(() {
                        if (isHover) {
                          hoveredCardIndex = index;
                        } else {
                          hoveredCardIndex = -1;
                        }
                      });
                    },
                    onTap: () {},
                    child: Card(
                      shape: Border.all(
                        width: hoveredCardIndex == index ? 3 : 0.5,
                        color: hoveredCardIndex == index
                            ? AppColors.blue
                            : AppColors.grey,
                      ),
                      elevation: 20,
                      color: AppColors.white,
                      surfaceTintColor: AppColors.white,
                      shadowColor: AppColors.grey,
                      child: Container(
                        width: screenWidth / 6.8,
                        height: screenWidth / 6.9,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        cardsHeadingFirst[index],
                                        style: TextStyle(
                                          color: AppColors.grey,
                                          fontSize: screenWidth * 0.014,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        cardsHeadingSecond[index],
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: screenWidth * 0.013,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            hoveredCardIndex == index
                                ? Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColors.blue,
                                        width: 2,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.blue,
                                      size: 30,
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

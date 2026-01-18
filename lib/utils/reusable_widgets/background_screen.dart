import 'package:flutter/material.dart';
import 'package:job_tracker/utils/constants.dart';
import 'package:job_tracker/utils/reusable_widgets/auth_button.dart';
import 'package:job_tracker/utils/theme/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BackgroundScreen extends StatefulWidget {
  const BackgroundScreen({
    super.key,
  });

  @override
  State<BackgroundScreen> createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  final PageController _controller = PageController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return PageView.builder(
      itemCount: Constants.onBoardingPages.length,
      controller: _controller,
      itemBuilder: (context, index) {
        final page = Constants.onBoardingPages[index];
        return Container(
          color: AppTheme.seed,
          child: Stack(
            children: [
              Positioned(
                top: -120, // move higher
                right: -120, // move to the right
                child: Container(
                  width: 400, // bigger width
                  height: 400, // bigger height
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: const Alignment(0.9, -0.9),
                      radius: 1.2, // bigger spread
                      colors: [
                        Colors.white.withValues(alpha: 0.12), // subtle
                        Colors.white.withValues(alpha: 0.06),
                        Colors.transparent,
                      ],
                      stops: const [0.0, 0.5, 1.0],
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Jobsly",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 40),
                      SmoothPageIndicator(
                        controller: _controller,
                        count: Constants.onBoardingPages.length,
                        effect: ScrollingDotsEffect(
                          dotWidth: 15,
                          dotHeight: 7,
                          spacing: 8,
                          activeDotColor: AppTheme.background,
                          dotColor: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height * 0.7,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.white.withValues(alpha: 0.3),
                    //     spreadRadius: 10,
                    //     blurRadius: 5,
                    //   ),
                    // ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(28),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 50,
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 270, // 👈 same height for every page
                          child: FractionallySizedBox(
                            widthFactor: 1,
                            child: Image.asset(
                              page["img"],
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text("Jobsly Enterprise"),
                        const SizedBox(height: 30),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: "Transformative collaborations\n"),
                              TextSpan(text: "for larger teams"),
                            ],
                          ),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              backgroundColor: AppTheme.seed,
                            ),
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

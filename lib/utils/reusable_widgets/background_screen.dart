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
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
              itemCount: Constants.onBoardingPages.length,
              controller: _controller,
              itemBuilder: (context, index) {
                final page = Constants.onBoardingPages[index];
                return Container(
                  color: page["color"],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        page["img"],
                        width: 400,
                      ),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsetsGeometry.symmetric(vertical: 10),
                        child: SmoothPageIndicator(
                          controller: _controller,
                          count: Constants.onBoardingPages.length,
                          effect: JumpingDotEffect(
                            dotWidth: 12,
                            dotHeight: 12,
                            spacing: 8,
                            activeDotColor: AppTheme.primary,
                            dotColor: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      Text(
                        page["pageMessage"],
                        style: const TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 60,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: AuthButton(
                                color: AppTheme.textPrimary,
                                textColor: Colors.black,
                                textData: "Sign In",
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: AuthButton(
                                textColor: AppTheme.textPrimary,
                                textData: "Sign up",
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}

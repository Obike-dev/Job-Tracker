import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:job_tracker/app_features/auth/views/auth_background.dart';
import 'package:job_tracker/utils/constants.dart';
import 'package:job_tracker/utils/theme/app_theme.dart';

class AuthenticateUserPage extends ConsumerStatefulWidget {
  const AuthenticateUserPage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthenticateUserPageState();
}

class _AuthenticateUserPageState extends ConsumerState<AuthenticateUserPage> {
  @override
  Widget build(BuildContext context) {
    const SizedBox textFieldPadding = SizedBox(height: 20);
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppTheme.seed,
      body: Stack(
        children: [
          const AuthBackground(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.65, // 🔥 70% of screen
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withValues(alpha: 0.3),
                    spreadRadius: 7,
                    blurRadius: 8,
                  ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
              ),

              child: Padding(
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Get started for free",
                      style: TextStyle(
                        color: Colors.black.withValues(alpha: 0.79),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Track all your applications in one place",
                      style: TextStyle(
                        color: Colors.black.withValues(alpha: 0.79),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const TextField(),
                    textFieldPadding,
                    TextField(
                      decoration: InputDecoration(
                        suffix: const Icon(Icons.remove_red_eye_outlined),
                        suffixIconColor: Colors.black.withValues(alpha: 0.12),
                      ),
                    ),
                    textFieldPadding,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          backgroundColor: AppTheme.seed,
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        const Expanded(flex: 2, child: Divider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "Or sign up with",
                            style: TextStyle(
                              color: Colors.black.withValues(alpha: 0.5),
                            ),
                          ),
                        ),
                        const Expanded(flex: 2, child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          Constants.googleLogo,
                          height: 40,
                          // width: 30,
                        ),
                        label: const Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.black.withValues(alpha: 0.3),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          backgroundColor: AppTheme.textPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

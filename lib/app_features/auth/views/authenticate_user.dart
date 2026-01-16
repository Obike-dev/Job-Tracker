import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:job_tracker/utils/constants.dart';

class AuthenticateUserPage extends ConsumerStatefulWidget {
  final String authType;
  const AuthenticateUserPage({
    super.key,
    required this.authType,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthenticateUserPageState();
}

class _AuthenticateUserPageState extends ConsumerState<AuthenticateUserPage> {
  @override
  Widget build(BuildContext context) {
    const SizedBox textFieldPadding = SizedBox(height: 20);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   "assets/images/interview.png",
            //   width: 100,
            // ),
            Text(widget.authType),
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
                  backgroundColor: Colors.blue,
                ),
                child: const Text("Sign Up"),
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
                  width: 30,
                ),
                label: const Text(
                  'Continue with Google',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(26, 39, 45, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

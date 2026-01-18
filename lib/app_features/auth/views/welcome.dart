import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:job_tracker/utils/reusable_widgets/background_screen.dart';

class WelcomPage extends ConsumerStatefulWidget {
  const WelcomPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => WelcomPageState();
}

class WelcomPageState extends ConsumerState<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: BackgroundScreen(),
      body: BackgroundScreen(),
    );
  }
}

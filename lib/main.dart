import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:job_tracker/app_features/auth/views/authenticate_user.dart';

void main() {
  runApp(
    ProviderScope(
      child: JobTracker(),
    ),
  );
}

class JobTracker extends ConsumerWidget {
  const JobTracker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthenticateUser(),
    );
  }
}

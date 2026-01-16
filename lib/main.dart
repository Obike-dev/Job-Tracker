import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:job_tracker/app_features/auth/views/authenticate_user.dart';
import 'package:job_tracker/utils/theme/app_theme.dart';

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
      home: AuthenticateUserPage(
        authType: "Hey",
      ),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          primary: AppTheme.primary,
          surface: AppTheme.backgroundColor,
          secondary: AppTheme.secondary,
          seedColor: AppTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppTheme.elevatedButtonTheme(),
        ),
        inputDecorationTheme: AppTheme.inputDecorationTheme(),
      ),
    );
  }
}

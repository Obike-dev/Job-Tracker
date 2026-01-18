import 'package:flutter/material.dart';

// Color(0xFF301934);
class AppTheme {
  // 🌱 Seed
  static const Color seed = Color(0xFF5E3A6F);

  // 🎯 Brand
  static const Color primary = Color(0xFF836095);
  static const Color secondary = Color(0xFF6A4D9A);

  // 🧱 Surfaces
  static const Color background = Color(0xFFF5F3F7);
  static const Color surface = Color(0xFF1C1426);
  static const Color surfaceVariant = Color(0xFF2A1E38);

  // 📦 Containers
  static const Color primaryContainer = Color(0xFF3F2A4E);
  static const Color secondaryContainer = Color(0xFF4C335E);

  // 📝 Text
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFC9BBD4);
  static const Color textTertiary = Color(0xFF9E8FAE);

  // 🧩 UI details
  static const Color outline = Color(0xFF3A2B4A);
  static const Color divider = Color(0xFF2B2038);

  // 🚦 Status
  static const Color success = Color(0xFF3FB984);
  static const Color warning = Color(0xFFE3B25C);
  static const Color error = Color(0xFFE26B6B);

  // 🎨 Generate MaterialColor from seed for theming
  static ColorScheme lightColorScheme() => ColorScheme.fromSeed(
        seedColor: seed,
        brightness: Brightness.light,
        secondary: secondary,
      );

  static ColorScheme darkColorScheme() => ColorScheme.fromSeed(
        seedColor: seed,
        brightness: Brightness.dark,
        secondary: secondary,
      );

  static ButtonStyle elevatedButtonTheme() => ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
      );
  static InputDecorationTheme inputDecorationTheme() => InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.all(18),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Colors.black.withValues(alpha: 0.12),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Colors.black.withValues(alpha: 0.12),
            width: 1.5,
          ),
        ),
      );
}

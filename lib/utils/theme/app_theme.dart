import 'package:flutter/material.dart';

// Color(0xFF301934);
class AppTheme {
  // 🌌 Brand
  static const Color primary = surface; // dark rich purple
  static const Color seed = background; // seed color for Material 3 theming
  static const Color secondary = Color(0xFF5E3A6F); // lighter purple accent
  static const Color backgroundColor = Color(0xFFE8E2F0);
  // 🧱 Backgrounds
  static const Color background = Color(0xFF100B1E); // very dark background
  static const Color surface = Color(0xFF1A122E); // card / surface color

  // 📝 Text
  static const Color textPrimary = Color(0xFFFFFFFF); // high contrast
  static const Color textSecondary = Color(0xFFB9AEDD); // soft but readable

  // 🚦 Status
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);

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
        backgroundColor: seed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
      );
  static InputDecorationTheme inputDecorationTheme() => InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.all(20),
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

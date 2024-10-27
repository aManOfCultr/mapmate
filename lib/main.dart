import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapmate/screens/places.dart';
import 'package:mapmate/theme/theme.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: const Color(0xff9BB77D),
);

TextTheme textTheme = GoogleFonts.ubuntuCondensedTextTheme().copyWith(
  titleSmall: GoogleFonts.ubuntuCondensed(
    fontWeight: FontWeight.bold,
  ),
  titleMedium: GoogleFonts.ubuntuCondensed(
    fontWeight: FontWeight.bold,
  ),
  titleLarge: GoogleFonts.ubuntuCondensed(
    fontWeight: FontWeight.bold,
  ),
);

final theme = MaterialTheme(textTheme).light();
final darkTheme = MaterialTheme(textTheme).dark();

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const PlacesScreen(),
    );
  }
}

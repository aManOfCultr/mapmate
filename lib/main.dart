import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapmate/screens/places.dart';
import 'package:mapmate/theme/theme.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

void main() async{
  await dotenv.load();
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MapMate',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const PlacesScreen(),
    );
  }
}

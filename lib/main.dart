import 'package:flutter/material.dart';
import 'package:wsite/wavescompany.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme.light(
            background: Colors.white,
            surface: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.white,
          shadowColor: Colors.black.withOpacity(0.25),
          switchTheme: SwitchThemeData(
            thumbColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.white;
              }
              return Colors.white;
            }),
            trackColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.green;
              }
              return Colors.grey.shade400;
            }),
            trackOutlineColor:
                WidgetStateProperty.all(Colors.transparent),
          ),
        ),
      home: const Wsite(),
    );
  }
}

// WAVES
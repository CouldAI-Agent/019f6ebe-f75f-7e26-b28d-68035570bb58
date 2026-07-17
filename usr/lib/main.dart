import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/auth_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/main_dashboard.dart';
import 'screens/event_center_screen.dart';
import 'screens/secondary_screens.dart';
import 'screens/pvp_setup_screen.dart';
import 'screens/chess_game_screen.dart';

void main() {
  runApp(const ChessKingApp());
}

class ChessKingApp extends StatelessWidget {
  const ChessKingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess King',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF121212), // Dark theme
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/auth': (context) => const AuthScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/dashboard': (context) => const MainDashboard(),
        '/events': (context) => const EventCenterScreen(),
        '/tasks': (context) => const TaskScreen(),
        '/rank': (context) => const RankScreen(),
        '/diamonds': (context) => const DiamondScreen(),
        '/level': (context) => const LevelScreen(),
        '/pvp': (context) => const PvpSetupScreen(),
        '/chess': (context) => const ChessGameScreen(),
      },
    );
  }
}

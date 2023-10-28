import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hawks_nest_app/screen/layout/welcome/welcome.dart';

final theme = ThemeData(
  useMaterial3: true,
  textTheme: GoogleFonts.poppinsTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});
  
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initialState(){
    super.initState();
    // add the splash screen here
    hideSplashScreen();
  }

  // add the splash screen here
  Future<void> hideSplashScreen() async {
    await Future.delayed(const Duration(seconds: 9), () => {
      FlutterSplashScreen.hide()
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const WelcomeScreen(),
    );
  }
}
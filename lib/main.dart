import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:note_app/pages/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  //preferences.clear();
  initializeDateFormatting('en_US');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Colors.grey),
        useMaterial3: false,
      ),
      home: const SplashPage(),
    );
  }
}

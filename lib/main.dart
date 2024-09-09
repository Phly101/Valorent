import 'package:flutter/material.dart';
import 'package:valorent_task/UI/Home/home_screen.dart';
import 'package:valorent_task/UI/Screens/Agents/agents_screen.dart';
import 'package:valorent_task/UI/Screens/Agents_Discription/agent_info_screen.dart';
import 'package:valorent_task/UI/Screens/Maps/maps_screens.dart';
import 'package:valorent_task/UI/Screens/Weapons/weapons_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff06111C),
        primaryColor: const Color(0xffFD4556),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff06111C),
        ),
        useMaterial3: false,
        textTheme: const TextTheme(
          titleSmall: TextStyle(
              fontFamily: 'VALORANT', fontSize: 16, color: Colors.white),

          titleMedium: TextStyle(
              fontFamily: 'VALORANT', fontSize: 20, color: Colors.white),

          titleLarge: TextStyle(
              fontFamily: 'VALORANT', fontSize: 36, color: Colors.white),

        ),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        MapsScreen.routeName: (context) => const MapsScreen(),
        AgentsScreen.routeName: (context) => const AgentsScreen(),
        WeaponsScreen.routeName: (context) => const WeaponsScreen(),
        AgentInfoScreen.routeName: (context) => const AgentInfoScreen(),
      },
    );
  }
}

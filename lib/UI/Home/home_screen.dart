import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:valorent_task/UI/Screens/Agents/agents_screen.dart';
import 'package:valorent_task/UI/Screens/Maps/maps_screens.dart';
import 'package:valorent_task/UI/Screens/Weapons/weapons_screens.dart';
import 'package:valorent_task/default_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0; // To keep track of the selected tab

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      // Pass the ButtonsTabBar and content in the bodyContent property
      bodyContent: Column(

        children: [
          // TabBar should be displayed at the top
          ButtonsTabBar(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).primaryColor,
            ),
            buttonMargin: const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
            labelSpacing: 10,
            unselectedBackgroundColor: Colors.transparent,
            unselectedLabelStyle: Theme.of(context).textTheme.titleMedium,
            labelStyle: Theme.of(context).textTheme.titleMedium,
            splashColor: Theme.of(context).primaryColor,
            tabs: const [
              Tab(text: "Agents",),
              Tab(text: "Maps"),
              Tab(text: "Weapons"),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index; // Update the selectedIndex when a tab is tapped
              });
            },
          ),

          const SizedBox(height: 20), // Add some spacing between the tab and the content

          // Display the content based on the selected tab
          Expanded(
            child: tabs[selectedIndex], // Display the selected tab's content
          ),
        ],
      ),
    );
  }
}

// List of tabs (screens) that will change based on the selected index
var tabs = [
  const AgentsScreen(),
  const MapsScreen(),
  const WeaponsScreen(),
];

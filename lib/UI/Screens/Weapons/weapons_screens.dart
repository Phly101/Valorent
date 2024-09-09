import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:valorent_task/Models/Weapons/Data.dart';
import 'package:valorent_task/Models/Weapons/WeaponsResponse.dart';
import 'package:valorent_task/UI/Screens/Weapons/weapons_list_details.dart';

class WeaponsScreen extends StatefulWidget {
  static const String routeName = "Weapons_screen";
  const WeaponsScreen({super.key});

  @override
  State<WeaponsScreen> createState() => _WeaponsScreenState();
}

class _WeaponsScreenState extends State<WeaponsScreen> {

  List<Weapons> weapons = [];

  Future<void> fetchWeaponsData() async {
    final String response =
    await rootBundle.loadString('assets/Json_files_assets/Weapons.json');
    final data = await json.decode(response);
    WeaponsResponse mapsDetails = WeaponsResponse.fromJson(data);
    setState(() {
      weapons = mapsDetails.data!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchWeaponsData();
  }
  @override
  Widget build(BuildContext context) {
    return
      ListView.separated(
        itemBuilder: (context, index) => WeaponsListDetails( index: index, weapons: weapons),
        separatorBuilder: (context, index) => const SizedBox(height: 40),
        itemCount: weapons.length,
      );
  }
}

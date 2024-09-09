import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:valorent_task/Models/Maps/MapsResponse.dart';
import 'package:valorent_task/Models/Maps/ValoMap.dart';
import 'package:valorent_task/UI/Screens/Maps/map_list_details.dart';

class MapsScreen extends StatefulWidget {
  static const String routeName = "Maps_screen";

  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  List<ValoMap> maps = [];

  Future<void> fetchMapsData() async {
    final String response =
        await rootBundle.loadString('assets/Json_files_assets/Maps.json');
    final data = await json.decode(response);
    MapsResponse mapsDetails = MapsResponse.fromJson(data);
    setState(() {
      maps = mapsDetails.data!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchMapsData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => MapListDetails(maps: maps, index: index),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: maps.length,
    );
  }
}

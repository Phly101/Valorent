import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:valorent_task/UI/Screens/Agents/agent_card_widget.dart';
import 'package:valorent_task/Models/Agent/agents_details.dart';

class AgentsScreen extends StatefulWidget {
  static const String routeName = "agents_screen";

  const AgentsScreen({super.key});

  @override
  State<AgentsScreen> createState() => _AgentsScreenState();
}

class _AgentsScreenState extends State<AgentsScreen> {
  List agents = [];

  Future<void> fetchAgentsData() async {
    final String response =
        await rootBundle.loadString('assets/Json_files_assets/Agents.json');
    final data = await json.decode(response);
    AgentsDetails agentsDetails = AgentsDetails.fromJson(data);
    setState(() {
      agents = agentsDetails.data!;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchAgentsData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: agents.isEmpty
          ? const CircularProgressIndicator()
          : CarouselSlider(
              items: agents.map<Widget>((agent) {
                return AgentCardWidget(agent: agent);
              }).toList(),
              options: CarouselOptions(
                initialPage: 0,
                enableInfiniteScroll: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              )),
    );
  }



}

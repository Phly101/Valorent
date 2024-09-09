import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  final Widget bodyContent;
  final int initialTabIndex;

  const DefaultScreen({super.key, required this.bodyContent, this.initialTabIndex = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialTabIndex,
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(

          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  const SizedBox(height: 16,),
                  Image.asset("assets/App_assets/Logo Icon_tabs.png"),
                  const SizedBox(height: 10),
                  Image.asset("assets/App_assets/branding_logo_tabs.png"),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
          toolbarHeight: MediaQuery.of(context).size.height * 0.25,


        ),

        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: bodyContent,
          ),
        ),
      ),
    );
  }
}

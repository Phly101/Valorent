import 'package:flutter/material.dart';

class AgentInfoScreen extends StatelessWidget {
  static const routeName = 'agent_info_screen';

  const AgentInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var agentArgs = ModalRoute.of(context)!.settings.arguments as AgentIndoArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          agentArgs.agent.displayName,
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20),
        ),
        actions: [
          SizedBox(
              width: 36,
              height: 36,
              child: Image.network(agentArgs.agent.role.displayIcon)),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 36,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  agentArgs.agent.background,
                ),
                Positioned(
                  bottom: 50,
                  left: -100,
                  right: -100,
                  top: -90,
                  child: Hero(
                      tag: agentArgs.agent.displayName,
                      child: Image.network(agentArgs.agent.fullPortrait)),
                ),


              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0,bottom: 16),
              child: Text("Description",
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Text(
                agentArgs.agent.description,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 20),
              ),

            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0,bottom: 16,top: 16),
              child: Text("Abilities", style: Theme.of(context).textTheme.titleMedium),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white,width: 2),
                      color: Colors.transparent
                    ),
                    child: Image.network(agentArgs.agent.abilities[0].displayIcon)),
                Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white,width: 2),
                        color: Colors.transparent
                    ),
                    child: Image.network(agentArgs.agent.abilities[1].displayIcon)),
                Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white,width: 2),
                        color: Colors.transparent
                    ),
                    child: Image.network(agentArgs.agent.abilities[2].displayIcon)),
                Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white,width: 2),
                        color: Colors.transparent
                    ),
                    child: Image.network(agentArgs.agent.abilities[3].displayIcon)),


              ],
            )

          ],

        ),
      ),
    );
  }
}

class AgentIndoArgs {
  final agent;

  AgentIndoArgs({required this.agent});
}
// we need the background
// we need the Full portrait
// role display icon
// description

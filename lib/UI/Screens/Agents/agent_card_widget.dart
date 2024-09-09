import 'package:flutter/material.dart';

import '../Agents_Discription/agent_info_screen.dart';

class AgentCardWidget extends StatelessWidget {
  final  agent;

  const AgentCardWidget({super.key, required this.agent});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onDoubleTap: (){
          Navigator.pushNamed(context, AgentInfoScreen.routeName, arguments: AgentIndoArgs(agent: agent));
        },
        child: Stack(
          alignment: Alignment.bottomLeft,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.67,
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(int.parse(
                        modifyString(agent.backgroundGradientColors[0]))),
                    Color(int.parse(modifyString(agent.backgroundGradientColors[
                        agent.backgroundGradientColors.length - 1]))),
                  ],
                  stops: const [0.39, 0.99],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(80),
                ),
              ),
            ),
            agent.fullPortrait != null
                ? Positioned(
                    bottom: 50,
                    left: -100,
                    right: -100,
                    top: -90,
                    child: Hero(
                      tag: agent.displayName,
                        child: Image.network(agent.fullPortrait, fit: BoxFit.fill)),
                  )
                : const Icon(Icons.person, size: 50, color: Colors.white),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 20),
              child: Text(
                agent.displayName ?? 'Unknown Agent',
                semanticsLabel: agent.displayName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String modifyString(String colorString) {
    String modifiedString = colorString.substring( 0, colorString.length - 2);
    modifiedString = '0xff$modifiedString';

    return modifiedString;
  }
}

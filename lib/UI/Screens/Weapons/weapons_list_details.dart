import 'package:flutter/material.dart';
import 'package:valorent_task/Models/Weapons/Data.dart';

class WeaponsListDetails extends StatelessWidget {
  final int index;
  final List<Weapons> weapons;

  const WeaponsListDetails(
      {super.key, required this.index, required this.weapons});

  @override
  Widget build(BuildContext context) {
    bool isEven = index % 2 == 0;
    return Column(

      children: [
        const SizedBox(
          height: 18,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
           Container(
             width: 400,
             height: 130,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(16),
               color: const Color(0xff081E34),
             ),
           ),
           Transform(
             alignment: Alignment.center,
             transform: Matrix4.identity()
               ..rotateZ(isEven ? 0.2 : -0.4) // Tilt the image
               ..rotateY(isEven ? 0 : 3.14)
               ..rotateX(isEven ? 0 : 0),
             child: ClipRRect(
               child: Image.network(
                 weapons[index].displayIcon ?? "",
                 fit: BoxFit.contain,
                 width: MediaQuery.of(context).size.width*0.96,
                 height: MediaQuery.of(context).size.height*0.10,

               ),
             ),
           ),
            Positioned(
              left: isEven ? 16 : null, // Position text on the left for even index
              right: isEven ? null : 18, // Position text on the right for odd index
              bottom: 40,
              child: Text(
                weapons[index].displayName ?? "",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),

            Positioned(
              left: isEven ? 16 : null, // Position text on the left for even index
              right: isEven ? null : 18, // Position text on the right for odd index
              bottom: 18 ,
              child: Text(
                weapons[index].shopData?.category ?? "",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
// we need the display icon
// we need the display name
// we need the display category

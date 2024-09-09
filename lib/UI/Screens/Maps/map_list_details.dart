import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../Models/Maps/ValoMap.dart';

class MapListDetails extends StatelessWidget {
  final List<ValoMap> maps;
  final int index;

  const MapListDetails({super.key, required this.maps, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(

          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            maps[index].splash ?? "",
            loadingBuilder: (context, child, loadingProgress) {
              // Show shimmer while the image is loading
              if (loadingProgress == null) {
                // Image has fully loaded, so display the image
                return child;
              }

              // Image is still loading, show the shimmer effect
              return Shimmer.fromColors(
                baseColor: Theme.of(context).primaryColor,
                highlightColor: Theme.of(context).primaryColor.withOpacity(0.5),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.96,
                  height:MediaQuery.of(context).size.height*0.23,
                  color: Theme.of(context).primaryColor,
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.image),
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.6),
                  Colors.transparent,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    maps[index].displayName ?? "Map",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'VALORANT',
                    ),
                  ),
                ),
                Expanded(
                  child: Image.network(
                    maps[index].displayIcon ?? "",
                    errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Shimmer.fromColors(
                        baseColor: Theme.of(context).primaryColor,
                        highlightColor: Theme.of(context).primaryColor.withOpacity(0.7),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.23,
                          height: MediaQuery.of(context).size.height*0.15,
                          color: Theme.of(context).primaryColor,
                        ),
                      );
                    },


                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:for_ze_lady/models.dart';
import 'package:for_ze_lady/pages/widgets/arena.dart';
import 'package:for_ze_lady/theme.dart';
import 'package:for_ze_lady/widgets/video_player.dart';

class Portal extends StatelessWidget {
  final Destination destination;
  final bool clipReverse;

  const Portal({
    Key? key,
    required this.destination,
    this.clipReverse = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double inset = 50;
    CustomClipper<Path> ovalClipper = OvalLeftBorderClipper();
    EdgeInsets clipInset = EdgeInsets.only(left: inset);

    if (clipReverse) {
      ovalClipper = OvalRightBorderClipper();
      clipInset = EdgeInsets.only(right: inset);
    }

    return Expanded(
      // using InkWell widget to provide clickable container
      child: InkWell(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: destination.theme.secondary,
              ),
              height: 30,
              margin: const EdgeInsets.all(20),
              child: Text(destination.name),
            ),
            Expanded(
              child: Container(
                margin: clipInset,
                child: ClipPath(
                  clipper: ovalClipper,
                  child: CustomVideoPlayer(
                    fileName: destination.portalBackground,
                  ),
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Arena(
                  name: destination.name,
                  theme: destination.theme,
                  backgroundImagePath: destination.arenaBackground),
            ),
          );
        },
      ),
    );
  }
}

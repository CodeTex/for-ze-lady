import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:for_ze_lady/constants.dart';
import 'package:for_ze_lady/theme.dart';

import 'widgets/portal.dart';

class PortalPage extends StatelessWidget {
  const PortalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SafeArea pads status bar
      body: SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperOne(flip: true),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                color: SanFranciscoClouded.tealGreen,
              ),
            ),
            Portal(
              destination: swampsOfShronk,
            ),
            Portal(
              destination: landOfChivalry,
              clipReverse: true,
            ),
            Portal(
              destination: hallOfHymns,
            ),
            ClipPath(
              clipper: WaveClipperOne(reverse: true),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                color: SanFranciscoClouded.tealGreen,
                // color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

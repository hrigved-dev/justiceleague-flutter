import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justice_league/model/character_model.dart';
import 'package:justice_league/screens/detail_screen.dart';
import 'package:justice_league/styles/styles.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  CharacterWidget({this.character});


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(context, PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 350),
            pageBuilder: (context, _, __) => DetailScreen(character: character)),
        );
      },
      child: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: CharacterCardBackgroundClipper(),
                child: Hero(
                  tag: "background-${character.name}",
                  child: Container(
                  height: 0.55 * screenHeight,
                  width: 0.9 * screenWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: character.colors,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
          ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.5),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 90),
                child: Hero(
                  tag: 'image-${character.name}',
                  child: Image.asset(
                    character.imagePath,
                    height: screenHeight * 0.55,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 32, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Hero(
                    tag: "text-${character.name}",
                    child: Material(
                      color: Colors.transparent,
                        child: Container(child: Text(character.name, style: AppTheme.heading,))),
                  ),
                  Text("Tap for more", style: AppTheme.subHeading,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(
        size.width + 1, size.height - 1, size.width, size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(
        size.width - 1, 0, size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
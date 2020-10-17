import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justice_league/model/character_model.dart';
import 'package:justice_league/styles/styles.dart';

class DetailScreen extends StatefulWidget {
  final Character character;

  DetailScreen({this.character});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: "background-${widget.character.name}",
            child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: widget.character.colors,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 16),
                child: IconButton(
                  iconSize: 40,
                  icon: Icon(Icons.close),
                  color: Colors.white.withOpacity(0.9),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Hero(
                  tag: 'image-${widget.character.name}',
                  child: Image.asset(widget.character.imagePath,
                  height: screenHeight * 0.45,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: Hero(
                  tag: "text-${widget.character.name}",
                  child: Material(
                    color: Colors.transparent,
                      child: Container(child: Text(widget.character.name, style: AppTheme.heading,))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: Text(widget.character.description, style: AppTheme.subHeading,),
              ),
            ],
        ),
          ),
      ],
      ),
    );
  }
}

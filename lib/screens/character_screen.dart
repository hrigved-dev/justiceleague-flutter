import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justice_league/model/character_model.dart';
import 'package:justice_league/styles/styles.dart';
import 'package:justice_league/widget/character_widget.dart';

class CharacterScreen extends StatefulWidget {
  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.search
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Justice League",
                        style: AppTheme.display1),
                        TextSpan(text: "\n"),
                        TextSpan(text: "Characters",
                        style: AppTheme.display2),
                      ]
                    ), ),
              ),
              Expanded(child: PageView(
                controller: _pageController,
                  children: [
                for(var i = 0; i < characters.length; i++)
                  CharacterWidget(character: characters[i])]),),
            ],
          ),
        ),
      ),
    );
  }
}

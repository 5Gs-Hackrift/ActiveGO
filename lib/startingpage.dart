import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/starting_page_bg.png"),
                fit: BoxFit.cover)),
        child: MaterialApp(
            home: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'ActiveGO',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DMSans',
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Get active, meet friends and earn points!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'DMSans', fontSize: 20),
                ),
              ),
            ],
          ),
        )));
  }
}

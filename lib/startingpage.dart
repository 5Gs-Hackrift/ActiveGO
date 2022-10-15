import 'package:activego/signin_login.dart';
import 'package:activego/singpassloginpage.dart';
import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size(250, 70),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18))),
        textStyle: const TextStyle(fontSize: 20));

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
            children: [
              const Align(
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
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Get active, meet friends and earn points!\n\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'DMSans', fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 120),
                child: Text(
                  'Sign in with:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'DMSans', fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SingPassLoginPage()),
                  );
                },
                child: Column(children: [
                  Image.asset(
                    "images/singpass_logo.png",
                    width: 130,
                  ),
                ]),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'OR',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'DMSans', fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: const Text(
                    'Healthy365',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        )));
  }
}

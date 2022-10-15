import 'package:flutter/material.dart';

class SingPassLoginPage extends StatelessWidget {
  const SingPassLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Sign In',
            style: TextStyle(fontFamily: 'DMSans'),
          )),
      body: InkWell(
          onTap: () => {},
          splashColor: Colors.white10,
          child: Ink.image(
              alignment: Alignment.topCenter,
              image: const AssetImage("images/singpass_qr.png"))),
    );
  }
}

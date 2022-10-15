import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        minimumSize: const Size(200, 70),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18))),
        textStyle: const TextStyle(
            fontSize: 17, fontFamily: 'DMSans', fontWeight: FontWeight.w600));

    return Scaffold(
        appBar: AppBar(
            title: const Text('Sign In',
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                )),
            centerTitle: true,
            elevation: 0),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(35, 10, 35, 0),
                    child: const Text(
                      'Sign in to restore your account',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(35, 10, 25, 20),
                    child: const Text(
                      'Get access to your Healthpoints and data with an all new experience.',
                      style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 15,
                          height: 2,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(45, 30, 45, 20),
                  child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'NRIC or FIN\n\n\n',
                      ),
                      style: const TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(45, 30, 45, 0),
                  child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Mobile Number\n\n\n',
                      ),
                      style: const TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 70, 50, 50),
                  child: ElevatedButton(
                    style: buttonStyle,
                    onPressed: () {}, // Link to home page
                    child: const Text('Sign In'),
                  ),
                ),
                Column(
                  children: <Widget>[
                    const Divider(
                      thickness: 0,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 20),
                    const Text("Don't have an account?",
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        )),
                    const Text("Perfect time to get started!\n",
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                    Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFE4E8),
                          minimumSize: const Size(200, 50),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: const Color(0xFFFF6079),
                              fontFamily: 'DMSans',
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )));
  }
}

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(230, 75),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(18))),
    textStyle: const TextStyle(
        fontSize: 17, fontFamily: 'DMSans', fontWeight: FontWeight.w600));

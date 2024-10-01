import 'package:chat_app_dexkor/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Welcome to DexKor'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
              top: mq.height * 0.15,
              // right: _isAnimate ? mq.width * 0.25 : mq.width * .5,
              right: mq.width * 0.25,
              width: mq.width * 0.5,
              duration: const Duration(milliseconds: 500),
              child: Image.asset('assets/images/icon.png')),
          Positioned(
              bottom: mq.height * 0.15,
              left: mq.width * 0.05,
              width: mq.width * .9,
              height: mq.height * .06,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 14, 23, 192),
                    shape: StadiumBorder(),
                    elevation: 2,
                  ),
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/google.png',
                    height: mq.height * .03,
                  ),
                  label: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                        children: [
                          TextSpan(text: 'Login With \t'),
                          TextSpan(
                              text: 'Google',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ]),
                  ))),
        ],
      ),
    );
  }
}

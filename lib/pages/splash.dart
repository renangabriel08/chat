import 'package:chat/controller/prefs_controller.dart';
import 'package:chat/styles/cores.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.wait([
      PrefsController.consultarLogs(),
      Future.delayed(const Duration(seconds: 2))
    ]).then(
      (value) {
        if (value[0] == true) {
          Navigator.pushNamed(context, '/home');
        } else {
          Navigator.pushNamed(context, '/started');
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Center(
              child: Image.asset(
                'assets/logo.png',
                height: 300,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Text(
                  'Created by',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 83, 83, 83),
                  ),
                ),
                Text(
                  'Renan',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Cores.corPrimaria,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

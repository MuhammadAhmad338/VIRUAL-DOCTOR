// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wellnow/Helper/const.dart';
import 'package:wellnow/LocalStorage/localStorage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final LocalStorage _localStorage = LocalStorage();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) async {
      final isSignedIn = await _localStorage.isSignedIn();
      if (isSignedIn) {
        GoRouter.of(context).pushReplacement('/main');
      } else {
        GoRouter.of(context).pushReplacement('/virtualdoctor');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "VIRTUAL",
                style: TextStyle(
                    color: tealAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "DOCTOR",
                style: TextStyle(
                    fontSize: 28, color: teal, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

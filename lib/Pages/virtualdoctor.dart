import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wellnow/Helper/const.dart';

class VirtualDoctor extends StatefulWidget {
  const VirtualDoctor({super.key});

  @override
  State<VirtualDoctor> createState() => _VirtualDoctorState();
}

class _VirtualDoctorState extends State<VirtualDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
        ),
        Text(
          "VIRTUAL",
          style: TextStyle(
            fontSize: 28,
            wordSpacing: 2,
            color: tealAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "DOCTOR",
          style: TextStyle(
            wordSpacing: 2,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: teal,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context).push('/register');
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, // Text color
            backgroundColor: Colors.teal,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.person),
              SizedBox(
                width: 12,
              ),
              Text(
                "Sign up your account",
                style: TextStyle(
                  wordSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context).push('/login');
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.teal, // Text color
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.login),
              SizedBox(
                width: 12,
              ),
              Text(
                "Sign in your account",
                style: TextStyle(
                  wordSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Terms and Conditions",
              style: TextStyle(
                wordSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ],
    ));
  }
}

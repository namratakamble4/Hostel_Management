import 'package:flutter/material.dart';

class hostels_page extends StatelessWidget {
  const hostels_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RIT HOSTEL",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 12, 37, 58),
      )
    );
  }
}
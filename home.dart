import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Your Comfort, Our Commitment',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/rit.jpeg', // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
            ImageSliderExample(),
          ],
        ),
      ),
    );
  }
}

class ImageSliderExample extends StatefulWidget {
  @override
  _ImageSliderExampleState createState() => _ImageSliderExampleState();
}

class _ImageSliderExampleState extends State<ImageSliderExample> {
  int _currentIndex = 0;
  final List<String> imagePaths = [
    'assets/images/college1.jpeg',
    'assets/images/hostel1.jpeg',
    'assets/images/building.jpeg',
    //'assets/images/hostel3.jpeg',
    //'assets/images/hostel4.jpeg',
  ];
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % imagePaths.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 1500,
            height: 800,
            color: Colors.transparent,
            child: Image.asset(
              imagePaths[_currentIndex],
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 1500,
            height: 300,
            color: const Color.fromARGB(255, 4, 65, 116),
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                        children: [
                      Text(
                        "Rajarambapu Institute of Technology, Rajaramnagar",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Text(
                            "  Tal. Walwa Dist. Sangli, Maharashtra(415414)",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          Text(
                            "  director@ritindia.edu",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("Follow Us",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          
                        ],
                      ),

                    ]
                    
                     
                      ),
                      //child: Column()
                    ),
          ),
        ],
      ),
    );
  }
}

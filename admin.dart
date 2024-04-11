import 'package:flutter/material.dart';
import 'package:my_hostel/Hostels.dart';
import 'package:my_hostel/Rectors.dart';
import 'package:my_hostel/Wardens.dart';
import 'package:my_hostel/main.dart';
import 'package:my_hostel/mess.dart';


class AdminPage extends StatelessWidget {
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
      ),
      body: Stack(
        children: [
          //Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/rit.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 500,
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(12, 37, 58, 0.7),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('You Can Make Changes',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [

                                ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>hostels_page()
                                              ),
                                        );
                                      },
                                      child: const Text(
                                        'HOSTELS',
                                        style:  TextStyle(
                                          color:
                                              Color.fromRGBO(12, 37, 58, 0.7),
                                              fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>rectors_page()
                                              ),
                                        );
                                      },
                                      child: const Text(
                                        'Rectors',
                                        style:  TextStyle(
                                          color:
                                              Color.fromRGBO(12, 37, 58, 0.7),
                                              fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                     SizedBox(height: 20,),

                                     ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>wardens_page()
                                              ),
                                        );
                                      },
                                      child: const Text(
                                        'Wardens',
                                        style:  TextStyle(
                                          color:
                                              Color.fromRGBO(12, 37, 58, 0.7),
                                              fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                     SizedBox(height: 20,),

                                     ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>mess_page()
                                              ),
                                        );
                                      },
                                      child: const Text(
                                        'Mess',
                                        style:  TextStyle(
                                          color:
                                              Color.fromRGBO(12, 37, 58, 0.7),
                                              fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                     SizedBox(height: 20,),

                                     ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>MyApp()
                                              ),
                                        );
                                      },
                                      child: const Text(
                                        'Log Out',
                                        style:  TextStyle(
                                          color:
                                              Color.fromRGBO(12, 37, 58, 0.7),
                                              fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

   
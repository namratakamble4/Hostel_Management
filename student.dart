import 'package:flutter/material.dart';
import 'package:my_hostel/AuthService.dart';
import 'package:my_hostel/main.dart';

class StudentPage extends StatelessWidget {
  final User user;

  const StudentPage({required this.user});

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
                      height: 400,
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
                          const Text('Student Information',
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
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        ' Name: ${user.name}',
                                        style: const TextStyle(
                                            fontSize: 15, color: Colors.white),
                                        overflow: TextOverflow
                                            .ellipsis, // You can adjust this property
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.numbers,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        ' Roll Number: ${user.rollNo}',
                                        style: const TextStyle(
                                            fontSize: 15, color: Colors.white),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.paid,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        ' Hostel Fees: Rs ${user.hostelFees}',
                                        style: const TextStyle(
                                            fontSize: 15, color: Colors.white),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(height: 30,),

                                ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MyApp()),
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

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class about_page extends StatefulWidget {
  @override
  _SimpleClassExampleState createState() => _SimpleClassExampleState();
}

class _SimpleClassExampleState extends State<about_page > {
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            const Text("About Hostel",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        "Welcome to RIT HOSTEL, located in the heart of ISLAMPUR."
                        "  Whether you're a student looking for a quiet place to study and for study RIT HOSTEL's is here for you."
                        " Our hostel is more than just rooms. It's a place where modern comfort meets a friendly atmosphere. We have cozy common areas and well-equipped rooms to make you feel at home. Choose RIT HOSTEL's for a comfortable and enjoyable living experience .your home away from home.",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("What Is Special About It?",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    const SizedBox(
                      height: 20,
                    ),
                    _buildSection(
                      "Mission and Vision :",
                      "At RIT Hostel , our mission is to create a cozy and welcoming living space for everyone. We strive to provide an environment where students feel comfortable and included. Our goal is to foster a sense of community and well-being. Through our values of  respect, cooperation we aim to make RIT Hostels a place students can truly call home.",
                      isLeftAlignment: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    _buildSection(
                      "Facilities :",
                      "Discover our modern facilities designed for a vibrant community experience. From cozy common areas perfect for socializing to well-equipped study rooms and recreational spaces, we've created a living environment that enhances your hostel experience.",
                      isLeftAlignment: false,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    _buildSection(
                      "Accommodation Options :",
                      "Choose the perfect space for you from our range of accommodation options. Whether you prefer the privacy of a single room or the camaraderie of a dormitory with AC or without AC, each space is equipped with essential amenities to meet your needs and make you feel at home.",
                      isLeftAlignment: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    _buildSection(
                      "Services :",
                      "Indulge in convenient services tailored for your comfort. Our housekeeping ensures a tidy living space, laundry facilities make chores a breeze, and high-speed Wi-Fi keeps you connected. Your well-being and satisfaction are our top priorities.",
                      isLeftAlignment: false,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    _buildSection(
                      "Staff and Management :",
                      "Meet our dedicated team, committed to making your stay at [Hostel Name] enjoyable and secure. From our friendly staff to the efficient management, everyone is here to ensure your time at our hostel is memorable and worry-free.",
                      isLeftAlignment: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              );
              
          
        
    
   
  }
}
Widget _buildSection(String title, String content,
      {required bool isLeftAlignment,}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      alignment: isLeftAlignment ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        width: 700, 
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(12, 37, 58, 0.7),
          borderRadius:
              BorderRadius.circular(10.0), 
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            const SizedBox(height: 15),
            Text(
              content,
              style: const TextStyle(fontSize: 15,color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }



import 'package:flutter/material.dart';
import 'package:my_hostel/login.dart'; 
import 'package:my_hostel/aboutus.dart';
import 'package:my_hostel/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "RIT HOSTEL",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              backgroundColor: const Color.fromARGB(255, 12, 37, 58),
              leading: Padding
              (
              padding: const EdgeInsets.all(8.0),
              child:Image.asset('assets/images/logo.jpg',
              fit: BoxFit.contain,
              )
              ),

              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Container(
                  color: const Color.fromARGB(255, 15, 62, 100),
                  child: const TabBar(
                    labelPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    tabs: [
                      Flexible(child: 
                      Tab(
                        icon: Icon(Icons.home),
                      ),
                      ),
                      Flexible(child: 
                      Tab(
                        icon: Text(
                          "About Us",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      ),
                      Flexible(child: 
                      Tab(
                        icon: Text(
                          "Photos",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      ),
                      Flexible(child: 
                      Tab(
                        icon: Text(
                          "Admission",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      ),
                      Flexible(child: 
                      Tab(
                        icon: Text(
                          "Login",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      ),

                    ],
                  ),
                ),
              ),
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
                TabBarView(children: [
               Center(
                
                child: HomePage(),
                
                
              ),
                
              

              Center(
                  child: SingleChildScrollView(
                      child: Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  [
                    about_page(),
                  ]
                ),
              ))),

              const Center(child: Text("You Are In Photos Page")),

              //addmission Page
              Center(
                child: SingleChildScrollView(

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           
                             Container(
                                //width: 40,
                                padding: const EdgeInsets.all(16.0),
                                margin: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(12, 37, 58, 0.7),
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
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Boys Hostels",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        ": Rector Sir, Mr. Ashok Patil Sir",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          ": 8169039758, 9970700902",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            
                            
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              // width: 40,
                                padding: const EdgeInsets.all(16.0),
                                margin: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(12, 37, 58, 0.7),
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Girls Hostel",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        ": Rector Sir, Shila.M.Patil Mam",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          ": 8169039758, 9767556945 ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            
                        const SizedBox(height: 20),
                         Container(
                            padding: const EdgeInsets.all(16.0),
                            margin: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(12, 37, 58, 0.7),
                              borderRadius: BorderRadius.circular(10.0),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Details of Hostels",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,

                                child:DataTable(columns: const [
                                  DataColumn(
                                      label: Text(
                                    "Sr No.",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    "Hostel Name",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    "Hostel Type",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    "Number of Rooms",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    "AC Rooms",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    "Price",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ], rows: const [
                                  DataRow(
                                    cells: [
                                      DataCell(Text(
                                        "1",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      DataCell(Text(
                                        "Fairy",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      DataCell(Text(
                                        "Girls Hostel",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      DataCell(Text(
                                        "33",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      DataCell(Text(
                                        "0",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      DataCell(Text(
                                        "35,000",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ],
                                  ),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "2",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Isha",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Girls Hostel",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "33",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "35,000",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "3",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Gangotri",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Girls Hostel",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "33",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "35,000",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "4",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Haripriya",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Girls Hostel",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "33",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "35,000",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "5",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Chanakya",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Boys Hostel",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "33",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "35,000",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "6",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Dronacharya",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Boys Hostel",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "33",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "35,000",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "7",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Aaryabhatt",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Boys Hostel",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "33",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "35,000",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "8",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Bhaskaracharya",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "Boys Hostel",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "33",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                    DataCell(Text(
                                      "35,000",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ]),
                                ])
                                ),
                              ],
                            ),
                          ),
                        
                      ],
                    ),
                  ),
                ),
              ),

              //Login Page
              Center(
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
      child: Form(
        // Wrap your form with the Form widget
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(12, 37, 58, 0.7),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LoginPage(),
              
            ],
          ),
        ),
      ),
    ),
  ),
),

            ],
            )
             ]

            ),
      ),

      )
    );
  }

} 

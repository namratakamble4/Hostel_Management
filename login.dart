import 'package:flutter/material.dart';
import 'package:my_hostel/student.dart';
import 'package:my_hostel/admin.dart';
import 'package:my_hostel/AuthService.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String selectedRole = "Student";
  final AuthService authService = AuthService();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  

  // Function to show an error dialog
  Future<void> _showErrorDialog(String message) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextFormField(
            controller: usernameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Username';
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Username",
              icon: Icon(Icons.person, color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              icon: Icon(Icons.password, color: Colors.white),
              labelStyle: TextStyle(color: Colors.white),
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DropdownButton<String>(
            value: selectedRole,
            onChanged: (String? newValue) {
              setState(() {
                selectedRole = newValue!;
              });
            },
            items: <String>['Student', 'Admin'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              String username = usernameController.text;

              bool isAuthenticated = await _performLogin();

              if (isAuthenticated) {
                User user;

                try {
                  // Fetch user data
                  user = await authService.getUserData(username);
                } catch (e) {
                  _showErrorDialog('Error fetching user data');
                  return;
                }

                print("User Information - Name: ${user.name}, Roll Number: ${user.rollNo}, Hostel Fees: ${user.hostelFees}");
                print("Selected Role: $selectedRole");

                if (selectedRole == "Student") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentPage(user: user)),
                  );
                } else if (selectedRole == "Admin") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminPage()),
                  );
                }
              } else {
                _showErrorDialog('Authentication failed');
              }
            },
            child: Text(
              'Login as $selectedRole',
              style: const TextStyle(
                color: Color.fromRGBO(12, 37, 58, 0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }

  
  Future<bool> _performLogin() async {
    
    await Future.delayed(Duration(seconds: 2));

    
    return true;
  }
}

class User {
  final String name;
  final String rollNo;
  final double hostelFees;

  User({
    required this.name,
    required this.rollNo,
    required this.hostelFees,
  });
}

class AuthService {
  Future<User> getUserData(String username) async {
    // Simulate a delay (replace with actual database query logic)
    await Future.delayed(Duration(seconds: 1));

    // Replace the following lines with actual logic to fetch user data from the database
    String name = "Namrata Manik Kamble"; // Replace with actual name retrieval logic
    String rollNo = "2253005"; // Replace with actual roll number retrieval logic
    double hostelFees = 35000.0; // Replace with actual hostel fees retrieval logic

    return User(
      name: name,
      rollNo: rollNo,
      hostelFees: hostelFees,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/logo_page.dart'; // Import LogoPage to access the logo image

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // Remove app bar
        child: Container(),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFcc00cc), // cc00cc
              Colors.transparent,
              Colors.transparent,
              Color(0xFFcc00cc), // cc00cc
              Color(0xFFcc00cc), // cc00cc
            ],
            stops: [0, 0.25, 0.75, 0.75, 1],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo image from LogoPage
                  Image.asset(
                    'assets/logo.png', // Replace with your logo path
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 20), // Spacer between logo and input fields
                  // Name input field
                  TextFormField(
                    style: TextStyle(fontSize: 16, color: Colors.black87), // Text font size and color
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.black), // Label text color
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(color: Colors.black54), // Hint text color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54), // Border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Border color
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Spacer between input fields
                  // Email input field
                  TextFormField(
                    style: TextStyle(fontSize: 16, color: Colors.black87), // Text font size and color
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black), // Label text color
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Colors.black54), // Hint text color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54), // Border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Border color
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Spacer between input fields
                  // Phone input field
                  TextFormField(
                    style: TextStyle(fontSize: 16, color: Colors.black87), // Text font size and color
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      labelStyle: TextStyle(color: Colors.black), // Label text color
                      hintText: 'Enter your mobile number',
                      hintStyle: TextStyle(color: Colors.black54), // Hint text color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54), // Border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Border color
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Spacer between input fields
                  // Password input field
                  TextFormField(
                    obscureText: true, // Hide password text
                    style: TextStyle(fontSize: 16, color: Colors.black87), // Text font size and color
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black), // Label text color
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(color: Colors.black54), // Hint text color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54), // Border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Border color
                      ),
                    ),
                  ),
                  SizedBox(height: 30), // Spacer between input fields and signup button
                  // Signup button
                  ElevatedButton(
                    onPressed: () {
                      // Implement signup functionality
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18), // Button text style
                    ),
                    // Adjusting the button background color directly here
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Spacer between signup button and login option
                  // Login option
                  TextButton(
                    onPressed: () {
                      // Navigate to login page
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Already have an account? Login',
                      style: TextStyle(fontSize: 16, color: Colors.black87), // Text font size and color
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

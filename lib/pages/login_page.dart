import 'package:flutter/material.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/logo_page.dart'; // Import LogoPage to access the logo image
import 'signup_page.dart'; // Import SignupPage

class LoginPage extends StatelessWidget {
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
                  SizedBox(height: 30), // Spacer between logo and input fields
                  // Email input field
                  TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 18), // Text color and font size
                    cursorColor: Colors.black, // Cursor color
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Colors.black), // Email icon
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black), // Label text color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Border color
                        borderRadius: BorderRadius.circular(15), // Border radius
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Border color
                        borderRadius: BorderRadius.circular(15), // Border radius
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Spacer between input fields
                  // Password input field
                  TextFormField(
                    obscureText: true, // Hide password text
                    style: TextStyle(color: Colors.black, fontSize: 18), // Text color and font size
                    cursorColor: Colors.black, // Cursor color
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Colors.black), // Lock icon
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black), // Label text color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Border color
                        borderRadius: BorderRadius.circular(15), // Border radius
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Border color
                        borderRadius: BorderRadius.circular(15), // Border radius
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Spacer between input fields and forgot password
                  // Forgot password
                  TextButton(
                    onPressed: () {
                      // Implement forgot password functionality
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black, fontSize: 16), // Text color and font size
                    ),
                  ),
                  SizedBox(height: 20), // Spacer between forgot password and login button
                  // Login button with animation
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300), // Animation duration
                      width: 100, // Initial width
                      height: 50, // Initial height
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.login, color: Colors.black), // Login icon
                          SizedBox(width: 10), // Spacer between icon and text
                          Text(
                            'Login',
                            style: TextStyle(fontSize: 20, color: Colors.black), // Button text style
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white, // Set background color to white
                        borderRadius: BorderRadius.circular(30), // Button border radius
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Spacer between login button and signup option
                  // Signup option
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      'Don\'t have an account? Sign up',
                      style: TextStyle(color: Colors.black, fontSize: 16), // Text color and font size
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

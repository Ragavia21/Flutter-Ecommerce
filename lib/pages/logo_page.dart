import 'package:flutter/material.dart';
import 'package:ecommerce/pages/login_page.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Remove title for a cleaner look
        automaticallyImplyLeading: false, // Remove back button
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0, // Remove app bar elevation
      ),
      backgroundColor: Colors.transparent, // Set background color to transparent
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height, // Set container height to screen height
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
            ),
            SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height, // Set container height to screen height
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo image
                      Container(
                        width: 150, // Adjust width as needed
                        height: 150, // Adjust height as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 0, 0, 0), // Change background color of the logo container to cyanAccent
                          border: Border.all(color: const Color.fromARGB(255, 255, 254, 254), width: 2), // Add black border
                        ),
                        child: Image.asset(
                          'assets/logo.png', // Replace 'assets/logo.png' with your image path
                          fit: BoxFit.contain, // Adjust how the image fits into the container
                        ),
                      ),
                      SizedBox(height: 20), // Spacer between logo and text
                      // Altered text with custom style
                      Text(
                        'Welcome to our Shop',
                        style: TextStyle(
                          fontSize: 32, // Increase font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Change text color to white
                          fontFamily: 'Montserrat', // Change font family
                          letterSpacing: 1.5, // Add letter spacing
                        ),
                      ),
                      SizedBox(height: 40), // Spacer between text and button
                      // Shop button with custom style
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          'Explore', // Change text to "Shop Now"
                          style: TextStyle(fontSize: 24, color: Colors.black), // Increase button text size and set color to black
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white), // Set button background color to white
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 40, vertical: 15)), // Button padding
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))), // Button shape
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

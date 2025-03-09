import 'package:flutter/material.dart';
import 'firstLanding_page.dart'; 

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
                style: TextStyle(
                  fontSize: screenWidth * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                "Sign up to continue",
                style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.grey),
              ),
              SizedBox(height: screenHeight * 0.03),
              _buildTextField("Email Address"),
              _buildTextField("Password", isPassword: true),
              _buildTextField("Confirm Password", isPassword: true),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Colors.green, 
                  ),
                  Expanded(
                    child: Text(
                      "I agree with the terms & conditions and privacy policy",
                      style: TextStyle(fontSize: screenWidth * 0.035),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => FirstLandingPage()), // Navigate to FirstLandingPage
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: screenWidth * 0.045, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Center(child: Text("or sign up with", style: TextStyle(fontSize: screenWidth * 0.04))),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialButton("assets/google.png", screenWidth),
                  SizedBox(width: screenWidth * 0.05),
                  _buildSocialButton("assets/facebook.png", screenWidth),
                ],
              ),
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Already have an account? Login",
                    style: TextStyle(fontSize: screenWidth * 0.045, color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool isPassword = false}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white, 
        ),
      ),
    );
  }

  Widget _buildSocialButton(String assetPath, double screenWidth) {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(assetPath, width: screenWidth * 0.12),
    );
  }
}
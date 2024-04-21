import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Add state variables for username and password (initially empty)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Big logo icon
              Image.asset(
                'assets/images/t.jpg', // Replace with your logo image path
                width: 150.0, // Adjust width as needed
                height: 150.0, // Adjust height as needed
              ),

              SizedBox(height: 20.0),

              // Etax heading and slogan
              Text(
                "Etax",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Your Ethiopian Tax Assistant",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 20.0),

              // Username TextField with soft blue border
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
                // Add logic to capture username input
              ),

              SizedBox(height: 10.0),

              // Password TextField with soft blue border
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
                // Add logic to capture password input
              ),

              SizedBox(height: 20.0),

              // Gradient Button with blue and white combination
              Container(
                width: double.infinity, // Button expands to full width
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightBlueAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    // Add logic for login button press
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  static const gap = 60;

  static const users = [
    { 
      "email": "1@example.com", 
      "password": "123456",
      "role": "cariste"
    }, 
    { 
      "email": "2@example.com", 
      "password": "123456",
      "role": "cariste"
    },
    { 
      "email": "3@example.com", 
      "password": "123456",
      "role": "client"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 80,
        titleSpacing: 5,
        leading: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 0, horizontal: 20),
          child: Icon(Icons.account_box_outlined, color: Colors.white),
        ),
        title: const Text('Login', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/login.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 180,
            left: 30,
            right: 30,
            child: Container(
              child: Column(
                children: [
                  Text(
                    "All4Sport",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    )
                  ),

                  SizedBox(
                    height: gap.toDouble() * 2,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Email',

                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),

                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                      prefixIconColor: Colors.white,

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: gap.toDouble(),
                  ),

                  TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,

                    decoration: InputDecoration(
                      labelText: 'Password',

                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),

                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      prefixIconColor: Colors.white,

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: gap.toDouble(),
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

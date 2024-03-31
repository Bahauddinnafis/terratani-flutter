import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:terratani/navigation_menu.dart';
import 'package:terratani/screen/home_screen.dart';
import 'package:terratani/screen/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // White background container
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.fromLTRB(20, 220, 20, 0),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email address', // Your custom text here
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF219338),
                    ),
                  ), // Add spacing between text and TextField
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Input your email",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF219338))),
                      ),
                    ),
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF219338),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Input your password",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xFF219338)))),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.maxFinite,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NavigationMenu(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF219338),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  const SizedBox(height: 30),
                  const Divider(
                    color: Color(0xFF219338),
                    thickness: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Text(
                        "or",
                        style:
                            TextStyle(color: Color(0xFF219338), fontSize: 16),
                      ),
                    ),
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: "Click to ",
                            style: TextStyle(
                                color: Color(0xFF219338), fontSize: 14),
                          ),
                          TextSpan(
                            text: "Register!",
                            style: const TextStyle(
                                color: Color(0xFF219338), fontSize: 14),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/instagram_logo.png',
                        width: 42,
                        height: 42,
                      ),
                      const SizedBox(width: 40),
                      Image.asset(
                        'assets/images/google_logo.png',
                        width: 42,
                        height: 42,
                      ),
                      const SizedBox(width: 40),
                      Image.asset(
                        'assets/images/facebook_logo.png',
                        width: 42,
                        height: 42,
                      )
                    ],
                  )
                ],
              ),
            ),
            // Green background container
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height /
                  3, // Set half of the screen height
              child: Container(
                color: const Color(0xFF219338),
              ),
            ),
            // Pattern image
            Positioned(
              child: Image.asset(
                'assets/images/pattern.png',
                fit: BoxFit.fill, // Adjust the fit as needed
              ),
            ),
            Positioned(
                top: 83,
                left: 27,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/logo_white.png'),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Welcome",
                              style: GoogleFonts.manrope(
                                  fontSize: 26, color: Colors.white)),
                          TextSpan(
                              text: "\nSign in to continue",
                              style: GoogleFonts.manrope(
                                  fontSize: 17, color: Colors.white))
                        ]),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

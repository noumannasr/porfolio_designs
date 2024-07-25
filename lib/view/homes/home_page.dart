import 'package:bright_up_image/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: DrawClip2(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.5,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFF9ddbd5),
                            //Color(0xffa58fd2),
                            Color(0xffddc3fc)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomRight),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: DrawClip(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.5,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffddc3fc), Color(0xff91c5fc)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.2,
                      ),
                      Text(
                        "Login",
                        style: GoogleFonts.ubuntu(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      input("Username", false),
                      input("Password", true),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                             HomePage(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return child;
                            },
                          ));
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                          child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    const BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(2, 2),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  color: const Color(0xff6a74ce),
                                  borderRadius: BorderRadius.circular(30)),
                              height: 50,
                              child: Center(
                                  child: Text(
                                "Sign In",
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                      ),
                      Text(
                        "Forgot your password?",
                        style: GoogleFonts.ubuntu(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Text(
              "Connect with us",
              style: GoogleFonts.ubuntu(
                  color: Colors.blueGrey, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 35,
                      height: 35,
                      child: Image.asset("assets/images/facebook.png")),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset(
                      "assets/images/google.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset(
                      "assets/images/twitter.png",
                      width: 30,
                      height: 30,
                    ),
                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.ubuntu(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Sign Up",
                  style: GoogleFonts.ubuntu(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget input(String hint, bool pass) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
    child: Container(
      decoration: BoxDecoration(boxShadow: [
        const BoxShadow(
          color: Colors.black26,
          offset: Offset(2, 2),
          blurRadius: 6.0,
        ),
      ], borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.ubuntu(color: Colors.grey),
            contentPadding: const EdgeInsets.only(left: 10, right: 10),
            border: const UnderlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.7);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.08);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

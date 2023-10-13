import 'dart:ui';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF211772), Color(0xFF211772)],
              ),
            ),
          ),
          // Half-circled very blurred white background
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 400,
              child: ClipPath(
                clipper: FullCircleClipper(),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                     color: Colors.white.withOpacity(0.1)
                    ),
                    
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 143),
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Image.asset('assets/images/homepage.png', width: 200, height: 200),
                  ],
                ),
              ),
              const SizedBox(height: 42),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 80.0),
                child: const Text(
                  'Weather',
                  style: TextStyle(
                    color: Color(0xFFFFBA25),
                    fontSize: 44,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: const Text(
                  'Forecast App.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 23),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  width: 400,
                  height: 60,
                  child: const Text(
                    'It\'s the newest weather app. It has a bunch of features and that includes most of the ones that every weather app has.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 42),
              Center(
  child: ElevatedButton(
    onPressed: () {
      // Add your action here
    },
    style: ElevatedButton.styleFrom(
      primary: const Color(0xFFFFBA25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: Text(
      'Get Started',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    ),
  ),
)
,
            ],
          ),
        ],
      ),
    );
  }
}

class FullCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final radius = size.width / 1.5;
    path.addOval(Rect.fromCircle(center: Offset(radius - 100, radius), radius: radius));
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

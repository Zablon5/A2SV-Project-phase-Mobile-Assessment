import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var listDateTimes = [
      DateTime.now().subtract(const Duration(days: 6)),
      DateTime.now().subtract(const Duration(days: 6)),
      DateTime.now().subtract(const Duration(days: 6)),
      DateTime.now().subtract(const Duration(days: 6)),
      DateTime.now().subtract(const Duration(days: 6)),
      DateTime.now().subtract(const Duration(days: 6)),
      DateTime.now(),
    ];

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.arrow_back_ios),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Mexico',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF211772),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Sun, November 16',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF575757),
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Center(child: Image.asset('assets/images/homepage.png')),
                const SizedBox(height: 7),
                const Text(
                  'Mostly Sunny',
                  style: TextStyle(
                    color: Color(0xFF9E93FF),
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 5),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '30°',
                      style: TextStyle(
                        color: Color(0xFF211772),
                        fontSize: 72,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 440,
              decoration: const ShapeDecoration(
                color: Color(0xFF211772),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x33211772),
                    blurRadius: 10,
                    offset: Offset(0, -4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    const Text(
                      'Every day',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0.07,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        height: 440,
                        child: ListView.builder(
                          itemCount: listDateTimes.length,
                          itemBuilder: (context, index) {

                            return Padding(
                              padding: const EdgeInsets.only(top: 23.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Mon, Nov 17',
                                    style: TextStyle(
                                      color: Color(0xFFD8D8D8),
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '33',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(width: 23),
                                      const Text(
                                        '24',
                                        style: TextStyle(
                                          color: Color(0xFFD8D8D8),
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(width: 28),
                                      Image.asset("assets/images/mostlysunny.png"),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

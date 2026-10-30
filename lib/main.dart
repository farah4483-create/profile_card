
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const Color darkPink = Color(0xFF78334F);
  static const Color dustyPink = Color(0xFFB87F94);
  static const Color background = Color(0xFFFFF7F7);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Georgia',
        scaffoldBackgroundColor: background,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 75,
          title: const Text(
            'My Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFC992A5),
                  Color(0xFFA66E87),
                ],
              ),
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 900,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        // Main profile card
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 35,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFF1BAC7),
                                Color(0xFFFFE7E8),
                                Color(0xFFDCC5E8),
                              ],
                            ),
                            borderRadius:
                            BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: dustyPink.withOpacity(0.25),
                                blurRadius: 22,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: darkPink.withOpacity(0.2),
                                      blurRadius: 15,
                                      offset: const Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: const CircleAvatar(
                                  radius: 53,
                                  backgroundColor:
                                  Color(0xFFFFDDE4),
                                  child: Text(
                                    'FA',
                                    style: TextStyle(
                                      fontSize: 38,
                                      color: darkPink,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Farah',
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: darkPink,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Information Technology',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Color(0xFF654D5A),
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment:
                                WrapCrossAlignment.center,
                                spacing: 8,
                                children: [
                                  Icon(
                                    Icons.school_rounded,
                                    color: darkPink,
                                    size: 23,
                                  ),
                                  Text(
                                    'Libyan International University',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF654D5A),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 25),

                        // Statistics cards
                        const Row(
                          children: [
                            Expanded(
                              child: StatCard(
                                number: '4',
                                label: 'Year',
                                icon: Icons.calendar_month_rounded,
                                color: Color(0xFFEFA4B8),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: StatCard(
                                number: '6',
                                label: 'Courses',
                                icon: Icons.menu_book_rounded,
                                color: Color(0xFFC5A3DD),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: StatCard(
                                number: '3',
                                label: 'Projects',
                                icon: Icons.folder_open_rounded,
                                color: Color(0xFFF0B2A5),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 25),

                        // About me card
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: dustyPink.withOpacity(0.15),
                                blurRadius: 20,
                                offset: const Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                    Color(0xFFFBE0E8),
                                    child: Icon(
                                      Icons.person_rounded,
                                      color: darkPink,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'About me',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: darkPink,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Container(
                                height: 3,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: dustyPink,
                                  borderRadius:
                                  BorderRadius.circular(5),
                                ),
                              ),
                              const SizedBox(height: 18),
                              const Text(
                                'I love learning new things every day. '
                                    'I am passionate about technology and '
                                    'building creative solutions. My goal is '
                                    'to improve my skills and become a '
                                    'professional in the IT field.',
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 1.8,
                                  color: Color(0xFF62525B),
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.laptop_mac_rounded,
                                  size: 65,
                                  color: Color(0xFFD79CAE),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 30),

                        const Text(
                          'Made with Flutter  ♡',
                          style: TextStyle(
                            color: dustyPink,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Reusable statistics card
class StatCard extends StatelessWidget {
  final String number;
  final String label;
  final IconData icon;
  final Color color;

  const StatCard({
    super.key,
    required this.number,
    required this.label,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: color.withOpacity(0.25),
            child: Icon(
              icon,
              color: MyApp.darkPink,
              size: 25,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            number,
            style: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: MyApp.darkPink,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF62525B),
            ),
          ),
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 182, 221, 103),
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          toolbarHeight: 100,
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Header with image background and adjusted size
              Stack(
                children: [
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/wave_kanagawa.jpg'),
                        fit: BoxFit.fill, // Ensures the image maintains its aspect ratio and covers the area
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.black.withOpacity(0.5), // Overlay to make text visible
                    child: const Text(
                      'GET TO KNOW ME BETTER!',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Profile Section
                      Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.white,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage('assets/profile_picture.png'),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'CAR ALINSOD TORRES',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'West Visayas State University',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: const Color.fromARGB(255, 3, 31, 133),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Information Section
                      Expanded(
                        child: ListView(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              color: Colors.white,
                              child: Column(
                                children: [
                                  buildInfoRow(Icons.cake, 'Birthdate',
                                      'March 16, 2004'),
                                  buildInfoRow(Icons.location_on, 'Address',
                                      'Barangay So-oc Arevalo, Iloilo, Philippines'),
                                  buildInfoRow(Icons.email, 'Email',
                                      'car.torres@wvsu.edu.ph'),
                                  buildInfoRow(Icons.phone, 'Phone Number',
                                      '09511012810'),
                                  buildInfoRow(Icons.computer, 'Course',
                                      'Bachelor of Science in Computer Science'),
                                  buildInfoRow(Icons.favorite, 'Hobbies',
                                      'Traveling to places, Eating good food, Sleeping, Computer Games and many more'),
                                ],
                              ),
                            ),

                            const SizedBox(height: 20),

                            // Biography Section
                            Container(
                              padding: const EdgeInsets.all(16),
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'My Biography',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    
                                    'Hi! My name is Car Alinsod Torres, and I am a student at West Visayas State University, pursuing a Bachelor of Science in Computer Science. Ever since I was young, I have been fascinated by technology and its ability to shape the future. This passion led me to choose Computer Science as my field of study, where I aim to become proficient in software development, problem-solving, and innovation.'
                                       
                                      'Aside from academics, I enjoy spending time on my hobbies such as reading novels, playing sports, and indulging in computer games. I believe these activities not only allow me to relax but also help me think creatively and strategically, qualities that are essential in both my personal and academic life.'
                                       
                                      'As someone who values continuous growth, I am always open to learning new things and taking on challenges. I look forward to building a successful career in the tech industry, where I can contribute to the development of cutting-edge technologies that can make a real impact in the world.',
                                    
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.5,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to create rows of information
  Widget buildInfoRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: const Color.fromARGB(255, 0, 19, 86)),
          const SizedBox(width: 16),
          Text(
            '$title: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}


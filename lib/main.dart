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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> items = const [
    {"title": "Flutter", "subtitle": "Cross-platform UI framework"},
    {"title": "GitHub", "subtitle": "Version control platform"},
    {"title": "Dart", "subtitle": "Programming language for Flutter"},
    {"title": "Firebase", "subtitle": "Backend services"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: const Text("GitHub Training Project"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 2,
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple.shade50,
                        Colors.deepPurple.shade100,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      child: Text(
                        items[index]["title"]![0],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      items[index]["title"]!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ),
                    subtitle: Text(
                      items[index]["subtitle"]!,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.deepPurple,
                    ),
                  ),
                );
              },
            ),
          ),

          // ⭐ Footer
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: const Text(
              "© 2026 GitHub Training Project - All Rights Reserved",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
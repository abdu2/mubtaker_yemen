import 'package:flutter/material.dart';

class IdeaDetailsScreen extends StatelessWidget {
  final Map<String, String> idea;
  const IdeaDetailsScreen({super.key, required this.idea});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(idea['title']!, style: const TextStyle(color: Color(0xFFD4AF37))),
        iconTheme: const IconThemeData(color: Color(0xFFD4AF37)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              idea['title']!,
              style: const TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'بواسطة: ${idea['owner']}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 24),
            const Text(
              'وصف الفكرة:',
              style: TextStyle(color: Color(0xFFD4AF37), fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              idea['desc']!,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'idea_details_screen.dart';
import 'add_idea_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> ideas = const [
    {
      'title': 'مولد كهربائي صغير الحجم',
      'owner': 'أحمد علي',
      'desc': 'مولد كهربائي باستخدام ضغط الماء المنخفض'
    },
    {
      'title': 'تطبيق ذكي للري الزراعي',
      'owner': 'فاطمة محمد',
      'desc': 'ري ذكي يوفر 60% من استهلاك المياه'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('مبتكر اليمن', style: TextStyle(color: Color(0xFFD4AF37))),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Color(0xFFD4AF37)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const AddIdeaScreen(),
              ));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: ideas.length,
        itemBuilder: (context, index) {
          final idea = ideas[index];
          return Card(
            color: Colors.grey[900],
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(idea['title']!, style: const TextStyle(color: Color(0xFFD4AF37))),
              subtitle: Text('بواسطة: ${idea['owner']}', style: const

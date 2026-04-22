import 'package:flutter/material.dart';
import 'idea_details_screen.dart';
import 'add_idea_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> ideas = const [
    {
      'title': 'مولد كهربائي يعمل بالماء',
      'owner': 'أحمد علي',
      'desc': 'اختراع لتوليد الكهرباء باستخدام ضغط الماء بتكلفة منخفضة'
    },
    {
      'title': 'تطبيق ذكي للري الزراعي',
      'owner': 'فاطمة محمد',
      'desc': 'نظام ري ذكي يوفر 60% من استهلاك المياه'
    },
    {
      'title': 'كرسي متحرك بالطاقة الشمسية',
      'owner': 'خالد سعيد',
      'desc': 'كرسي متحرك يعمل بالطاقة الشمسية لمساعدة ذوي الاحتياجات'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('مبتكر اليمن', style: TextStyle(color: Color(0xFFD4AF37))),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: ideas.length,
        itemBuilder: (context, index) {
          final idea = ideas[index];
          return Card(
            color: const Color(0xFF1A1A1A),
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(idea['title']!, style: const TextStyle(color: Color(0xFFD4AF37))),
              subtitle: Text('بواسطة: ${idea['owner']}', style: const TextStyle(color: Colors.white70)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IdeaDetailsScreen(idea: idea),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFD4AF37),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddIdeaScreen()),
          );
        },
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}

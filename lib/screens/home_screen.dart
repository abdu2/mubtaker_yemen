
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String _phoneNumber = '770880494';
  final String _whatsappNumber = '967770880494';

  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مبتكر اليمن', style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color(0xFF1A1A1A),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Color(0xFFD4AF37)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // شريط البحث
            TextField(
              decoration: InputDecoration(
                hintText: 'ابحث عن فكرة أو مبتكر...',
                hintStyle: TextStyle(color: Colors.grey[600]),
                prefixIcon: const Icon(Icons.search, color: Color(0xFFD4AF37)),
                filled: true,
                fillColor: const Color(0xFF1A1A1A),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            // لافتة المشاريع
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A1A),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFD4AF37), width: 1),
              ),
              child: Row(
                children: [
                  const Icon(Icons.lightbulb_outline, color: Color(0xFFD4AF37), size: 40),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('لديك فكرة مشروع؟', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        Text('انشر فكرتك الآن واجذب المستثمرين', style: TextStyle(color: Colors.grey[400])),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, color: Color(0xFFD4AF37)),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFD4AF37),
        child: const Icon(Icons.add, color: Colors.black),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF1A1A1A),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.home, color: Color(0xFFD4AF37)), onPressed: () {}),
            IconButton(icon: const Icon(Icons.favorite_border, color: Colors.grey), onPressed: () {}),
            IconButton(icon: const Icon(Icons.add_circle_outline, color: Colors.grey), onPressed: () {}),
            IconButton(
              icon: const Icon(Icons.phone, color: Colors.grey),
              onPressed: () => _launchURL('tel:$_phoneNumber'),
            ),
            IconButton(
              icon: const Icon(Icons.chat, color: Colors.grey),
              onPressed: () => _launchURL('https://wa.me/$_whatsappNumber'),
            ),
          ],
        ),
      ),
    );
  }
}

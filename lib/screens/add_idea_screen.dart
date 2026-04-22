import 'package:flutter/material.dart';

class AddIdeaScreen extends StatelessWidget {
  const AddIdeaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('إضافة فكرة جديدة', style: TextStyle(color: Color(0xFFD4AF37))),
        iconTheme: const IconThemeData(color: Color(0xFFD4AF37)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'عنوان الفكرة',
                labelStyle: TextStyle(color: Color(0xFFD4AF37)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD4AF37)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD4AF37)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descController,
              maxLines: 5,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'وصف الفكرة',
                labelStyle: TextStyle(color: Color(0xFFD4AF37)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD4AF37)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD4AF37)),
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD4AF37),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('تم حفظ الفكرة بنجاح')),
                );
                Navigator.pop(context);
              },
              child: const Text('حفظ الفكرة', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

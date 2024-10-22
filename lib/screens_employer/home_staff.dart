import 'package:flutter/material.dart';

class HomeStaffScreen extends StatelessWidget {
  final String staff_id;

  const HomeStaffScreen({super.key, required this.staff_id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าหลักพนักงาน'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'สวัสดีพนักงาน',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'ID: $staff_id',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.sell),
              title: const Text('บันทึกการขายน้ำมัน'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/sales',
                  arguments: {'staff_id': staff_id},
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.card_giftcard),
              title: const Text('รับสินค้าที่แลกไว้'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/get_rewarded',
                  arguments: {'staff_id': staff_id},
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('ออกจากระบบ'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'ยินดีต้อนรับพนักงาน (ID: $staff_id)',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
        ),
      ),
    );
  }
}

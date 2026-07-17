import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Profile & Level
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        child: Icon(Icons.person),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {}, // Level logic
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Text('⚡️ Level 4'),
                        ),
                      ),
                    ],
                  ),
                  // Diamonds
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/diamonds'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        children: [
                          Text('💎 1500'),
                          SizedBox(width: 4),
                          Icon(Icons.add_circle, size: 16),
                        ],
                      ),
                    ),
                  ),
                  // Events
                  IconButton(
                    icon: const Text('🪩', style: TextStyle(fontSize: 24)),
                    onTap: () => Navigator.pushNamed(context, '/events'),
                  ),
                ],
              ),
            ),
            
            Expanded(
              child: Center(
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, '/pvp'),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.shade300,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'PVP\n1v1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => Navigator.pushNamed(context, '/tasks'),
                    icon: const Text('📒'),
                    label: const Text('Tasks'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => Navigator.pushNamed(context, '/rank'),
                    icon: const Text('🎪'),
                    label: const Text('Rank'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

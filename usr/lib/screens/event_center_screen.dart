import 'package:flutter/material.dart';

class EventCenterScreen extends StatelessWidget {
  const EventCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Center'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Bonus', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 16 / 9,
            children: [
              _buildEventCard('Rose Holiday', '10% Bonus'),
              _buildEventCard('Summer Fest', 'Return!'),
            ],
          ),
          const SizedBox(height: 24),
          const Text('Recommend', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 16 / 9,
            children: [
              _buildEventCard('PK Challenge', 'Live Now'),
              _buildEventCard('Lucky Number', 'New'),
              _buildEventCard('Tycoon Collab', ''),
              _buildEventCard('Chess Master', 'Top 100'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEventCard(String title, String badge) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          const Center(child: Icon(Icons.image, color: Colors.white54, size: 40)),
          if (badge.isNotEmpty)
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                color: Colors.redAccent,
                child: Text(badge, style: const TextStyle(color: Colors.white, fontSize: 10)),
              ),
            ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}

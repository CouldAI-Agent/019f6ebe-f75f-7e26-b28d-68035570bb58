import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  Widget _buildBubbleButton(IconData icon, String label, Color color, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: color, width: 2),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 2,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background lion on chessboard
          Image.network(
            'https://images.unsplash.com/photo-1610631070868-80e9fbcf1966?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.6),
            colorBlendMode: BlendMode.darken,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome to Chess King',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.amber),
                  ),
                  const SizedBox(height: 40),
                  _buildBubbleButton(Icons.g_mobiledata, 'Continue with Google', Colors.redAccent, () {
                    Navigator.pushReplacementNamed(context, '/onboarding');
                  }),
                  _buildBubbleButton(Icons.facebook, 'Continue with Facebook', Colors.blueAccent, () {
                    Navigator.pushReplacementNamed(context, '/onboarding');
                  }),
                  _buildBubbleButton(Icons.apple, 'Continue with Apple', Colors.white54, () {
                    Navigator.pushReplacementNamed(context, '/onboarding');
                  }),
                  _buildBubbleButton(Icons.phone, 'Login with Number', Colors.green, () {
                    Navigator.pushReplacementNamed(context, '/onboarding');
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

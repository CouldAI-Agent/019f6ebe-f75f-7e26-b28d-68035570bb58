import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  String selectedCountry = 'India';
  final String userId = '12345678';
  bool acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup Profile'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Photo Option
              GestureDetector(
                onTap: () {
                  // Trigger image picker
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.amber, width: 3),
                  ),
                  child: const Icon(Icons.camera_alt, size: 40, color: Colors.white54),
                ),
              ),
              const SizedBox(height: 24),
              Text('User ID: $userId', style: const TextStyle(fontSize: 18, color: Colors.amber)),
              const SizedBox(height: 32),
              // Country Select
              DropdownButtonFormField<String>(
                value: selectedCountry,
                dropdownColor: Colors.grey[900],
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Select Country',
                  labelStyle: const TextStyle(color: Colors.amber),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amber),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amber, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                items: ['India', 'USA', 'UK', 'Australia', 'Canada']
                    .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    selectedCountry = val!;
                  });
                },
              ),
              const SizedBox(height: 32),
              // T&C
              Row(
                children: [
                  Checkbox(
                    value: acceptedTerms,
                    activeColor: Colors.amber,
                    onChanged: (val) {
                      setState(() {
                        acceptedTerms = val ?? false;
                      });
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'I agree to the Terms and Conditions. This app is secure, and your data is protected.',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              // Continue Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: acceptedTerms ? Colors.amber : Colors.grey,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: acceptedTerms
                    ? () {
                        Navigator.pushReplacementNamed(context, '/dashboard');
                      }
                    : null,
                child: const Text('Enter Chess King', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

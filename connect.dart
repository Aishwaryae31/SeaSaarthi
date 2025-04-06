import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fishermen Connect'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://your-profile-image-url.com'), // Replace with your image
            ),
          ),
        ],
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://your-boat-image-url.com', // Replace with your boat image
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildTextField('Name'),
                  _buildTextField('Contact No.'),
                  _buildTextField('Area of fishing'),
                  _buildTextField('Address', maxLines: 3),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text('Submit'),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        child: const Text('Log in'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  BottomNavigationBar(
                    backgroundColor: Colors.blue[900],
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.white,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.location_on), label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.group), label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: ''),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        style: const TextStyle(color

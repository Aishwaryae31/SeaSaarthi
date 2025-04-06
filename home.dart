import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SeaSaarthi'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          const Icon(Icons.notifications_none),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(right: 10),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'GOOD MORNING, CAPTAIN',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Perfect weather for fishing today!',
              style: TextStyle(color: Colors.yellowAccent, fontSize: 16),
            ),
            const SizedBox(height: 30),
            _buildButton(
              text: 'SOS Alert',
              color: Colors.red,
              icon: Icons.warning,
              onPressed: () {
                // Handle SOS Alert
              },
            ),
            _buildButton(
              text: 'Market Place',
              color: Colors.blueAccent,
              icon: Icons.store,
              onPressed: () {
                // Handle Market Place
              },
            ),
            _buildButton(
              text: '274 K',
              color: Colors.lightBlue,
              icon: Icons.wb_sunny,
              onPressed: () {
                // Handle Weather Info
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Quick Access',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildQuickAccessButton(Icons.gps_fixed, 'GPS'),
                _buildQuickAccessButton(Icons.security, 'Security'),
                _buildQuickAccessButton(Icons.receipt, 'Report'),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }

  Widget _buildButton(
      {required String text,
      required Color color,
      required IconData icon,
      required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        icon: Icon(icon, color: Colors.white),
        label: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
  }

  Widget _buildQuickAccessButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.blue[900]),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

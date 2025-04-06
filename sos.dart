import 'package:flutter/material.dart';

class EmergencySOSScreen extends StatelessWidget {
  const EmergencySOSScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency SOS'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://your-profile-image-url.com'), // Replace with your profile pic
            ),
          ),
        ],
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Image.asset(
              'assets/sos_image.png', // Add your SOS image in assets
              height: 150,
            ),
            const SizedBox(height: 10),
            const Text(
              'Press and hold to activate Emergency Signal',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            _buildAutoAlertSwitch(),
            const SizedBox(height: 30),
            _buildCurrentLocationCard(),
            const SizedBox(height: 30),
            _buildEmergencyContactCard(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBottomButton(Icons.mic, 'Voice Message'),
                _buildBottomButton(Icons.videocam, 'Video Message'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }

  Widget _buildAutoAlertSwitch() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              'Auto-Alert\nAlert if no Movement detected for 30 min.',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Switch(
            value: true,
            onChanged: (bool value) {
              // Handle switch toggle
            },
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentLocationCard() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('Map View'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Latitude: 18.921984\nLongitude: 72.834654',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Share Location
              },
              icon: const Icon(Icons.share),
              label: const Text('Share Location'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmergencyContactCard() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.orange,
          child: Icon(Icons.security, color: Colors.white),
        ),
        title: const Text('Coast Guard'),
        subtitle: const Text('Emergency Response'),
        trailing: Wrap(
          spacing: 10,
          children: [
            IconButton(
              icon: const Icon(Icons.call, color: Colors.green),
              onPressed: () {
                // Call Emergency
              },
            ),
            IconButton(
              icon: const Icon(Icons.message, color: Colors.blue),
              onPressed: () {
                // Send Message
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButton(IconData icon, String label) {
    return ElevatedButton.icon(
      onPressed: () {
        // Handle Voice or Video Message
      },
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

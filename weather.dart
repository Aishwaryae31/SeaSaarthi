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
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://your-profile-image-url.com'), // Replace with profile image URL
            ),
          ),
        ],
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue[800],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildWeatherCard(),
            const SizedBox(height: 20),
            _buildBestSpotsCard(),
            const SizedBox(height: 20),
            _buildEcoTipsCard(),
            const SizedBox(height: 20),
            _buildFishScannerCard(),
            const SizedBox(height: 20),
            _buildReportProblemCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[800],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }

  Widget _buildWeatherCard() {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: Text(
                    "Today's Weather",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.wb_sunny_outlined),
              ],
            ),
            const SizedBox(height: 5),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Perfect for fishing!'),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Column(
                  children: [
                    Text('28º', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    Text('Temp.'),
                  ],
                ),
                Column(
                  children: [
                    Text('12Km/hr', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    Text('Wind'),
                  ],
                ),
                Column(
                  children: [
                    Text('75%', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    Text('Humidity'),
                  ],
                ),
                Column(
                  children: [
                    Text('0.8m', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    Text('Waves'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBestSpotsCard() {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.place_outlined),
            SizedBox(height: 10),
            Text(
              'Best Spots',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Find sustainable fishing locations'),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: 18),
                SizedBox(width: 5),
                Text('Blue Bay Marina'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: 18),
                SizedBox(width: 5),
                Text('Coral Reef Point'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEcoTipsCard() {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.lightbulb_outline),
            SizedBox(height: 10),
            Text(
              'Eco Tips',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Sustainable fishing guides'),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.check, size: 18),
                SizedBox(width: 5),
                Text('Use circle hooks'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check, size: 18),
                SizedBox(width: 5),
                Text('Check size limits'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFishScannerCard() {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(height: 10),
            const Text(
              'Fish Scanner',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text('Identify fish species'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Scan Fish Action
              },
              icon: const Icon(Icons.camera_alt),
              label: const Text('Scan Fish'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReportProblemCard() {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Icon(Icons.report_problem_outlined),
            const SizedBox(height: 10),
            const Text(
              'Report Problem',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text('Help keep waters clean'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // New Report Action
              },
              icon: const Icon(Icons.add),
              label: const Text('New Report'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
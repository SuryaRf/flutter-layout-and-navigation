import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout: Surya Rahmat Fatahillah & 2341760020',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Layout Surya',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image Section
              _buildImageSection(),
              
              const SizedBox(height: 24),
              
              // Information Section
              _buildInfoSection(),
              
              const SizedBox(height: 24),
              
              // Action Buttons Section
              _buildActionButtons(),
              
              const SizedBox(height: 24),
              
              // Description Section
              _buildDescriptionSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/swiss.jpg',
          width: double.infinity,
          height: 240,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildInfoSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Location Information
          Expanded(
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jungfraujoch',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Jungfrau, Switzerland',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          
          // Star Rating
          _buildStarRating(),
        ],
      ),
    );
  }

  Widget _buildStarRating() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.amber[600],
          size: 28,
        ),
        const SizedBox(width: 2),
        Icon(
          Icons.star,
          color: Colors.amber[600],
          size: 28,
        ),
        const SizedBox(width: 2),
        Icon(
          Icons.star,
          color: Colors.amber[600],
          size: 28,
        ),
        const SizedBox(width: 2),
        Icon(
          Icons.star,
          color: Colors.amber[600],
          size: 28,
        ),
        const SizedBox(width: 2),
        Icon(
          Icons.star_outline,
          color: Colors.amber[600],
          size: 28,
        ),
        const SizedBox(width: 8),
        Text(
          '4.0',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildActionButton(
            icon: Icons.call,
            label: 'CALL',
            color: Colors.blue,
          ),
          _buildActionButton(
            icon: Icons.near_me,
            label: 'ROUTE',
            color: Colors.blue,
          ),
          _buildActionButton(
            icon: Icons.share,
            label: 'SHARE',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: color,
          size: 28,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        'Jungfraujoch, dikenal sebagai “Top of Europe”, terletak di Bernese Alps pada ketinggian 3.454 meter di atas permukaan laut. Destinasi ini dapat dicapai melalui perjalanan kereta cogwheel yang menakjubkan dari Interlaken via Kleine Scheidegg, melewati terowongan spektakuler di dalam pegunungan Eiger dan Mönch. Sesampainya di Jungfraujoch, pengunjung disuguhi panorama memukau Aletsch Glacier, gletser terpanjang di Eropa. Di musim dingin maupun musim panas, suhu tetap dingin, sehingga pengunjung dapat menikmati aktivitas seperti bermain salju, ski, mengunjungi Ice Palace, hingga berjalan di observatorium Sphinx yang menawarkan pemandangan 360 derajat Pegunungan Alpen Swiss.',
        style: TextStyle(
          fontSize: 16,
          height: 1.6,
          color: Colors.grey[700],
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
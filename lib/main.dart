  import 'package:flutter/material.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Jungfraujoch Explorer',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF2196F3),
            brightness: Brightness.light,
          ),
          fontFamily: 'Roboto',
        ),
        home: const TravelDetailPage(),
      );
    }
  }

  class TravelDetailPage extends StatelessWidget {
    const TravelDetailPage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero Image Section
              _buildHeroImage(),
              
              // Content Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title Section
                    _buildTitleSection(),
                    
                    const SizedBox(height: 24),
                    
                    // Action Buttons Section
                    _buildActionButtons(context),
                    
                    const SizedBox(height: 24),
                    
                    // Description Section
                    _buildDescriptionSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _buildHeroImage() {
      return Container(
        height: 280,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade400,
              Colors.blue.shade600,
            ],
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        child: Stack(
          children: [
            // Placeholder for image (you can replace with actual image)
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/swiss.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Gradient overlay
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.3),
                  ],
                ),
              ),
            ),
            // Back button
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.2),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildTitleSection() {
      return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jungfraujoch',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          'Bernese Alps, Switzerland',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.amber.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.amber.shade200,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber[700],
                    size: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '4.8',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.amber[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildActionButtons(BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildModernActionButton(
              icon: Icons.call,
              label: 'CALL',
              color: Colors.blue,
              onTap: () {},
            ),
            _buildModernActionButton(
              icon: Icons.near_me,
              label: 'ROUTE',
              color: Colors.green,
              onTap: () {},
            ),
            _buildModernActionButton(
              icon: Icons.share,
              label: 'SHARE',
              color: Colors.orange,
              onTap: () {},
            ),
          ],
        ),
      );
    }

    Widget _buildModernActionButton({
      required IconData icon,
      required String label,
      required Color color,
      required VoidCallback onTap,
    }) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 24,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: color,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ),
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
              color: Colors.grey.withOpacity(0.08),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Destinasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Jungfraujoch, dikenal sebagai "Top of Europe", terletak di Bernese Alps pada ketinggian 3.454 meter di atas permukaan laut. '
              'Destinasi ini dapat dicapai melalui perjalanan kereta cogwheel melewati terowongan spektakuler di dalam pegunungan Eiger dan Mönch.',
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.blue.shade100,
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.blue[700],
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Surya Rahmat Fatahillah - NIM: 2341760020',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_page.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF7D1C4A),
        title: Text(
          'ReLuv',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                '💙 Welcome to ReLuv – A Fresh Chapter in Love',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF7D1C4A),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Love isn\'t just for the beginning. Sometimes, it\'s even more meaningful the second time around.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Whether you\'re divorced or widowed, ReLuv is built for you — a community of real people who understand life\'s turns and are ready to start a new, beautiful journey.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                '💬 Why ReLuv?',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF7D1C4A),
                ),
              ),
              const SizedBox(height: 20),
              _buildFeatureItem(
                'Respectful Community',
                'Every profile is verified. We value empathy, honesty, and kindness.',
              ),
              _buildFeatureItem(
                'Tailored for You',
                'Match with people who understand your journey and want the same things as you.',
              ),
              _buildFeatureItem(
                'Safe Space to Heal and Grow',
                'Take your time. There\'s no rush. We\'re here when you\'re ready.',
              ),
              const SizedBox(height: 40),
              Text(
                '💡 Features You\'ll Love',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF7D1C4A),
                ),
              ),
              const SizedBox(height: 20),
              _buildFeatureIcon('💞', 'Match by values, not just interests'),
              _buildFeatureIcon('🗓️', 'Join curated events and support circles'),
              _buildFeatureIcon('💬', 'Guided conversation starters to ease the first step'),
              _buildFeatureIcon('🔐', 'Privacy-first approach for your peace of mind'),
              const SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    Text(
                      '👉 Start your next chapter today.',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF7D1C4A),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'You\'re not alone — and it\'s never too late for love.',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF7D1C4A),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureIcon(String emoji, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Text(
            emoji,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 
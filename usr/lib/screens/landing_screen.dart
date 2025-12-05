import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.payments, color: Theme.of(context).primaryColor),
            const SizedBox(width: 8),
            const Text('PayFlow'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/login'),
            child: const Text('Login'),
          ),
          const SizedBox(width: 16),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/login'), // Simulating register -> login
            child: const Text('Get Started'),
          ),
          const SizedBox(width: 24),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(context),
            _buildFeaturesSection(context),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      color: Theme.of(context).primaryColor.withOpacity(0.05),
      child: Column(
        children: [
          Text(
            'Secure Payments for the Internet Age',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
          ),
          const SizedBox(height: 24),
          Text(
            'Send money, pay bills, and manage your finances with ease.\nFast, secure, and reliable.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.grey[700],
                ),
          ),
          const SizedBox(height: 48),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/dashboard'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('Create Free Account'),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Wrap(
            spacing: 32,
            runSpacing: 32,
            alignment: WrapAlignment.center,
            children: [
              _buildFeatureCard(
                context,
                Icons.security,
                'Secure Transactions',
                'Bank-grade encryption keeps your money safe.',
              ),
              _buildFeatureCard(
                context,
                Icons.flash_on,
                'Instant Transfers',
                'Send money to anyone, anywhere, instantly.',
              ),
              _buildFeatureCard(
                context,
                Icons.analytics,
                'Smart Analytics',
                'Track your spending with detailed reports.',
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context, IconData icon, String title, String description) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Theme.of(context).primaryColor, size: 32),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text(
            '© 2024 PayFlow. All rights reserved.',
            style: TextStyle(color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}

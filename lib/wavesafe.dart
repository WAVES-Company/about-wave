import 'dart:ui';
import 'package:flutter/material.dart';

class WaveSafe extends StatelessWidget {
  const WaveSafe({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_rounded),
                          onPressed: () => Navigator.pop(context),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "Back to WAVES",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',
                            color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.7),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "wavesafe",
                            style: TextStyle(
                              fontSize: 72,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito',
                              fontVariations: [
                                FontVariation('wdth', 115),
                                FontVariation('wght', 750),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Personal data protection package",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 110, 200),
                              fontFamily: 'Nunito',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "Maximum security and absolute privacy for everything you create and store.",
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.5,
                              fontFamily: 'Nunito',
                              color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.8),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),

                    const _FeatureSectionCard(
                      icon: Icons.folder_special_rounded,
                      title: "Offline Encrypted Folders",
                      description: "All your personal notes, tasks, and data are securely stored offline directly on your device inside protected, encrypted folders. Even without internet access, your information remains fully safeguarded.",
                    ),
                    const SizedBox(height: 20),
                    const _FeatureSectionCard(
                      icon: Icons.vpn_key_rounded,
                      title: "Proprietary E2EE (ws1.0)",
                      description: "Any data synchronized with the server is heavily protected using our custom end-to-end encryption standard — ws1.0. Only you hold the key to your information; no third parties or servers can decrypt it.",
                    ),
                    const SizedBox(height: 20),
                    const _FeatureSectionCard(
                      icon: Icons.shield_rounded,
                      title: "Total Privacy Control",
                      description: "Designed from the ground up for privacy-conscious users. No tracking, no data selling, and uncompromising security standards across all your devices.",
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FeatureSectionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureSectionCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withValues(alpha: 0.08),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 110, 200).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              icon,
              size: 28,
              color: const Color.fromARGB(255, 0, 110, 200),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito',
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    fontFamily: 'Nunito',
                    color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.7),
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

// WAVES
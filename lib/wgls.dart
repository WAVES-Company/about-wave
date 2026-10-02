import 'dart:ui';
import 'package:flutter/material.dart';

class Wgls extends StatelessWidget {
  const Wgls({super.key});

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "w",
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
                              const Text(
                                "gls",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 110, 200),
                                  fontFamily: 'Nunito',
                                  fontVariations: [
                                    FontVariation('wdth', 115),
                                    FontVariation('wght', 750),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "water Glass — New minimalistic future",
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
                            "A revolutionary design language and philosophy inspired by the purity, fluidity, and transparency of water glass.",
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
                      icon: Icons.water_drop_rounded,
                      title: "Fluid & Transparent Aesthetics",
                      description: "Inspired by physical water and glass, wgls eliminates visual clutter entirely. Enjoy interfaces that feel light, crystal-clear, and naturally adaptive to any environment.",
                    ),
                    const SizedBox(height: 20),
                    const _FeatureSectionCard(
                      icon: Icons.blur_linear_rounded,
                      title: "Minimalistic Future Vision",
                      description: "Designed for the next generation of digital interaction. Clean layouts, fluid motion curves, and sophisticated depth effects redefine how human and machine interface.",
                    ),
                    const SizedBox(height: 20),
                    const _FeatureSectionCard(
                      icon: Icons.layers_rounded,
                      title: "Universal Integration",
                      description: "Serving as the core visual foundation across the entire Waves ecosystem — powering apps, tools, and the upcoming waveOS (ws) with unmatched elegance.",
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
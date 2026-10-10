import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wsite/open_link.dart';

class Wave extends StatelessWidget {
  const Wave({super.key});

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
                            "wave",
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
                            "Minimalist goal tracker and planner",
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
                            "Fast. Simple. Private.",
                            style: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Nunito',
                              color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.6),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            "wave is designed for everyone who wants to organize their life, achieve goals step by step, and track savings without unnecessary clutter or complex spreadsheets.",
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
                      icon: Icons.flag_rounded,
                      title: "Regular Goals",
                      description: "Set any personal goal and attach a target date. Add an emoji for clarity, adjust progress percentage, and break down big goals into action steps. Every goal turns into a clear, step-by-step plan.",
                    ),
                    const SizedBox(height: 20),
                    const _FeatureSectionCard(
                      icon: Icons.savings_rounded,
                      title: "Savings Goals",
                      description: "A convenient digital piggy bank for visually tracking your progress. Enter the target amount, what you've already saved, and set a deadline. Adjust the total amount with a single touch using '+' and '−' buttons and view your recent history.\n\n(wave does not store real money or process payments — it's a simple tool to track your savings.)",
                    ),
                    const SizedBox(height: 20),
                    const _FeatureSectionCard(
                      icon: Icons.calendar_today_rounded,
                      title: "Planner",
                      description: "All your tasks in one place. The planner automatically combines individual tasks and subtasks from your active goals (retaining their goal icons). Sort tasks by priority (high, medium, low) to focus on what matters most.",
                    ),
                    const SizedBox(height: 20),
                    const _FeatureSectionCard(
                      icon: Icons.notifications_active_rounded,
                      title: "Reminders",
                      description: "Set a specific date and time for any task. wave will remind you right on schedule so nothing escapes your attention.",
                    ),
                    const SizedBox(height: 20),
                    const _FeatureSectionCard(
                      icon: Icons.security_rounded,
                      title: "Privacy & Offline Support (wavesafe)",
                      description: "• Works offline: Full functionality even without an internet connection.\n• Seamless synchronization: As soon as you reconnect, your data securely syncs with the server in the background.\n• Data protection: Built using end-to-end encryption wavesafe ws1.0 and secure local storage on your device. Your data remains exclusively yours.",
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "Download",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Get wave on Android stores, or use the Safari web app on iOS.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.45,
                        fontFamily: 'Nunito',
                        color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.65),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const _DownloadLinkCard(
                      icon: Icons.android_rounded,
                      title: "Google Play",
                      subtitle: "Android app on Google Play",
                      url: "https://play.google.com/store/apps/details?id=com.wavescompany.wave",
                    ),
                    const SizedBox(height: 14),
                    const _DownloadLinkCard(
                      icon: Icons.shop_rounded,
                      title: "RuStore",
                      subtitle: "Android app on RuStore",
                      url: "https://www.rustore.ru/catalog/app/com.example.wave_offline",
                    ),
                    const SizedBox(height: 14),
                    const _DownloadLinkCard(
                      icon: Icons.phone_iphone_rounded,
                      title: "iOS (Safari)",
                      subtitle: "Open in Safari → Share → Add to Home Screen (not App Store)",
                      url: "https://waves-company.github.io/wave-site/",
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


class _DownloadLinkCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String url;

  const _DownloadLinkCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.url,
  });

  @override
  State<_DownloadLinkCard> createState() => _DownloadLinkCardState();
}

class _DownloadLinkCardState extends State<_DownloadLinkCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const accent = Color.fromARGB(255, 0, 110, 200);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () => openSiteLink(widget.url),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: theme.shadowColor.withValues(alpha: _hovered ? 0.14 : 0.08),
                blurRadius: _hovered ? 20 : 16,
                offset: Offset(0, _hovered ? 8 : 6),
              ),
            ],
            border: Border.all(
              color: _hovered ? accent.withValues(alpha: 0.35) : Colors.transparent,
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(widget.icon, size: 28, color: accent),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.subtitle,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: 'Nunito',
                        color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.65),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.open_in_new_rounded,
                size: 20,
                color: accent.withValues(alpha: 0.8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// WAVES

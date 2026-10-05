import 'package:flutter/material.dart';
import 'package:wsite/open_link.dart';

const _accent = Color.fromARGB(255, 0, 110, 200);

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DocPage(
      title: 'Privacy Policy',
      subtitle: 'How WAVES company handles your data',
      sections: [
        _DocSection(
          heading: 'Who we are',
          body:
              'This Privacy Policy explains how the wave app and related WAVES company products handle information.\n\n'
              'WAVES company is an independent brand (Created by maksy). There is no separate legal entity listed in these documents.\n\n'
              'Contact:\n'
              '• Email: waveofgoals@hotmail.com\n'
              '• Support bot: @WOFSupport_bot (https://t.me/WOFSupport_bot)\n'
              '• Telegram channel: https://t.me/waveofgoals',
        ),
        _DocSection(
          heading: 'Information we collect',
          body:
              'When you create an account, we collect only:\n'
              '• Email address\n'
              '• Name\n'
              '• Username\n'
              '• Profile photo\n\n'
              'Content you create in the app (for example goals, planner tasks, savings trackers, and related notes) is stored so the product can work and sync across your devices. That content is sent to our servers when you are online.',
        ),
        _DocSection(
          heading: 'How we use information',
          body:
              'We use account and content data to:\n'
              '• Provide wave features (goals, planner, sync, account)\n'
              '• Let you sign in and manage your profile\n'
              '• Deliver support when you contact us\n\n'
              'We do not use advertising trackers or third-party analytics SDKs in wave for marketing analytics.',
        ),
        _DocSection(
          heading: 'Protection (wavesafe)',
          body:
              'wavesafe is the protection package used with wave. It includes:\n'
              '• Encrypted local storage on your device in dedicated folders\n'
              '• End-to-end encryption over the network using wavesafe ws1.0 when data syncs with the server\n\n'
              'We do not sell your personal data or share it with third parties for advertising.',
        ),
        _DocSection(
          heading: 'Payments',
          body:
              'In-app subscription billing is not currently active. In the future, paid features (w+) may be offered through app stores (for example Google Play or RuStore). Those stores process payments under their own terms when billing is enabled. We do not claim live in-app payment processing at this time.',
        ),
        _DocSection(
          heading: 'Age',
          body:
              'wave content is suitable for all ages. Store age ratings can differ by region (for example Google Play may show 3+ in Russia). Parents or guardians should decide what is appropriate for younger users.',
        ),
        _DocSection(
          heading: 'Account and data deletion',
          body:
              'You can delete your account in the app:\n'
              'Profile → Delete → confirm.\n\n'
              'After confirmation, your account data is deleted immediately.',
        ),
        _DocSection(
          heading: 'Changes',
          body:
              'We may update this Privacy Policy when the product changes. The latest version will be available on this website. If you have questions, email waveofgoals@hotmail.com or message @WOFSupport_bot.',
        ),
      ],
      contactActions: true,
    );
  }
}

class TermsOfServicePage extends StatelessWidget {
  const TermsOfServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DocPage(
      title: 'Terms of Service',
      subtitle: 'Simple terms for using wave and this site',
      sections: [
        _DocSection(
          heading: 'Agreement',
          body:
              'By using the wave app, the WAVES company website, or related product pages, you agree to these Terms of Service.\n\n'
              'WAVES company is an independent brand (Created by maksy). Contact: waveofgoals@hotmail.com · Support: @WOFSupport_bot.',
        ),
        _DocSection(
          heading: 'What you may use',
          body:
              'wave and related materials are provided for personal use to organize goals, planning, and related features described on our site.\n\n'
              'You may not abuse the service, attempt unauthorized access, disrupt servers, scrape or overload the service, or use it for harmful or illegal activity.',
        ),
        _DocSection(
          heading: 'Your account and content',
          body:
              'You are responsible for your account credentials and for content you create. Do not upload content you do not have the right to use.\n\n'
              'You can delete your account at any time in the app (Profile → Delete → confirm). Deletion removes account data immediately.',
        ),
        _DocSection(
          heading: 'Features, limits, and subscriptions',
          body:
              'WAVES company may change features, limits, and availability at any time.\n\n'
              'A free plan already includes large limits. A paid subscription (w+) may unlock additional features and remove limits when offered.\n\n'
              'Subscription billing is not currently active in the app. When store billing is enabled later, store checkout rules and refund policies of Google Play, RuStore, or other platforms will apply to purchases made there.',
        ),
        _DocSection(
          heading: 'Disclaimer (as is)',
          body:
              'The wave app, website, and related services are provided “as is” and “as available”, without warranties of any kind, whether express or implied, including fitness for a particular purpose or uninterrupted availability.\n\n'
              'To the fullest extent allowed by law, WAVES company is not liable for indirect, incidental, or consequential damages arising from use of the service.',
        ),
        _DocSection(
          heading: 'Offline use and connectivity',
          body:
              'wave works offline. When you reconnect, data syncs with the server. In some regions (including Russia), mobile data without a VPN may prevent sync; Wi‑Fi or a VPN is recommended if sync fails on mobile networks.',
        ),
        _DocSection(
          heading: 'Contact',
          body:
              'Questions about these Terms:\n'
              '• waveofgoals@hotmail.com\n'
              '• @WOFSupport_bot on Telegram',
        ),
      ],
      contactActions: true,
    );
  }
}

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DocPage(
      title: 'FAQ',
      subtitle: 'Common questions about wave',
      sections: [
        _DocSection(
          heading: 'What is wave?',
          body:
              'wave is a minimalist goal tracker and planner: regular goals, savings goals, a planner, reminders, and privacy-focused sync with wavesafe.',
        ),
        _DocSection(
          heading: 'Is wave free? What does paid unlock?',
          body:
              'Yes — the free version already has large limits. A paid subscription (w+) unlocks additional features and removes limits when billing is available.\n\n'
              'In-app payment processing is not live yet; store billing may be offered later.',
        ),
        _DocSection(
          heading: 'Where can I download wave?',
          body:
              '• Google Play: https://play.google.com/store/apps/details?id=com.wavescompany.wave\n'
              '• RuStore: https://www.rustore.ru/catalog/app/com.example.wave_offline\n'
              '• iOS: there is no App Store app yet. Open https://waves-company.github.io/wave-site/ in Safari, then Share → Add to Home Screen.',
        ),
        _DocSection(
          heading: 'How do I install the iOS version?',
          body:
              '1. Open Safari on iPhone or iPad.\n'
              '2. Go to https://waves-company.github.io/wave-site/\n'
              '3. Tap Share → Add to Home Screen.\n\n'
              'This is a Safari web app, not an App Store download.',
        ),
        _DocSection(
          heading: 'Does wave work offline?',
          body:
              'Yes. You can use wave without internet. When you are online again, your changes sync to the server. Multi-device sync is supported.',
        ),
        _DocSection(
          heading: 'What is wavesafe?',
          body:
              'wavesafe is the protection package: encrypted storage on the device in special folders, plus end-to-end encryption (ws1.0) for data on the server. Your data is not sold or shared for advertising. There is no third-party marketing analytics in wave.',
        ),
        _DocSection(
          heading: 'Sync issues in Russia',
          body:
              'On mobile data in Russia, sync may fail without a VPN. Use Wi‑Fi, or a VPN on mobile data, if synchronization does not work.',
        ),
        _DocSection(
          heading: 'How do I delete my account?',
          body:
              'Open Profile → Delete → confirm. Your data is deleted immediately after confirmation.',
        ),
        _DocSection(
          heading: 'Age rating',
          body:
              'Content is suitable for all ages. Google Play age labels can vary by region (for example 3+ in Russia).',
        ),
        _DocSection(
          heading: 'How can I get support?',
          body:
              '• Email: waveofgoals@hotmail.com\n'
              '• Telegram support bot: @WOFSupport_bot\n'
              '• News and updates: https://t.me/waveofgoals',
        ),
      ],
      contactActions: true,
      showDownloadActions: true,
    );
  }
}

class _DocSection {
  final String heading;
  final String body;

  const _DocSection({
    required this.heading,
    required this.body,
  });
}

class _DocPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<_DocSection> sections;
  final bool contactActions;
  final bool showDownloadActions;

  const _DocPage({
    required this.title,
    required this.subtitle,
    required this.sections,
    this.contactActions = false,
    this.showDownloadActions = false,
  });

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
                          'Back to WAVES',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito',
                            color: theme.textTheme.bodyMedium?.color
                                ?.withValues(alpha: 0.7),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito',
                              fontVariations: [
                                FontVariation('wdth', 115),
                                FontVariation('wght', 750),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            subtitle,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: _accent,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Last updated: October 5, 2026',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              color: theme.textTheme.bodyMedium?.color
                                  ?.withValues(alpha: 0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    for (final section in sections) ...[
                      _SectionCard(
                        heading: section.heading,
                        body: section.body,
                      ),
                      const SizedBox(height: 16),
                    ],
                    if (contactActions) ...[
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        alignment: WrapAlignment.center,
                        children: [
                          _LinkChip(
                            label: 'Email support',
                            icon: Icons.email_rounded,
                            onTap: () =>
                                openSiteLink('mailto:waveofgoals@hotmail.com'),
                          ),
                          _LinkChip(
                            label: '@WOFSupport_bot',
                            icon: Icons.support_agent_rounded,
                            onTap: () =>
                                openSiteLink('https://t.me/WOFSupport_bot'),
                          ),
                        ],
                      ),
                    ],
                    if (showDownloadActions) ...[
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        alignment: WrapAlignment.center,
                        children: [
                          _LinkChip(
                            label: 'Google Play',
                            icon: Icons.android_rounded,
                            onTap: () => openSiteLink(
                              'https://play.google.com/store/apps/details?id=com.wavescompany.wave',
                            ),
                          ),
                          _LinkChip(
                            label: 'RuStore',
                            icon: Icons.shop_rounded,
                            onTap: () => openSiteLink(
                              'https://www.rustore.ru/catalog/app/com.example.wave_offline',
                            ),
                          ),
                          _LinkChip(
                            label: 'iOS (Safari)',
                            icon: Icons.phone_iphone_rounded,
                            onTap: () => openSiteLink(
                              'https://waves-company.github.io/wave-site/',
                            ),
                          ),
                        ],
                      ),
                    ],
                    const SizedBox(height: 40),
                    Center(
                      child: Text(
                        'WAVES company · Created by maksy',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          color: theme.textTheme.bodyMedium?.color
                              ?.withValues(alpha: 0.4),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
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

class _SectionCard extends StatelessWidget {
  final String heading;
  final String body;

  const _SectionCard({
    required this.heading,
    required this.body,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
          const SizedBox(height: 10),
          Text(
            body,
            style: TextStyle(
              fontSize: 16,
              height: 1.55,
              fontFamily: 'Nunito',
              color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.75),
            ),
          ),
        ],
      ),
    );
  }
}

class _LinkChip extends StatefulWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _LinkChip({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  State<_LinkChip> createState() => _LinkChipState();
}

class _LinkChipState extends State<_LinkChip> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          decoration: BoxDecoration(
            color: _hovered ? _accent : _accent.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                size: 18,
                color: _hovered ? Colors.white : _accent,
              ),
              const SizedBox(width: 8),
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                  color: _hovered ? Colors.white : _accent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

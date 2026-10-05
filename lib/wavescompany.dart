import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:wsite/open_link.dart';
import 'package:wsite/site_docs.dart';
import 'package:wsite/w+.dart';
import 'package:wsite/wave.dart';
import 'package:wsite/waveAi.dart';
import 'package:wsite/wavesafe.dart';
import 'package:wsite/wgls.dart';
import 'package:wsite/ws.dart';

class Wsite extends StatefulWidget {
  const Wsite({super.key});
  
  @override
  State<Wsite> createState() => _WsiteState();
}

class _WsiteState extends State<Wsite> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final ScrollController _scrollController;
  

  final List<_ProjectData> _projects = [
    _ProjectData(
      title: "wave",
      description: "Planner, goal tracker and all it free",
      destinationBuilder: (context) => const Wave(),
    ),
    _ProjectData(
      title: "w+",
      description: "Want more features in wave? The paid w+ subscription gives you everything you need.",
      destinationBuilder: (context) => const Wpls(),
    ),
    _ProjectData(
      title: "wavesafe",
      description: "Personal data protection package.",
      destinationBuilder: (context) => const WaveSafe(),
    ),
    _ProjectData(
      title: "wave Ai",
      description: "Very convenient. Neat. Smart. And all of that is wave Ai.",
      destinationBuilder: (context) => const WaveAi(),
    ),
    _ProjectData(
      title: "ws",
      description: "waveOS. New. Fast. Better.",
      destinationBuilder: (context) => const Ws(),
    ),
    _ProjectData(
      title: "wgls",
      description: "water Glass - New minimalistic future.",
      destinationBuilder: (context) => const Wgls(),
    ),
  ];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1250),
    )..forward();

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Animation<double> _animation(double start, double end) {
    return CurvedAnimation(
      parent: _controller,
      curve: Interval(
        start,
        end,
        curve: Curves.easeOutCubic,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: ScrollConfiguration(
          behavior: const _WebsiteScrollBehavior(),
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                final isDesktop = width >= 900;
                final isTablet = width >= 600;

                final horizontalPadding = isDesktop
                    ? 60.0
                    : isTablet
                        ? 36.0
                        : 20.0;

                final projectWidth = isDesktop
                    ? (width - horizontalPadding * 2 - 24) / 2
                    : width - horizontalPadding * 2;

                return Column(
                  children: [
                    const SizedBox(height: 70),

                    FadeTransition(
                      opacity: _animation(0.0, 0.62),
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0, 0.10),
                          end: Offset.zero,
                        ).animate(_animation(0.0, 0.62)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "WAVES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 90,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nunito',
                                fontVariations: [
                                  FontVariation('wdth', 115),
                                  FontVariation('wght', 750),
                                ],
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(0, -35),
                              child: const Text(
                                "company",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 110, 200),
                                  fontFamily: 'Nunito',
                                  fontVariations: [
                                    FontVariation('wdth', 150),
                                    FontVariation('wght', 750),
                                  ],
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(0, -15),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: horizontalPadding,
                                ),
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 540,
                                  ),
                                  child: Text(
                                    "Smart, minimalistic, and futuristic digital products designed to simplify your everyday life.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      height: 1.45,
                                      fontFamily: 'Nunito',
                                      color: theme.textTheme.bodyMedium?.color
                                          ?.withValues(alpha: 0.60),
                                      fontVariations: const [
                                        FontVariation('wdth', 100),
                                        FontVariation('wght', 450),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    _LiveWaveDivider(isDark: isDark),

                    FadeTransition(
                      opacity: _animation(0.22, 0.78),
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0, 0.08),
                          end: Offset.zero,
                        ).animate(_animation(0.22, 0.78)),
                        child: const Text(
                          "Our projects",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 90,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nunito',
                            fontVariations: [
                              FontVariation('wdth', 115),
                              FontVariation('wght', 750),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 55),

                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        horizontalPadding,
                        0,
                        horizontalPadding,
                        80,
                      ),
                      child: Wrap(
                        spacing: 24,
                        runSpacing: 24,
                        alignment: WrapAlignment.center,
                        children: List.generate(
                          _projects.length,
                          (index) {
                            final start = (0.36 + index * 0.055).clamp(0.0, 0.78);
                            final end = (start + 0.28).clamp(0.0, 1.0);

                            return SizedBox(
                              width: projectWidth,
                              child: _AnimatedProjectCard(
                                key: ValueKey('project_$index'),
                                data: _projects[index],
                                animation: _animation(start, end),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    _LiveWaveDivider(isDark: isDark),
                    const _WebsiteFooter(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _WebsiteFooter extends StatelessWidget {
  const _WebsiteFooter();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 24),
      decoration: BoxDecoration(
        color: theme.cardColor.withValues(alpha: 0.4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "More info",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
              fontVariations: [
                FontVariation('wdth', 115),
                FontVariation('wght', 750),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              _FooterDocButton(
                label: "Privacy Policy",
                builder: (context) => const PrivacyPolicyPage(),
              ),
              _FooterDocButton(
                label: "Terms of Service",
                builder: (context) => const TermsOfServicePage(),
              ),
              _FooterDocButton(
                label: "FAQ",
                builder: (context) => const FaqPage(),
              ),
            ],
          ),
          const SizedBox(height: 28),
          Text(
            "Subscribe to our Telegram channel to get the latest updates before anyone else.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Nunito',
              color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 24),
          const _TelegramButton(),
          const SizedBox(height: 35),
          Text(
            "© ${DateTime.now().year} WAVES company. Created by maksy. All rights reserved.",
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Nunito',
              color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.4),
            ),
          ),
        ],
      ),
    );
  }
}


class _FooterDocButton extends StatefulWidget {
  final String label;
  final WidgetBuilder builder;

  const _FooterDocButton({
    required this.label,
    required this.builder,
  });

  @override
  State<_FooterDocButton> createState() => _FooterDocButtonState();
}

class _FooterDocButtonState extends State<_FooterDocButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: widget.builder),
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOutCubic,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          transform: Matrix4.identity()..scale(_hovered ? 1.04 : 1.0),
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
            color: _hovered
                ? const Color.fromARGB(255, 0, 110, 200)
                : const Color.fromARGB(255, 0, 110, 200).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            widget.label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
              color: _hovered
                  ? Colors.white
                  : const Color.fromARGB(255, 0, 110, 200),
              fontVariations: const [
                FontVariation('wdth', 115),
                FontVariation('wght', 700),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TelegramButton extends StatefulWidget {
  const _TelegramButton();

  @override
  State<_TelegramButton> createState() => _TelegramButtonState();
}

class _TelegramButtonState extends State<_TelegramButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () {
          openSiteLink("https://t.me/waveofgoals");
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOutCubic,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          transform: Matrix4.identity()..scale(_hovered ? 1.05 : 1.0),
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
            color: _hovered
                ? const Color.fromARGB(255, 0, 110, 200)
                : const Color.fromARGB(255, 0, 110, 200).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(30),
            boxShadow: _hovered
                ? [
                    BoxShadow(
                      color: const Color.fromARGB(255, 0, 110, 200).withValues(alpha: 0.3),
                      blurRadius: 16,
                      offset: const Offset(0, 6),
                    )
                  ]
                : [],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.send_rounded,
                size: 20,
                color: _hovered ? Colors.white : const Color.fromARGB(255, 0, 110, 200),
              ),
              const SizedBox(width: 10),
              Text(
                "Telegram",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                  color: _hovered ? Colors.white : const Color.fromARGB(255, 0, 110, 200),
                  fontVariations: const [
                    FontVariation('wdth', 115),
                    FontVariation('wght', 700),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LiveWaveDivider extends StatefulWidget {
  final bool isDark;

  const _LiveWaveDivider({required this.isDark});

  @override
  State<_LiveWaveDivider> createState() => _LiveWaveDividerState();
}

class _LiveWaveDividerState extends State<_LiveWaveDivider>
    with SingleTickerProviderStateMixin {
  late final AnimationController _waveController;

  @override
  void initState() {
    super.initState();
    _waveController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _waveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _waveController,
      builder: (context, _) {
        return SizedBox(
          height: 110,
          width: double.infinity,
          child: CustomPaint(
            painter: _LiveWavePainter(
              value: _waveController.value,
              isDark: widget.isDark,
            ),
          ),
        );
      },
    );
  }
}

class _LiveWavePainter extends CustomPainter {
  final double value;
  final bool isDark;

  const _LiveWavePainter({
    required this.value,
    required this.isDark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final color = isDark
        ? const Color(0xFF7CB7E8)
        : const Color(0xFF0070C8);

    final glowPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0
      ..strokeCap = StrokeCap.round
      ..color = color.withValues(alpha: 0.12)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5
      ..strokeCap = StrokeCap.round
      ..color = color.withValues(alpha: 0.75);

    final path = Path();
    final w = size.width;
    final h = size.height;
    final centerY = h * 0.5;

    path.moveTo(0, centerY);

    for (double x = 0; x <= w; x += 2) {
      double phase = value * 2 * math.pi;
      double y = centerY + math.sin((x / w * 3 * math.pi) + phase) * (h * 0.25)
                  + math.cos((x / w * 2 * math.pi) - phase) * (h * 0.1);
      path.lineTo(x, y);
    }

    canvas.drawPath(path, glowPaint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _LiveWavePainter oldDelegate) {
    return oldDelegate.value != value || oldDelegate.isDark != isDark;
  }
}

class _AnimatedProjectCard extends StatefulWidget {
  final _ProjectData data;
  final Animation<double> animation;

  const _AnimatedProjectCard({
    super.key,
    required this.data,
    required this.animation,
  });

  @override
  State<_AnimatedProjectCard> createState() => _AnimatedProjectCardState();
}

class _AnimatedProjectCardState extends State<_AnimatedProjectCard> {
  final ValueNotifier<bool> _hoveredNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _pressedNotifier = ValueNotifier(false);
  final ValueNotifier<Offset> _mousePosNotifier = ValueNotifier(Offset.zero);
  
  final Size _cardSize = const Size(400, 270);

  @override
  void dispose() {
    _hoveredNotifier.dispose();
    _pressedNotifier.dispose();
    _mousePosNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FadeTransition(
      opacity: widget.animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 0.07),
          end: Offset.zero,
        ).animate(widget.animation),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) {
            _hoveredNotifier.value = true;
            _mousePosNotifier.value = event.localPosition;
          },
          onHover: (event) {
            _mousePosNotifier.value = event.localPosition;
          },
          onExit: (_) {
            _hoveredNotifier.value = false;
            _pressedNotifier.value = false;
            _mousePosNotifier.value = Offset(_cardSize.width / 2, _cardSize.height / 2);
          },
          child: GestureDetector(
            onTapDown: (_) => _pressedNotifier.value = true,
            onTapUp: (_) => _pressedNotifier.value = false,
            onTapCancel: () => _pressedNotifier.value = false,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: widget.data.destinationBuilder,
                ),
              );
            },
            child: ValueListenableBuilder<bool>(
              valueListenable: _hoveredNotifier,
              builder: (context, hovered, child) {
                return ValueListenableBuilder<bool>(
                  valueListenable: _pressedNotifier,
                  builder: (context, pressed, child) {
                    return ValueListenableBuilder<Offset>(
                      valueListenable: _mousePosNotifier,
                      builder: (context, mousePos, child) {
                        double tiltX = 0.0;
                        double tiltY = 0.0;
                        if (hovered) {
                          final centerX = _cardSize.width / 2;
                          final centerY = _cardSize.height / 2;
                          final dx = (mousePos.dx - centerX) / centerX;
                          final dy = (mousePos.dy - centerY) / centerY;
                          tiltX = -dy * 0.10;
                          tiltY = dx * 0.10;
                        }

                        final scale = pressed ? 0.985 : (hovered ? 1.02 : 1.0);

                        final transform = Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..translate(0.0, hovered ? -6.0 : 0.0)
                          ..scale(scale);

                        if (hovered) {
                          transform.rotateX(tiltX);
                          transform.rotateY(tiltY);
                        }

                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 120),
                          curve: Curves.easeOutCubic,
                          transform: transform,
                          transformAlignment: Alignment.center,
                          constraints: const BoxConstraints(
                            minHeight: 270,
                          ),
                          decoration: BoxDecoration(
                            color: theme.cardColor,
                            borderRadius: BorderRadius.circular(34),
                            boxShadow: [
                              BoxShadow(
                                color: theme.shadowColor.withValues(
                                  alpha: hovered ? 0.22 : 0.12,
                                ),
                                blurRadius: hovered ? 28 : 10,
                                offset: Offset(
                                  0,
                                  hovered ? 14 : 5,
                                ),
                              ),
                            ],
                          ),
                          child: child,
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(34),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: IgnorePointer(
                                child: ValueListenableBuilder<bool>(
                                  valueListenable: _hoveredNotifier,
                                  builder: (context, isHovered, _) {
                                    return AnimatedAlign(
                                      duration: const Duration(milliseconds: 700),
                                      curve: Curves.easeOutCubic,
                                      alignment: isHovered
                                          ? const Alignment(1.1, -1.0)
                                          : const Alignment(-1.1, 1.0),
                                      child: FractionallySizedBox(
                                        widthFactor: 0.48,
                                        heightFactor: 1.8,
                                        child: Transform.rotate(
                                          angle: -0.28,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: theme.scaffoldBackgroundColor.withValues(
                                                alpha: 0.18,
                                              ),
                                              borderRadius: BorderRadius.circular(999),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(28, 24, 28, 26),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    _ProjectTitle(title: widget.data.title),
                                    const SizedBox(height: 14),
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 430,
                                      ),
                                      child: Text(
                                        widget.data.description,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          height: 1.45,
                                          fontFamily: 'Nunito',
                                          color: theme.textTheme.bodyMedium?.color?.withValues(
                                            alpha: 0.60,
                                          ),
                                          fontVariations: const [
                                            FontVariation('wdth', 100),
                                            FontVariation('wght', 450),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _ProjectTitle extends StatelessWidget {
  final String title;

  const _ProjectTitle({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (title == 'w+') {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'w',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontVariations: [
                FontVariation('wdth', 115),
                FontVariation('wght', 750),
              ],
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '+',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontVariations: [
                FontVariation('wdth', 115),
                FontVariation('wght', 750),
              ],
              fontSize: 60,
              color: Color.fromARGB(255, 0, 110, 200),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    if (title == 'wgls') {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'w',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontVariations: [
                FontVariation('wdth', 115),
                FontVariation('wght', 750),
              ],
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'gls',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontVariations: [
                FontVariation('wdth', 115),
                FontVariation('wght', 750),
              ],
              fontSize: 40,
              color: Color.fromARGB(255, 0, 110, 200),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    if (title == 'ws') {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'w',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontVariations: [
                FontVariation('wdth', 115),
                FontVariation('wght', 750),
              ],
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            's',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontVariations: [
                FontVariation('wdth', 115),
                FontVariation('wght', 750),
              ],
              fontSize: 60,
              color: Color.fromARGB(255, 0, 110, 200),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: 'Nunito',
        fontVariations: [
          FontVariation('wdth', 115),
          FontVariation('wght', 750),
        ],
        fontSize: 80,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _ProjectData {
  final String title;
  final String description;
  final WidgetBuilder destinationBuilder;

  const _ProjectData({
    required this.title,
    required this.description,
    required this.destinationBuilder,
  });
}

class _WebsiteScrollBehavior extends MaterialScrollBehavior {
  const _WebsiteScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}

// WAVES
import 'package:flutter/material.dart';

import '../../../../app/theme/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/widgets/glass/glass_button.dart';
import '../../../../core/widgets/glass/glass_card.dart';
import '../../../../core/widgets/glass/glass_container.dart';

class NoSoHomePage extends StatelessWidget {
  const NoSoHomePage({super.key});

  static const _modules = <_SocialModule>[
    _SocialModule(
      name: 'Feed',
      description: 'Núcleo multimodal con posts visuales, hilos, reposts, quotes y modo cronológico.',
      icon: Icons.dynamic_feed_rounded,
      phase: 'Fase 1',
      accent: NoSoColors.ultraviolet,
    ),
    _SocialModule(
      name: 'Stories',
      description: 'Historias de 15s, 30s o 1min con música, respuestas directas y visibilidad por círculos.',
      icon: Icons.auto_stories_rounded,
      phase: 'Fase 1',
      accent: NoSoColors.electricPink,
    ),
    _SocialModule(
      name: 'Chat',
      description: 'DMs, grupos, voz, reacciones rápidas y mensajes efímeros opcionales.',
      icon: Icons.chat_bubble_rounded,
      phase: 'Fase 1',
      accent: NoSoColors.aquaPulse,
    ),
    _SocialModule(
      name: 'TuVibe',
      description: 'Estado emocional diario que combina ánimo, energía, color, sonido y contexto.',
      icon: Icons.mood_rounded,
      phase: 'Fase 2',
      accent: NoSoColors.vibeGreen,
    ),
    _SocialModule(
      name: 'TuMúsica',
      description: 'Capa emocional con música propia, clips reutilizables y reacciones sonoras.',
      icon: Icons.graphic_eq_rounded,
      phase: 'Fase 2',
      accent: NoSoColors.electricPink,
    ),
    _SocialModule(
      name: 'Círculos',
      description: 'Grupos cerrados para visibilidad granular: amigos, familia, trabajo o custom.',
      icon: Icons.groups_2_rounded,
      phase: 'Fase 2',
      accent: NoSoColors.ultraviolet,
    ),
    _SocialModule(
      name: 'TuMapa',
      description: 'Ubicación social opt-in, modo fantasma, eventos y presencia por círculos.',
      icon: Icons.travel_explore_rounded,
      phase: 'Fase 3',
      accent: NoSoColors.aquaPulse,
    ),
    _SocialModule(
      name: 'TuEres',
      description: 'Momento diario aleatorio con foto dual e historial tipo diario personal.',
      icon: Icons.camera_front_rounded,
      phase: 'Fase 2',
      accent: NoSoColors.vibeGreen,
    ),
    _SocialModule(
      name: 'Tus Cortos',
      description: 'Vídeo vertical, scroll infinito, remixes de audio, duos y respuestas en vídeo.',
      icon: Icons.smart_display_rounded,
      phase: 'Fase 3',
      accent: NoSoColors.electricPink,
    ),
  ];

  static const _roadmap = <_RoadmapPhase>[
    _RoadmapPhase('MVP real', 'Auth, feed básico, posts, likes, comentarios, chat y stories simples.'),
    _RoadmapPhase('Diferenciación', 'Círculos, TuVibe, TuMúsica, Modo TuEres y Notas 24h.'),
    _RoadmapPhase('Expansión social', 'TuMapa, eventos locales, live streaming y co-creación.'),
    _RoadmapPhase('Inteligencia social', 'IA ligera, moderación automática y feed emocional dinámico.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 1.4,
            colors: [
              Color(0xFF41227C),
              NoSoColors.midnight,
              NoSoColors.cosmicBlack,
            ],
          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 12),
                sliver: SliverToBoxAdapter(child: _HeroSection()),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                sliver: SliverGrid.builder(
                  itemCount: _modules.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 360,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.08,
                  ),
                  itemBuilder: (context, index) {
                    final module = _modules[index];
                    return GlassCard(
                      title: '${module.name} · ${module.phase}',
                      description: module.description,
                      icon: module.icon,
                      accent: module.accent,
                    );
                  },
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
                sliver: SliverToBoxAdapter(child: _RoadmapSection(phases: _roadmap)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(NoSoConstants.productName, style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 14),
          Text(NoSoConstants.tagline, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 12),
          Text(NoSoConstants.productVision, style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 24),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              GlassButton(
                label: 'Explorar arquitectura',
                icon: Icons.account_tree_rounded,
                onPressed: () {},
              ),
              GlassButton(
                label: 'MVP: Fase 1',
                icon: Icons.rocket_launch_rounded,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RoadmapSection extends StatelessWidget {
  const _RoadmapSection({required this.phases});

  final List<_RoadmapPhase> phases;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Roadmap funcional', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 16),
          for (final (index, phase) in phases.indexed) ...[
            _RoadmapTile(number: index + 1, phase: phase),
            if (index != phases.length - 1) const Divider(height: 26),
          ],
        ],
      ),
    );
  }
}

class _RoadmapTile extends StatelessWidget {
  const _RoadmapTile({required this.number, required this.phase});

  final int number;
  final _RoadmapPhase phase;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: NoSoColors.ultraviolet.withAlpha((0.22 * 255).round()),
          foregroundColor: NoSoColors.textPrimary,
          child: Text('$number'),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(phase.title, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 4),
              Text(phase.description, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
      ],
    );
  }
}

class _SocialModule {
  const _SocialModule({
    required this.name,
    required this.description,
    required this.icon,
    required this.phase,
    required this.accent,
  });

  final String name;
  final String description;
  final IconData icon;
  final String phase;
  final Color accent;
}

class _RoadmapPhase {
  const _RoadmapPhase(this.title, this.description);

  final String title;
  final String description;
}

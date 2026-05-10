import 'package:flutter/material.dart';

import 'glass_container.dart';

class GlassCard extends StatelessWidget {
  const GlassCard({
    required this.title,
    required this.description,
    required this.icon,
    super.key,
    this.accent,
  });

  final String title;
  final String description;
  final IconData icon;
  final Color? accent;

  @override
  Widget build(BuildContext context) {
    final color = accent ?? Theme.of(context).colorScheme.primary;

    return GlassContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: color.withAlpha((0.2 * 255).round()),
            foregroundColor: color,
            child: Icon(icon),
          ),
          const SizedBox(height: 16),
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          Text(description, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

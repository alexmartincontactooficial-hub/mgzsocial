# NO.SO

NO.SO es un ecosistema social modular donde cada formato de contenido responde a un tipo de interacción humana distinta: texto, imagen, vídeo, música, ubicación, emoción y comunicación directa.

## Visión del producto

> Un sistema social modular donde cada interacción tiene un formato nativo optimizado, todo conectado por una capa de identidad dinámica y contexto emocional.

La app unifica patrones de redes modernas en una experiencia visual y emocionalmente contextual:

- **Expresión rápida:** hilos, reposts, quotes y conversación veloz.
- **Contenido visual:** posts, stories y vídeo corto vertical.
- **Presencia social:** ubicación opt-in, eventos y modo fantasma.
- **Identidad emocional:** TuVibe, música, círculos y perfiles dinámicos.
- **Comunicación directa:** DMs, grupos, voz y mensajes efímeros.

## Arquitectura frontend

La base Flutter está organizada con Clean Architecture y módulos por dominio:

```text
lib/
├── app/                 # App shell, rutas, tema Liquid Glass y DI
├── core/                # Configuración, errores, red, utilidades y widgets base
├── features/            # Auth, feed, chat, stories, music, map, circles, events...
├── shared/              # Enums, mixins, extensions, types y state compartido
└── l10n/                # Recursos de localización
```

Cada feature está preparada para crecer con la misma estructura:

```text
feature/
├── data/                # models, repositories, datasources
├── domain/              # entities, repositories, usecases
└── presentation/        # pages, widgets, controllers
```

## Sistema de diseño: Liquid Glass UI

El núcleo visual usa tokens y componentes reutilizables:

- `NoSoGlassTheme` para tema Material 3 oscuro con profundidad emocional.
- `NoSoColors`, `NoSoTypography` y `NoSoEffects` como design tokens globales.
- `GlassContainer`, `GlassCard` y `GlassButton` para capas translúcidas, blur y bordes luminosos.

## Backend objetivo

Supabase será el core backend:

- Auth: email, OAuth y phone.
- Postgres: grafo social relacional.
- Realtime: chat, feed updates y presencia.
- Storage: imágenes, vídeo y audio.
- Edge Functions: IA ligera, moderación, spam/toxicidad y lógica avanzada.

## Roadmap

1. **MVP real:** Auth, feed básico, posts de imagen/texto, likes, comentarios, chat básico y stories simples.
2. **Diferenciación:** Círculos, TuVibe, TuMúsica, Modo TuEres y Notas 24h.
3. **Expansión social:** TuMapa, eventos locales, live streaming y co-creación.
4. **Inteligencia social:** recomendaciones contextuales, moderación automática y feed emocional dinámico.

## Primeros comandos

```bash
flutter pub get
flutter test
```

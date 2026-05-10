import 'env.dart';

class SupabaseConfig {
  const SupabaseConfig({
    required this.url,
    required this.anonKey,
  });

  factory SupabaseConfig.fromEnvironment() {
    return const SupabaseConfig(
      url: Env.supabaseUrl,
      anonKey: Env.supabaseAnonKey,
    );
  }

  final String url;
  final String anonKey;
}

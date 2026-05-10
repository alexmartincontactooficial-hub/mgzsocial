import '../config/supabase_config.dart';

class SupabaseClientHandle {
  const SupabaseClientHandle(this.config);

  final SupabaseConfig config;

  bool get isConfigured => config.url.isNotEmpty && config.anonKey.isNotEmpty;
}

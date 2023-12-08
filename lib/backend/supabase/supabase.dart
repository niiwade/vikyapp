import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://sqtfomcktclfvreujodw.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNxdGZvbWNrdGNsZnZyZXVqb2R3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk5OTE4MTAsImV4cCI6MjAxNTU2NzgxMH0.xR1x7L0rXDj1_8zog-dZO0o9aQK3OLPdqvJ3INiAHU8';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}

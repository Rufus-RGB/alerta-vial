// Conexión a la base de datos compartida (Supabase).
// Si se dejan vacíos, la app funciona en modo local: cada navegador guarda solo sus propios reportes.
// La clave "publishable" (o "anon") es pública por diseño: la seguridad la ponen las reglas de supabase.sql.
window.ALERTA_CONFIG = {
  supabaseUrl: 'https://hsgomvtmyzogncjgjvps.supabase.co',
  supabaseKey: 'sb_publishable_z76Uw-jo8RPcwg4dG4n6gg_d6t1ChHY',
};

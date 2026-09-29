// Conexión a la base de datos compartida (Supabase).
// Si se dejan vacíos, la app funciona en modo local: cada navegador guarda solo sus propios reportes.
// La clave "publishable" (o "anon") es pública por diseño: la seguridad la ponen las reglas de supabase.sql.
window.ALERTA_CONFIG = {
  supabaseUrl: '',
  supabaseKey: '',
};

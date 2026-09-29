# Alerta Vial

Prototipo funcional de **Alerta Vial**, una app para que los ciudadanos de Bogotá reporten hurtos de carros y motos y consulten las zonas de riesgo por localidad.

Proyecto de aula de Principios de Ingeniería.

## Qué incluye

- Inicio de sesión, creación de cuenta y recuperación de contraseña (simulados).
- Inicio con las zonas de riesgo de la última hora, de hoy o de los últimos 7 días.
- Mapa con zonas de calor, reportes, CAI cercanos, búsqueda y filtros.
- Reporte de hurto en 3 pasos: datos del vehículo (color, fotos y señas), ubicación y confirmación.
- Alertas en vivo, historial de reportes, borradores y edición de reportes.
- Perfil editable, vehículos registrados, zonas favoritas, privacidad y modo oscuro.
- Botón de emergencia con cuenta regresiva.

## Cómo verlo en tu computador

Abre `index.html` con doble clic en cualquier navegador. No necesita instalar nada.

## Publicarlo en Vercel

1. En [vercel.com](https://vercel.com) entra con tu cuenta de GitHub.
2. **Add New → Project** y elige este repositorio.
3. Deja **Framework Preset: Other**, sin comando de build, y pulsa **Deploy**.

Cada vez que subas cambios a GitHub, Vercel publica la nueva versión sola.

## Limitaciones del prototipo

- Los reportes de la comunidad y las alertas "en vivo" son datos de ejemplo.
- Lo que cada persona reporta se guarda solo en **su propio navegador** (`localStorage`): los demás usuarios no lo ven. Para que los reportes se compartan entre todos hace falta una base de datos (por ejemplo Supabase o Firebase).
- El mapa es la imagen del diseño de Figma, no un mapa real con coordenadas.
- No se envían correos, alertas ni llamadas reales.

## Estructura

```
index.html            App completa (HTML, CSS y JavaScript)
images/               Íconos y mapa exportados de Figma
icon.svg              Ícono de la app
manifest.webmanifest  Permite instalarla en el celular ("Agregar a pantalla de inicio")
```

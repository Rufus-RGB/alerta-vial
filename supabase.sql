-- Alerta Vial · base de datos compartida del piloto
-- Pégalo completo en Supabase → SQL Editor → New query → Run.

create table if not exists public.reportes (
  id           uuid primary key default gen_random_uuid(),
  autor        uuid not null default auth.uid(),
  autor_nombre text,
  creado       timestamptz not null default now(),
  editado      timestamptz,
  tipo         text not null check (tipo in ('moto', 'auto')),
  marca        text not null,
  ref          text,
  modelo       text not null,
  placa        text not null,
  color        text not null,
  fotos        text[] not null default '{}',
  senas        text,
  modo         text,
  lugar        text,
  loc          text not null,
  x            real not null,
  y            real not null,
  t            timestamptz not null,
  estado       text not null default 'activo' check (estado in ('activo', 'recuperado')),
  recuperado   timestamptz,
  anonimo      boolean not null default false
);

create index if not exists reportes_t_idx on public.reportes (t desc);

-- Seguridad: todos pueden ver los reportes; cada quien solo crea, edita y borra los suyos.
alter table public.reportes enable row level security;

drop policy if exists "ver reportes" on public.reportes;
create policy "ver reportes" on public.reportes
  for select to anon, authenticated using (true);

drop policy if exists "crear mis reportes" on public.reportes;
create policy "crear mis reportes" on public.reportes
  for insert to authenticated with check (autor = auth.uid());

drop policy if exists "editar mis reportes" on public.reportes;
create policy "editar mis reportes" on public.reportes
  for update to authenticated using (autor = auth.uid()) with check (autor = auth.uid());

drop policy if exists "borrar mis reportes" on public.reportes;
create policy "borrar mis reportes" on public.reportes
  for delete to authenticated using (autor = auth.uid());

-- Tiempo real: los reportes nuevos llegan al instante a todos los celulares.
do $$
begin
  alter publication supabase_realtime add table public.reportes;
exception when duplicate_object then null;
end $$;

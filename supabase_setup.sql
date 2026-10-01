-- Wedding Guest Check-in PRO: Supabase setup
-- Run this entire script in Supabase Dashboard > SQL Editor.
-- Tables are private to the authenticated account that created each row.
create table if not exists public.wedding_guests (
  owner_id uuid not null references auth.users(id) on delete cascade,
  guest_id text not null,
  payload jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (owner_id, guest_id)
);
create table if not exists public.wedding_settings (
  owner_id uuid primary key references auth.users(id) on delete cascade,
  settings jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.wedding_guests enable row level security;
alter table public.wedding_settings enable row level security;
drop policy if exists "Owners manage their guests" on public.wedding_guests;
create policy "Owners manage their guests" on public.wedding_guests
for all to authenticated using (auth.uid() = owner_id) with check (auth.uid() = owner_id);
drop policy if exists "Owners manage their wedding settings" on public.wedding_settings;
create policy "Owners manage their wedding settings" on public.wedding_settings
for all to authenticated using (auth.uid() = owner_id) with check (auth.uid() = owner_id);

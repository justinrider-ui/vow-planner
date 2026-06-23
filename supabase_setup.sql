-- Run this in your Supabase dashboard → SQL Editor

-- 1. Create the table
create table if not exists vow_planner (
  id integer primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz default now()
);

-- 2. Insert the initial empty row
insert into vow_planner (id, data) values (1, '{}'::jsonb)
on conflict (id) do nothing;

-- 3. Auto-update the timestamp on save
create or replace function update_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

create trigger vow_planner_updated_at
  before update on vow_planner
  for each row execute function update_updated_at();

-- 4. Row Level Security — allow any authenticated user to read/write
alter table vow_planner enable row level security;

create policy "Authenticated users can read"
  on vow_planner for select
  using (auth.role() = 'authenticated');

create policy "Authenticated users can write"
  on vow_planner for all
  using (auth.role() = 'authenticated')
  with check (auth.role() = 'authenticated');

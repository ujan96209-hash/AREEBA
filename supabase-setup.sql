-- Run this once in Supabase → SQL Editor
create table if not exists site_config (id int primary key, data jsonb not null default '{}');
alter table site_config enable row level security;
create policy "public read" on site_config for select using (true);
create policy "admin write" on site_config for all to authenticated using (true) with check (true);

insert into storage.buckets (id, name, public) values ('images','images',true) on conflict do nothing;
create policy "public images read" on storage.objects for select using (bucket_id='images');
create policy "admin upload" on storage.objects for insert to authenticated with check (bucket_id='images');
create policy "admin update" on storage.objects for update to authenticated using (bucket_id='images');
create policy "admin delete" on storage.objects for delete to authenticated using (bucket_id='images');

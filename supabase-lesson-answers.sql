create table if not exists public.lesson_answers (
  id bigint generated always as identity primary key,
  student_id text not null,
  answer_key text not null,
  value text,
  updated_at timestamptz not null default now(),
  unique (student_id, answer_key)
);
alter table public.lesson_answers enable row level security;
create policy "anon_select_la" on public.lesson_answers for select to anon using (true);
create policy "anon_insert_la" on public.lesson_answers for insert to anon with check (true);
create policy "anon_update_la" on public.lesson_answers for update to anon using (true) with check (true);
grant select, insert, update on public.lesson_answers to anon;

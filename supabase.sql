-- Exam Checklist — таблица для хранения прогресса одного студента.
-- Запусти это один раз в Supabase → SQL Editor.

create table if not exists public.exam_checklist (
  id          bigint generated always as identity primary key,
  student_id  text not null,
  item_key    text not null,
  checked     boolean not null default false,
  checked_at  timestamptz,
  updated_at  timestamptz not null default now(),
  unique (student_id, item_key)
);

create index if not exists exam_checklist_student_idx
  on public.exam_checklist (student_id);

alter table public.exam_checklist enable row level security;

-- Статичная страница на GitHub Pages использует публичный anon key.
-- Это приватный учебный чек-лист, поэтому открываем чтение/запись для anon.
drop policy if exists "anon_select_checklist" on public.exam_checklist;
drop policy if exists "anon_insert_checklist" on public.exam_checklist;
drop policy if exists "anon_update_checklist" on public.exam_checklist;

create policy "anon_select_checklist"
  on public.exam_checklist for select
  to anon using (true);

create policy "anon_insert_checklist"
  on public.exam_checklist for insert
  to anon with check (true);

create policy "anon_update_checklist"
  on public.exam_checklist for update
  to anon using (true) with check (true);

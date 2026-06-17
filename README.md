# zlata-eng-hub

LMS для подготовки Златы · учебник **Identity A2–B1**.

## Страницы
- `index.html` — Check List (прогресс в Supabase)
- `course-book.html` — обзор 12 юнитов → ведёт на unit-N.html
- `unit-1.html` — обзор Unit 1 (плитки 1.1–1.4)
- `unit-1-1.html` — урок 1.1 «Talk about favourites» (полный интерактив)
- `workbook.html`, `help.html` — скоро
- `bg.png` — фон · `img/u1/board.jpg` — доска урока 1.1
- `audio/028.mp3`, `audio/029.mp3` — ЗАЛЕЙ СЮДА аудио (плееры уже ждут эти файлы)
- `supabase.sql`, `supabase-lesson-answers.sql` — миграции (уже применены)

## Аудио и видео
Плееры урока 1.1 ищут файлы `audio/028.mp3` и `audio/029.mp3`.
Создай в репозитории папку `audio/` и положи туда mp3 с этими именами — заработают сами.
Видео Liam's Vlog — заглушка; дай ссылку/файл, встроим плеер.

## База
Прогресс чек-листа → таблица `exam_checklist`.
Ответы профиля «All about me» → таблица `lesson_answers`.
Студент: `zlata`. Ключ зашит в файлы.

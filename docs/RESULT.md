# Surf Flutter Study Jam 2023

<p align="center">
<img src="https://surf.ru/wp-content/themes/surf/assets/img/logo.svg" height="120" />
</p>

## Описание результатов

Многое из того, что хотел, не успел сделать, коротко опишу то, что готово.

Целевая платформа: Android (min sdk level - 21)
- ### Добавление билета, простая валидация url регуляркой и автоматическая вставка из буфера обмена, если в нем строка, удовлетворяющая регулярке
<div class="row" align="center">
    <img src="./assets/add_typing.gif" width="375" alt="Adding ticket URL by typing" />
    <img src="./assets/add_from_clipboard.gif" width="375" alt="Adding ticket URL from clipboard" />
</div>

- ### Сохранени в локальнйо базе Hive
<p align="center">
  <img src="./assets/hive.gif" width="375" alt="Saving tickets in local DB Hive" />
</p>
Только к концу дедлайна заметил баг с тем, что статус загрузки не сохраняется при перезапуске приложения, не успел исправить 😔

- ### Загрузка pdf файла
<p align="center">
  <img src="./assets/downloading.gif" width="375" alt="PDF downloading" />
</p>
Сразу начал писать загрузку с Dio, побоялся, что не успею, если возьму еще один новый для себя пакет для реализации пауз, поэтому без них

- ### Просмотр pdf на отдельном экране
<p align="center">
  <img src="./assets/pdf_viewer.gif" width="375" alt="PDF downloading" />
</p>

Еще немного обидно, что не успел сделать обработку ошибок разных и дублирующихся имен, потому что на потом откладывал. Но вообще задание классное, было интересно испытать свои силы, кое-чему я точно научился

# Minecraft Chat Overlay Translator

Desktop overlay translator for Minecraft chat, built with Kotlin/JVM and Swing.
Десктопный оверлей-переводчик для чата Minecraft, созданный на Kotlin/JVM и Swing.

It watches `latest.log` in real time, extracts `[CHAT]` lines, translates only the message body, and shows the original text plus the translation in a floating always-on-top overlay. The app also supports outgoing translation, so you can type in one language and send translated text to Minecraft chat.
Программа отслеживает файл `latest.log` в реальном времени, извлекает строки `[CHAT]`, переводит только текст сообщения и показывает оригинальный текст вместе с переводом в плавающем оверлее поверх всех окон. Приложение также поддерживает исходящий перевод, поэтому вы можете печатать на одном языке и отправлять переведенный текст прямо в чат Minecraft.

## Highlights | Ключевые особенности

- always-on-top borderless Swing overlay
  *(Swing-оверлей без рамок, работающий поверх всех окон)*
- dark translucent UI with drag and resize support
  *(темный полупрозрачный интерфейс с поддержкой перетаскивания и изменения размера)*
- real-time tail reading of `latest.log` via `RandomAccessFile`
  *(чтение конца файла `latest.log` в реальном времени через `RandomAccessFile`)*
- configurable chat languages for incoming and outgoing translation
  *(настраиваемые языки чата для входящего и исходящего перевода)*
- pluggable translation providers:
  *(подключаемые провайдеры перевода:)*
  - Google Web (`translate.googleapis.com`)
  - DeepL API
  - LibreTranslate
- `config.ini` created automatically on first launch
  *(файл `config.ini` создается автоматически при первом запуске)*
- in-app Settings dialog for log path, languages, provider, API keys, and endpoint URLs
  *(встроенное окно настроек для указания пути к логам, языков, провайдера, API-ключей и URL-адресов)*
- daily history files in `logs/translation-history-YYYY-MM-DD.txt`
  *(ежедневные файлы истории сохраняются в `logs/translation-history-YYYY-MM-DD.txt`)*
- outgoing `RU -> EN` style workflow with optional auto-send to Minecraft
  *(поддержка исходящего перевода в стиле `RU -> EN` с опциональной автоотправкой в Minecraft)*
- graceful runtime handling for locked log files and network failures
  *(корректная обработка ошибок во время работы: заблокированных файлов логов и сбоев сети)*
- launcher starts without keeping a `cmd` window open
  *(лаунчер запускается без постоянно висящего окна командной строки `cmd`)*

## First Launch | Первый запуск

On the first run, the app creates `config.ini` in the same folder as the executable or distribution and opens the Settings dialog.
При первом запуске приложение создает файл `config.ini` в той же папке, где находится исполняемый файл или дистрибутив, и открывает окно настроек.

Choose:
Выберите:

- the path to `latest.log`, the `logs` folder, or the Minecraft profile folder
  *(путь к `latest.log`, папке `logs` или папке профиля Minecraft)*
- incoming source and target languages
  *(языки входящего перевода)*
- outgoing source and target languages
  *(языки исходящего перевода)*
- translation provider
  *(провайдера перевода)*
- optional API keys / endpoints
  *(опциональные API-ключи / эндпоинты)*

If the internet connection disappears, or a translation API is unavailable, the app stays alive and shows a friendly connection error instead of crashing.
Если пропадает подключение к интернету или API перевода недоступно, приложение продолжает работу и показывает понятное сообщение об ошибке вместо вылета.

## Config File | Конфигурационный файл

The app writes a `config.ini` file automatically. A sample is included in `config.example.ini`.
Приложение автоматически создает файл `config.ini`. Пример настроек находится в файле `config.example.ini`.

The log path field accepts:
Поле пути к логам принимает:

- the full path to `latest.log`
  *(полный путь к `latest.log`)*
- the `logs` folder
  *(путь к папке `logs`)*
- the Minecraft profile folder that contains `logs/latest.log`
  *(путь к папке профиля Minecraft, содержащей `logs/latest.log`)*

Example keys / Примеры параметров:

- `log.path`
- `incoming.source.language`
- `incoming.target.language`
- `outgoing.source.language`
- `outgoing.target.language`
- `translator.provider`
- `deepl.api.key`
- `deepl.api.url`
- `libre.api.key`
- `libre.api.url`
- `outgoing.auto.send`
- `history.enabled`

## Build | Сборка

```powershell
.\gradlew.bat build installDist
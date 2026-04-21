# Minecraft Chat Overlay Translator 🌍💬

> ⚠️ **IMPORTANT: THIS IS NOT A MOD!**
> This application does not inject into or modify the game code in any way. It only reads log files externally. **You cannot get banned** for using this on any server (including Hypixel, etc.).
> 
> ⚠️ **ВАЖНО: ЭТО НЕ МОД!**
> Это приложение никак не внедряется в код игры и не изменяет его. Оно лишь читает текстовые файлы логов извне. **Вы не можете получить бан** за его использование ни на одном сервере.
<p><img src="screenshots/main.png" width="600"></p>

Desktop overlay translator for Minecraft chat, built with Kotlin/JVM and Swing.
Десктопный оверлей-переводчик для чата Minecraft, созданный на Kotlin/JVM и Swing.

It provides mechanical (machine) translation of `latest.log` in real time. It extracts `[CHAT]` lines, translates the message body, and shows the text in a floating always-on-top overlay. 
Программа осуществляет механический (машинный) перевод файла `latest.log` в реальном времени. Она извлекает строки `[CHAT]`, переводит текст сообщения и показывает его в плавающем оверлее поверх всех окон.

🔥 **Automatic Chat Typing / Автоматический ввод в чат:** The app supports outgoing translation! You can type in your native language directly into the overlay, and the program will automatically translate and type it directly into the Minecraft chat.
Приложение поддерживает исходящий перевод! Вы можете писать на своем родном языке прямо в оверлей, а программа автоматически переведет и отправит этот текст прямо в чат Minecraft.

<p><img src="screenshots/ingame.png" width="600"></p>
 
## 🌐 Supported Languages | Поддерживаемые языки
The mechanical translation works with dozens of languages, including but not limited to:
Механический перевод работает с десятками языков, включая (но не ограничиваясь):
* English (Английский)
* Russian (Русский)
* Ukrainian (Украинский)
* French (Французский)
* German (Немецкий)
* Polish (Польский)
* Spanish (Испанский)
* Japanese (Японский)
* Portuguese (Португальский)
* Turkish (Турецкий)

<p><img src="screenshots/setting.png" width="600"></p>

## 🚀 Highlights | Ключевые особенности

- always-on-top borderless Swing overlay
  *(Swing-оверлей без рамок, работающий поверх всех окон)*
- dark translucent UI with drag and resize support
  *(темный полупрозрачный интерфейс с поддержкой перетаскивания и изменения размера)*
- configurable chat languages for incoming and outgoing translation
  *(настраиваемые языки чата для входящего и исходящего перевода)*
- pluggable translation providers (Google Web, DeepL API, LibreTranslate)
  *(подключаемые провайдеры перевода: Google, DeepL, LibreTranslate)*
- graceful runtime handling for locked log files and network failures
  *(корректная обработка ошибок: заблокированных файлов логов и сбоев сети)*
- launcher starts without keeping a `cmd` window open
  *(лаунчер запускается без постоянно висящего окна командной строки)*

## 📦 How to Start & Where to Find Files | Как запустить и где найти файлы

**1. Locate the Launcher / Поиск лаунчера:**
After downloading the project or extracting the release, look for the **`start-translator.bat`** file in the main (root) folder. Double-click it to start the app.
После скачивания проекта или распаковки релиза, найдите файл **`start-translator.bat`** в главной (корневой) папке. Запустите его двойным кликом.

**2. First Launch / Первый запуск:**
On the first run, the app will automatically create a **`config.ini`** file in the same folder as the launcher and open the Settings dialog.
При первом запуске приложение автоматически создаст файл **`config.ini`** в той же папке, где находится лаунчер, и откроет окно настроек.

**3. Setup / Настройка:**
Choose: / Выберите:
- the path to `latest.log`, the `logs` folder, or the Minecraft profile folder
  *(путь к файлу `latest.log`, папке `logs` или папке профиля Minecraft)*
- incoming source and target languages
  *(языки входящего перевода)*
- outgoing source and target languages
  *(языки исходящего перевода)*
- translation provider
  *(провайдера перевода)*

## ⚙️ Config File | Конфигурационный файл

If you need to edit settings manually, open the `config.ini` file. A sample is included in `config.example.ini`.
Если вам нужно изменить настройки вручную, откройте файл `config.ini`. Пример настроек находится в файле `config.example.ini`.

Example keys / Примеры параметров:
- `log.path`
- `incoming.source.language`
- `incoming.target.language`
- `outgoing.source.language`
- `outgoing.target.language`
- `outgoing.auto.send` (Set to `true` for automatic chat typing / Установите `true` для автоматической отправки в чат)

## 🛠️ Build & Run from Source | Сборка и запуск из исходников

Build / Сборка:
```powershell
.\gradlew.bat build installDist

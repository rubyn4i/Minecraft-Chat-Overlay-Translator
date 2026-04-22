# Minecraft Chat Overlay Translator 🌍💬

> ⚠️ **IMPORTANT: THIS IS NOT A MOD!**
> This application does not inject into or modify the game code in any way. It only reads log files externally. **You cannot get banned** for using this on any server (including Hypixel, etc.).
> 
> ⚠️ **ВАЖНО: ЭТО НЕ МОД!**
> Это приложение никак не внедряется в код игры и не изменяет его. Оно лишь читает текстовые файлы логов извне. **Вы не можете получить бан** за его использование ни на одном сервере.

<p align="center"><img src="screenshots/main.png" width="600"></p>

### 🛠 Why this tool? | Зачем нужна эта программа?

This app is a perfect replacement for the "Chat Translator" mod on modded servers like **Cobblemon.gg**, **Roanoke**, **RLCraft Official Servers**, or any others with a strict whitelist. Unlike mods, this tool won't cause a "Mismatched mod list" error because it runs as a separate process.

Эта программа — идеальная замена моду "Chat Translator" на серверах с модами, таких как **Cobblemon.gg**, **Roanoke**, **RLCraft** и других с жестким списком модов. В отличие от модов, эта утилита не вызовет ошибку "Mismatched mod list", так как работает отдельным процессом.

---

### 📝 Description | Описание

Desktop overlay translator for Minecraft chat, built with Kotlin/JVM and Swing.

**Десктопный оверлей-переводчик для чата Minecraft, созданный на Kotlin/JVM и Swing.**

It provides mechanical (machine) translation of `latest.log` in real time. It extracts `[CHAT]` lines, translates the message body, and shows the text in a floating always-on-top overlay. 

**Программа осуществляет механический (машинный) перевод файла `latest.log` в реальном времени. Она извлекает строки `[CHAT]`, переводит текст сообщения и показывает его в плавающем оверлее поверх всех окон.**

🔥 **Automatic Chat Typing / Автоматический ввод в чат:** The app supports outgoing translation! You can type in your native language directly into the overlay, and the program will automatically translate and type it directly into the Minecraft chat.

**Приложение поддерживает исходящий перевод! Вы можете писать на своем родном языке прямо в оверлей, а программа автоматически переведет и отправит этот текст прямо в чат Minecraft.**

---

### 🎮 Compatibility | Совместимость

Works with all versions from **1.7.2 to the latest current version** (as long as the game maintains logging). If Mojang changes the logging format, I will release an update.

**Работает со всеми версиями, начиная с 1.7.2 и до текущей актуальной (пока игра поддерживает логирование). Если Mojang что-то изменит в формате логов, я это исправлю.**

<p align="center"><img src="screenshots/ingame.png" width="600"></p>

## 🌐 Supported Languages | Поддерживаемые языки

The mechanical translation works with dozens of languages, including:
**Механический перевод работает с десятками языков, включая:**

* English (Английский), Russian (Русский), Ukrainian (Украинский)
* French (Французский), German (Немецкий), Polish (Польский)
* Spanish (Испанский), Japanese (Японский), Portuguese (Португальский), Turkish (Турецкий)

<p align="center"><img src="screenshots/setting.png" width="600"></p>

## 🚀 Highlights | Ключевые особенности

- **Always-on-top borderless Swing overlay**
  *(Swing-оверлей без рамок поверх всех окон)*
- **Dark translucent UI with drag and resize support**
  *(Темный полупрозрачный интерфейс с изменением размера)*
- **Pluggable translation providers** (Google Web, DeepL API, LibreTranslate)
  *(Подключаемые провайдеры перевода)*
- **Launcher starts without keeping a `cmd` window open**
  *(Запуск без висящего окна консоли)*

## 📦 How to Start | Как запустить

**1. Locate the Launcher / Поиск лаунчера:**
Look for the **`start-translator.bat`** file in the root folder. Double-click it to start.
**Найдите файл `start-translator.bat` в корневой папке и запустите его.**

**2. First Launch / Первый запуск:**
The app will automatically create a **`config.ini`** and open Settings.
**Приложение создаст `config.ini` и откроет настройки.**

**3. Setup / Настройка:**
Choose the path to `latest.log` and select your languages.
**Выберите путь к `latest.log` и укажите нужные языки.**

## ⚙️ Config File | Конфигурационный файл

If you need to edit settings manually, open the `config.ini`.
**Если нужно изменить настройки вручную, используйте `config.ini`.**

Example keys / Примеры параметров:
- `log.path`
- `outgoing.auto.send` (Set to `true` for auto-typing / `true` для авто-отправки)

## 🛠️ Build from Source | Сборка

```powershell
.\gradlew.bat build installDist

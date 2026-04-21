# Minecraft Chat Overlay Translator

Desktop overlay translator for Minecraft chat, built with Kotlin/JVM and Swing.

It watches `latest.log` in real time, extracts `[CHAT]` lines, translates only the message body, and shows the original text plus the translation in a floating always-on-top overlay. The app also supports outgoing translation, so you can type in one language and send translated text to Minecraft chat.

## Highlights

- always-on-top borderless Swing overlay
- dark translucent UI with drag and resize support
- real-time tail reading of `latest.log` via `RandomAccessFile`
- configurable chat languages for incoming and outgoing translation
- pluggable translation providers:
  - Google Web (`translate.googleapis.com`)
  - DeepL API
  - LibreTranslate
- `config.ini` created automatically on first launch
- in-app Settings dialog for log path, languages, provider, API keys, and endpoint URLs
- daily history files in `logs/translation-history-YYYY-MM-DD.txt`
- outgoing `RU -> EN` style workflow with optional auto-send to Minecraft
- graceful runtime handling for locked log files and network failures
- launcher starts without keeping a `cmd` window open

## First Launch

On the first run, the app creates `config.ini` in the same folder as the executable or distribution and opens the Settings dialog.

Choose:

- the path to `latest.log`, the `logs` folder, or the Minecraft profile folder
- incoming source and target languages
- outgoing source and target languages
- translation provider
- optional API keys / endpoints

If the internet connection disappears, or a translation API is unavailable, the app stays alive and shows a friendly connection error instead of crashing.

## Config File

The app writes a `config.ini` file automatically. A sample is included in `config.example.ini`.

The log path field accepts:

- the full path to `latest.log`
- the `logs` folder
- the Minecraft profile folder that contains `logs/latest.log`

Example keys:

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

## Build

```powershell
.\gradlew.bat build installDist
```

## Run From Source

```powershell
.\gradlew.bat run
```

## Packaged Run

After `installDist`, use the generated distribution under:

```text
build/install/minecraft-chat-overlay-translator
```

For the no-console launcher, use the top-level `start-translator.bat`.

## Translation Providers

### Google Web

- default option
- no API key required
- best-effort only

### DeepL

- add your own API key in Settings
- default URL: `https://api-free.deepl.com/v2/translate`

### LibreTranslate

- set your own endpoint URL in Settings
- optional API key field is available

## Files Created Next To The App

- `config.ini`
- `logs/`
- `logs/translation-history-YYYY-MM-DD.txt`

Both are ignored by `.gitignore` so they do not pollute the repository.

## GitHub Readiness

This project is structured so it can be published directly:

- Kotlin/JVM Gradle project
- repository-safe `.gitignore`
- user config separated from source
- local history separated from source
- no hardcoded Minecraft log path in code
- no hardcoded local Java path in the launcher

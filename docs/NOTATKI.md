# Notatki projektu Jarvis

## Stan (17.11.2026)
- Zainstalowane 39 agentów z `msitarzewski/agency-agents` w `.claude/agents/`
  (social video, e-commerce/dropshipping, reklamy, trading/finanse, budowa stron i AI).
- Instalacja na komputerze: `scripts/install-agents.ps1` (Windows) lub `scripts/install-agents.sh` (macOS/Linux).

## Do zrobienia: FreeLLMAPI
Repo: https://github.com/tashfeenahmed/freellmapi (MIT, "personal experimentation only")
- Co to jest: jeden endpoint `/v1` (zgodny z OpenAI i Anthropic) który łączy ~87 darmowych dostawców LLM
  (Gemini, Groq, OpenRouter, NVIDIA NIM itd.) z automatycznym przełączaniem i limitami.
- Po co w Jarvisie: tani/darmowy "mózg" do prostszych zadań (generowanie postów, podpisów, opisów produktów),
  żeby nie zużywać limitów Claude'a.
- Instalacja:
  - Windows: aplikacja z Microsoft Store (FreeLLMAPI) lub `.exe` z Releases.
  - macOS: `.dmg` z Releases.
  - Linux/serwer (Docker): `curl -fsSL https://freellmapi.co/install.sh | bash`
  - Dashboard: http://127.0.0.1:31415 — tam dodaje się klucze API darmowych dostawców i bierze jeden wspólny klucz.
- Uwaga: trzeba samemu założyć darmowe konta u dostawców (Gemini, Groq, OpenRouter...) i wkleić klucze w dashboardzie.
  Darmowe modele są słabsze od Claude'a i mają limity — do kodu/budowy Jarvisa dalej używamy Claude Code.

## Pytania otwarte (jutro)
1. Jak rozmawiać z Jarvisem: głos / strona WWW / Telegram-Discord?
2. Co Jarvis ma robić jako pierwsze?
3. Komputer czy chmura 24/7?

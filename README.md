# software_trends_smart_data_labo

Open deze repository als **devcontainer**. In de notebook file kun je snel Python snippets coderen, de juiste packages zijn al geïnstalleerd in de devcontainer. De opgave van dit labo staat in de `Oefeningen.md` file.

## Structuur
- `.devcontainer/devcontainer.json` — VS Code devcontainer-configuratie (opent automatisch op Jupyter-port 8888).
- `Dockerfile` / `requirements.txt` — packages: jupyter, numpy, pandas, matplotlib, seaborn, requests, beautifulsoup4, neo4j, python-dotenv.
- `Oefeningen.md` — de labo-opgave (Telraam open verkeersdata + Neo4j knowledge graphs + FAIR-reflectie).
- `notebook.ipynb` — startnotebook.
- `data/northwind/` — zet hier de Northwind CSV's voor Oefening 2.

## Credentials
Kopieer `.env.example` naar `.env` en vul je Telraam API-key en Neo4j Aura credentials in. `.env` is in `.gitignore` opgenomen — commit nooit echte keys. De devcontainer leest de variabelen uit je lokale omgeving (`TELRAAM_API_KEY`, `NEO4J_URI`, `NEO4J_USER`, `NEO4J_PASSWORD`); in je notebook kan je ze ook inladen met `python-dotenv`.
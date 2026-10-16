# Labo Software Trends / Open / Smart Data

- Werk in een Python Jupyter notebook binnen de **devcontainer** van deze repository.
De packages **pandas**, **seaborn**, **requests** en **beautifulsoup4** (plus **matplotlib** en de **neo4j** driver) zijn al geïnstalleerd — zie `requirements.txt`.
De notebook kan je ook runnen als een devcontainer vanuit [GitHub](https://github.com/brunoruns/conda-jupyter-base/tree/software_trends).

Tijdens dit labo wordt gebruik van **AI** sterk aangemoedigd.  
> _Opgelet_: Op het examen is dit verboden (het examen is volledig gesloten boek).

> **API-credentials**: stop je API-keys nooit hard-coded in de notebook dat je commit.
> Gebruik het bestand `.env` (kopieer `.env.example`) en laad het met `python-dotenv`, of gebruik omgevingsvariabelen.
>
> **Rate limits**: de [Nominatim](https://nominatim.openstreetmap.org) API verplicht een correcte `User-Agent`-header en maximaal 1 request per seconde.
> De [Telraam API](https://www.telraam.net) heeft een beperkte maandelijke quota — cache je resultaten in de notebook waar mogelijk.

### Te doen vandaag
- De notebook met antwoorden en visualisaties, inclusief het gegenereerde **NGSI-LD** JSON-antwoord.
- Het Cypher-script / export van je Neo4j-graaf (Oefening 2).

---

## Oefening 1: Telraam open verkeersdata
1. Maak een account aan op [www.telraam.net](https://www.telraam.net).
2. Vraag een API credential aan en bewaar het in je `.env`.
3. Gebruik de **Telraam API** om de gegevens van een Telraam naar keuze op te vragen voor de voorbije week (of voor het Telraam dichtst bij de hogeschool: `9000008299`).

### Data kwaliteit
Beantwoord de volgende vragen:
- Is de dataset volledig? Of ontbreken er datapunten?
    - Gebruik **requests** om de data van de API in te laden.
    - Gebruik **pandas** en **seaborn** om de data in een dataframe te zetten en vlot te visualiseren.
    - Beoordeel de volledigheid van de dataset - bekijk de slides om te beoordelen welke aspecten goed en midner goed zijn.

### Data formaat
- Bekijk het [TrafficFlowObserved dataformaat](https://fiware-datamodels.readthedocs.io/en/stable/Transportation/TrafficFlowObserved/doc/spec/index.html).
- Vorm de data van Telraam om in 4 datastromen (auto's, vrachtwagens/trucks, voetgangers, fietsers).
- Schrijf een parser die de data omzet naar **NGSI-LD** formaat (zie voorbeeld op de link boven).

### Extra:
- Haal het adres van de locatie op via een reverse query op [Nominatim OpenStreetMap](https://nominatim.openstreetmap.org) en voeg dit toe aan de NGSI-LD als **refRoad**.

### Reflectie: FAIR-principes
Beoordeel de gebruikte datasets volgens de [FAIR-principes](https://www.go-fair.org/fair-principles/) (Findable, Accessible, Interoperable, Reusable):
- Zijn er metadata, licenties en persistente identifiers beschikbaar?
- Voldoet het NGSI-LD formaat aan het **Interoperable**-principe? Waarom (niet)?

---

## Oefening 2: Neo4J Knowledge Graphs
1. Maak een account aan op [Neo4J Aura](https://neo4j.com/cloud/platform/aura-graph-database/?ref=neo4j-home-hero).
2. Maak een eerste instance aan – hou het wachtwoord dat je krijgt goed bij (bewaar het in je `.env` als `NEO4J_PASSWORD`).
3. Volg de tutorial om de films toe te voegen en visualiseer je resultaat. (https://neo4j.com/blog/developer/getting-started-with-play-movies/)
4. Verwijder je instance (of wis deze) en maak een nieuwe aan.
5. Gebruik de code van de connect-pagina om vanuit je Python notebook/script met **Neo4J** te connecteren – de oplossing zal in Python worden getoond, maar je bent vrij om met een andere taal te werken.
6. Importeer de **CSV-files** uit de **Northwind dataset** (lokaal aanwezig in [`data/northwind/`](data/northwind/)) via de Neo4j import-tutorial op de webinterface of via `LOAD CSV` in Cypher.

### Extra:
Pas de boilerplate-code aan zodat je niet alleen Alice en Bob aanmaakt, maar ook de volgende structuur:
- **Studenten**:
    - Ingeschreven voor **cursussen**
    - Cursussen worden gegeven door **lectoren**
- Voeg 10 studenten toe met verschillende vakken en lectoren.

# Labo Software Trends / Open / Smart Data

- Werk in een Python Jupyter notebook, met een eigen conda-omgeving die de packages **pandas**, **seaborn**, **requests**, en **beautifulsoup4** bevat.  
Deze notebook kan je ook runnen als een devcontainer vanuit [GitHub](https://github.com/brunoruns/conda-jupyter-base/tree/software_trends).

Tijdens dit labo wordt gebruik van **ChatGPT** en dergelijke sterk aangemoedigd.  
> _Opgelet_: Op het examen is dit verboden (het examen is volledig gesloten boek).

---

## Oefening 1: Telraam Open Verkeersdata
1. Maak een account aan op [www.telraam.net](https://www.telraam.net).
2. Vraag een API credential aan.
3. Gebruik de **Telraam API** om de gegevens van een Telraam naar keuze op te vragen voor de voorbije week (of voor het Telraam dichtst bij de hogeschool: `9000003902`).
4. Werk in een Python Jupyter notebook, met een eigen conda-omgeving die de packages **pandas**, **seaborn**, **requests** en **beautifulsoup4** bevat.

### Data Kwaliteit
Beantwoord de volgende vragen:
- Is de dataset volledig? Of ontbreken er datapunten?
    - Gebruik **requests** om de data van de API in te laden.
    - Gebruik **pandas** en **seaborn** om de data in een dataframe te zetten en vlot te visualiseren.
    - Beoordeel de volledigheid van de dataset.

### Data Formaat
- Bekijk het [TrafficFlowObserved dataformaat](https://fiware-datamodels.readthedocs.io/en/stable/Transportation/TrafficFlowObserved/doc/spec/index.html).
- Vorm de data van Telraam om in 4 datastromen (auto's, camions, voetgangers, fietsers).
- Schrijf een parser die de data omzet naar **NGSI-LD** formaat (zie voorbeeld op de link boven).

### Extra:
- Haal het adres van de locatie op via een reverse query op [Nominatim OpenStreetMap](https://nominatim.openstreetmap.org) en voeg dit toe aan de NGSI-LD als **refRoad**.

---

## Oefening 2: Neo4J Knowledge Graphs
1. Maak een account aan op [Neo4J Aura](https://neo4j.com/cloud/platform/aura-graph-database/?ref=neo4j-home-hero).
2. Maak een eerste instance aan – hou het wachtwoord dat je krijgt goed bij.
3. Volg de tutorial om de films toe te voegen en visualiseer je resultaat.
4. Verwijder je instance (of wis deze) en maak een nieuwe aan.
5. Gebruik de code van de connect-pagina om vanuit je Python notebook/script met **Neo4J** te connecteren – de oplossing zal in Python worden getoond, maar je bent vrij om met een andere taal te werken.
6. Importeer **CSV-files** uit de **Northwind dataset** (bijvoorbeeld [hier](https://gist.github.com/alvin-yang68)) via de tutorial op de webinterface.

### Extra:
Pas de boilerplate-code aan zodat je niet alleen Alice en Bob aanmaakt, maar ook de volgende structuur:
- **Studenten**:
    - Ingeschreven voor **cursussen**
    - Cursussen worden gegeven door **lectoren**
- Voeg 10 studenten toe met verschillende vakken en lectoren.

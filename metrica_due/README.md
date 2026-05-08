# Hub Talenti Junior: Classifica Salariale per Paese
L'obiettivo di questa analisi è identificare le aree geografiche che offrono le migliori condizioni economiche d'ingresso per i profili Junior (0-2 anni di esperienza) all'interno dei 10 paesi campionati nel dataset.

# Processo Tecnico
Ho gestito l'estrazione e la pulizia dei dati per isolare i profili entry-level:
* **Query SQL** : Ho interrogato il dataset filtrando per l'esperienza lavorativa (experience_years <= 2). Ho rinominato la colonna Location in Paese direttamente nel codice per garantire una nomenclatura chiara fin dall'origine. 
(Il codice è disponibile nel file .sql dedicato).
* **Semplificazione del dato**: Inizialmente l'analisi prevedeva l'incrocio tra Paesi e Settori, ma la visualizzazione risultava troppo frammentata. Ho scelto quindi di aggregare i dati solo per Paese per fornire una visione strategica "macro" più immediata.
* **Logica di Calcolo**: Ho utilizzato la funzione AVG per determinare lo stipendio medio nazionale, ordinando i risultati in modo decrescente per evidenziare i mercati leader.

# Visualizzazione (Google Sheets)
* **Formattazione condizionale**: Applicata una scala di colori dal bianco al verde sulla colonna dello stipendio medio per rendere immediatamente percepibile la gerarchia retributiva tra i diversi paesi.
* **Grafico a barre**: Ho creato un grafico basato sui risultati aggregati, ordinato per RAL decrescente.

### Grafico: Stipendio Medio Junior rispetto a Paese

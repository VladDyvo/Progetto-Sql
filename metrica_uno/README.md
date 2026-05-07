# Analisi Education Premium: Laurea vs Diploma
L'obiettivo di questa analisi è rispondere a una domanda pratica: quanto incide economicamente la laurea sulla RAL rispetto a un diploma? 
Ho analizzato il vantaggio salariale nei 10 paesi del dataset, calcolando lo scostamento percentuale tra le due categorie.

 # Processo Tecnico
Ho gestito l'elaborazione su SQL per avere un dato pulito da importare su Sheets:

* **Query SQL**: Ho usato una CTE (EducationSalary) per dividere i profili in due macro-gruppi: Laureati (Bachelor, Master, PhD) e Diplomati (High School, Diploma).
* **Logica di Calcolo**: Ho calcolato le medie con AVG(CASE WHEN...) e generato il gap direttamente nel codice con la formula: ROUND(((avg_degree - avg_diploma) / avg_diploma) * 100, 2) AS Gap_Percentuale.
* **Pulizia**: Ho filtrato i valori NULL su avg_diploma e avg_degree per escludere i paesi in cui non erano presenti dati sufficienti per entrambe le categorie di istruzione, garantendo così che il gap percentuale fosse calcolato solo su confronti completi e affidabili.
I risultati sono stati poi ordinati in modo decrescente sul Gap Percentuale per mettere immediatamente in evidenza i paesi con il ritorno economico maggiore.

# Visualizzazione
Su Google Sheets, ho lavorato sulla leggibilità del dato:

* **Formattazione condizionale**: Applicata una scala di colori dal bianco (valore minimo) al verde (valore massimo) sulla colonna del Gap, per evidenziare visivamente l'intensità del ritorno economico e creare una gerarchia immediata dei dati.
* **Grafico**: Un grafico a barre che mostra il gap percentuale per ogni paese, ordinato dal valore più alto al più basso, con le etichette dati visibili sopra ogni barra per una lettura immediata.

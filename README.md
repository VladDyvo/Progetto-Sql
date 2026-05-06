# Progetto-Sql

## Analisi delle Previsioni Salariali (Job Salary Prediction)
Analisi esplorativa di un dataset contenente 250.000 record di offerte di lavoro, finalizzata a comprendere come l'istruzione, l'esperienza e il settore influenzino il livello retributivo.

## Team
**Vladyslav Dyvohryts**: Data Analyst/SQL Developer

## Dataset
Il dataset è stato estratto da Kaggle ([Job Salary Prediction Dataset]). Contiene informazioni dettagliate su:

* **Titoli lavorativi**: Ruoli (es. Sviluppatore, Analista dati).

* **Esperienza**: Anni di esperienza nel settore.

* **Istruzione**: Livello di studi (Laurea, Maestro, Scuola superiore).

* **Industria**: Settore di attività (Finanza, Programmazione, Sanità).

* **Località e Dimensioni Aziendali**: Fattori geografici e strutturali.
  

  # Obiettivi dell'analisi
L'analisi si concentra su 6 metriche chiave per comprendere le dinamiche del mercato del lavoro:

1. **Premio Salariale dell'Istruzione**: Quantificare il vantaggio economico di una laurea rispetto al diploma per ogni paese.

2. **Talenti Junior**: Confrontare lo stipendio medio d'ingresso (0-2 anni di esperienza) nei diversi paesi.

3. **ROI delle Certificazioni**: Misurare l'incremento della RAL media per ogni certificazione aggiuntiva ottenuta.

4. **Skill Overload**: Verificare se esiste un limite massimo di competenze oltre il quale lo stipendio smette di crescere.

5. **Premium del Lavoro Remoto**: Calcolare il vantaggio salariale offerto dalle posizioni in smart working rispetto a quelle in presenza.

6. **Startup vs Multinazionali**: Analizzare in quali settori le piccole aziende offrono compensi migliori rispetto alle grandi imprese.


 # Strumenti utilizzati
* **SQL**: Per la pulizia dei dati, il filtraggio e l'aggregazione delle metriche.

* **Google Sheets**: Per la creazione di dashboard interattive e la visualizzazione grafica dei risultati.


 # Conclusioni e Risultati Finali
 ## Analisi 1 — Gap Salariale: Laurea vs Diploma
Per questo esercizio ho misurato il ritorno sull'investimento dell'istruzione accademica, calcolando la differenza percentuale tra lo stipendio medio di chi possiede una laurea e chi ha solo un diploma, in tutti i paesi del dataset.
Dal grafico emerge che il Regno Unito guida la classifica con un premio salariale del 14,28%, seguito da Germania (14,27%) e Australia (14,20%). L'India chiude con il valore più basso, ma comunque significativo, del 13,62%.
L'aspetto più interessante non è la differenza tra i paesi, ma la loro uniformità: il gap salariale si mantiene in un range strettissimo tra il 13,62% e il 14,28% in tutti i 10 paesi analizzati. Questo suggerisce che il mercato del lavoro globale riconosce il valore della laurea in modo consistente, indipendentemente dalla geografia.
**Conclusione**: investire in un titolo universitario garantisce mediamente un premio salariale di circa il 14% a livello globale.

## Analisi 3 — ROI delle Certificazioni
Per questa analisi ho scelto di rappresentare l'Incremento Marginale, ovvero quanto aumenta lo stipendio medio per ogni certificazione aggiuntiva, invece dello stipendio assoluto.
Il dato più interessante è il "salto" tra la 2ª e la 3ª certificazione, che genera il ritorno economico più alto in assoluto: +€2.015,59. Anche il passaggio da 0 a 1 certificazione è significativo con +€1.935,78.
Dopo la terza certificazione l'incremento scende a €1.218,98, per poi risalire leggermente a €1.504,10 alla quinta. Questo andamento non perfettamente lineare suggerisce che il mercato non premia le certificazioni in modo uniforme.
**Conclusione**: il punto di massimo rendimento si trova alla 3ª certificazione. Oltre questo numero il vantaggio economico continua, ma con ritorni meno prevedibili.

## Analisi 4 — Skill Overload
Ho analizzato la relazione tra il numero di competenze possedute e lo stipendio medio, per verificare se esiste un punto di saturazione oltre il quale acquisire nuove skill smette di essere economicamente vantaggioso.
Il grafico mostra una crescita costante dello stipendio medio fino a circa 15 competenze, dove si raggiunge un picco intorno a €150.000. Oltre questa soglia, la curva si appiattisce progressivamente: passare da 15 a 19 competenze genera un incremento totale di soli ~€3.000.
**Conclusione**: il mercato del lavoro premia la polivalenza, ma con rendimenti decrescenti oltre le 15 skill. Questo fenomeno — che possiamo chiamare Skill Overload — suggerisce che investire il proprio tempo in competenze aggiuntive oltre questa soglia ha un ritorno economico marginale sempre più basso.

## Analisi 5 — Premium del Lavoro Remoto
Per questa analisi ho misurato lo Scostamento Percentuale di ogni modalità lavorativa rispetto alla media salariale globale del dataset, invece di confrontare i valori assoluti.
Il risultato è netto: il Full Remote genera un "Remote Premium" del +2,44%, mentre le modalità Hybrid (-1,20%) e In Presenza (-1,23%) si collocano entrambe leggermente sotto la media globale — con una differenza trascurabile tra loro.
La cosa più interessante è che Hybrid e In Presenza sono quasi identici, il che suggerisce che non è la presenza fisica in sé ad essere penalizzata, ma l'assenza della flessibilità totale.
**Conclusione**: il mercato attuale premia il Full Remote, probabilmente perché consente alle aziende di accedere a talenti altamente specializzati indipendentemente dalla loro posizione geografica.




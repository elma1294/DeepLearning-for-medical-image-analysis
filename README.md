# Design_Projekt_DL4Medicalimages

Welcome to Design_Projekt_DL4Medicalimages Project page!

Im Rahmen des Design-Projektes sollen Vorlesungs- und Seminarmaterialen zur Anwendung neuronaler Netze im Bereich der medizinischen Bildverarbeitung erstellt werden. Dabei liegt der Fokus auf einer grundlegenden Einführung in das Thema mit dem Ziel einen Überblick über die Vielfältigkeit des maschinellen Lernens zu geben sowie anhand konkreter Anwendungsbespiele Wissen praktisch zu vermitteln. Dabei haben wir uns mit zwei Anwendungsgebieten beschäftigt:

- Segmentierung der Netzhautblutgefäße 
- Klassifikation von Hautkrebs



# **Repository-Struktur**
Im Folder ```source ``` befinden sich alle Skripte, die für die Erstellung der Modelle, die Datenaufbereitung und die Erstellung der Plots verwendet wurden. Die Sprache von allen Skripten ist Python. 

Weil der Code an einem Linux System getestet und trainiert wurde, ist hier auch das Setup für centos und ubuntu System notiert.

Im Folder ```BloodVessel``` befinden sich alle Arten von BCDU-Netzwerk, die für die Segmentierung der Netzhautblutgefäße verwendet wurden. Zugehörige Gewichte und Ergebnisse wurden auch in diesem Ordner gespeichert.

Im Folder ```Skin_Cancer_classification``` befinden sich unterschiedliche Datensätze, die für die Klassifikation von Hautkrebs verwendet wurden. Zugehörige Gewichte und Ergebnisse wurden auch in diesem Ordner gespeichert.



# **Datensatz**
|Aufgabe|Datensatz|
|---|---|
|Segmentierung der Netzhautblutgefäße|[DRIVE](https://drive.google.com/file/d/17wVfELqgwbp4Q02GD247jJyjq6lwB0l6/view)|
|Klassifikation von Hautkrebs|[HAM10000 dataset](https://www.kaggle.com/datasets/surajghuwalewala/ham1000-segmentation-and-classification)|

# **Requirments**
- Python 3
- tensorflow=2.12.0
- Die für jede Aufgabe benötigten Bibliotheken sind als requirements.txt im jeweiligen Ordner vorhanden


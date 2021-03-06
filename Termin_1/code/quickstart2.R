
### Vektoren verketten
  beide = c(v,w) 
  beide

### Dateiein- und -ausgabe, Beispiel "data_table.txt"

#Textdatei mit Kopfzeile importieren ("data_table.txt")
	imported_data = read.table(file = "data_table.txt", header = TRUE) 
	#? Warn- und Fehlermeldungen helfen (meist). Was stimmt nicht?
	#! Arbeitsverzeichnis muss gewechselt werden
	#i Arbeitsverzeichnis wechseln (z.B. via "Session" = "Set working directory" 
	#i oder Kommando "setwd()" )  


	#Ergebnis ist ein "dataframe": Tabelle mit verschiedenen Werten (Zahlen, W�rter, ...)
	imported_data
  
	#Zugriff auf erste Tabellenspalte  
	  imported_data$Rknowledge 
	  imported_data[ ,1] 
	#i Zugriff erfolgt mit Angabe des Tabellennamens und $"Spaltenname" oder [Zeile, Spale]  
	#? Gib die komplette zweite Zeile aus!  
	#! imported_data[2, ]
	  
	#Einzelwert der ersten Spalte abrufen
	  imported_data$Rknowledge[2] 
	  imported_data[2,1] 
	  
	# Spalte ver�ndern
	  imported_data$knowledge_index = imported_data$knowledge_index + 1 
	  
	#? Stelle knowledge_index gegen happyness_index grafisch dar!
	#! plot(imported_data$knowledge_index, imported_data$happyness_index) #plot contents of dataframe
	  
	# Tabelle mit Trennzeichen ";" exportieren
		write.table(file = "output.csv", x = imported_data, sep = ";") 
	#? �ffen die entstandene Tabelle z.B. mit Calc oder Excel. Was f�llt auf? Korrigiere dies!   
	#! write.table(file = "output.csv", x = imported_data, sep = ";", row.names=FALSE) 
		

### Schleife mit Abbruchkriterium
  countdown = 10
  while (countdown > 0)        
  {   #i alles innerhalb der geschweiften Klammern geh�rt zum Schleifenzyklus                               
    print(countdown)
    countdown = countdown - 1
  }
  print("ignition!")


#Diagramme
 # einfaches Punktdiagramm
 plot (v, w) 
 
 #? Warn- und Fehlermeldungen helfen (meist). Was stimmt nicht?  
 plot (v, beide) 
 
 # Funktionsargumente k�nnen auch benannt werden
 plot (x=v, y=w) 
 
 #Liniengrafik, vorherige Grafik wird �berschrieben
 plot (v, w, type = "l") 
 #i vorherige Grafiken sind mit den Pfeil-Icons abrufbar
 
 # Linie zur bestehenden Grafik hinzuf�gen
 lines(v,3.5*sqrt(v), col = "red") 
 # Legende
 legend("topright", legend = c("Das ist v","irgendeine Wurzelfunktion"), col = c("black", "red"), lty = 1)
 #? F�ge einen Punkt in X-Form bei 5;5 ein! Tipp: Hilfe f�r lines, Abschnitt "See Also"
 #! points(5,5, pch="X")   
 #i Grafiken k�nnen �ber "Export" exportiert werden 
 
 
 
# Pakete installieren / laden: zus�tzliche Funktionen k�nnen durch Pakete hinzugef�gt werden.
# Diese m�ssen ggf. installiert werden.
 #Befehl anwenden: zoomen - Geht noch nicht
 zm() 

#i Reiter "packages", "Install" oder
 install.packages("zoom")
 
 #Paket laden
 library(zoom)
 
 #Befehl anwenden: zoomen
 zm() 

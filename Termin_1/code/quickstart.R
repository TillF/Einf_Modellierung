# Einsteiger-Befehlssammlung for R

# Die Raute (#) markiert einen Kommentar. R ignoriert alles, was in der Zeile dann folgt. 
#i Hinweise zur Softwarebedienung
#? Zusatzaufgaben
#! L�sung Zusatzaufgabe


#i R als reine Konsolenanwendung starten --> R ist im Kern eine Konsolenprogramm

  # R als Taschenrecher
  5 + 7
  #i vorherige Befehle k�nnen �ber die Pfeiltasten wiederholt werden  
  #i Bequemer mit RStudio: Rstudio starten, History-Fenster benutzen
    
    
  # Einfache Zuweisungen  
  #i  "=": Zuweisung
    x = 3.7
  # genau das gleiche: die Variante der R-Puristen
    x <- 3.7
  #i Variable erscheint im Environment-Fenster

  # Wert von x ausgeben
    x
    print(x)
    
    ein_kreativer.Variablenname = 7 #Gro�/Kleinschreibung wird unterschieden, _ und . sind erlaubt
    1 unzul�ssiger Name = 4 #das geht nicht: Zahlen am Anfang, Leerzeichen. Umlaute besser vermeiden.
    
  #? Wie werden Zeichenketten zugewiesen bzw. ausgegeben?  
  #! stadt = "Potsdam"      
  #i "": Kennzeichnung von Zeichenketten
  
  # etwas rechnen
    y = x^2 + 3
    y
  
  # eine einfache Funktion benutzen
  denke_positiv = abs(-3.14)
  #i Funktionshilfe durch Druck auf F1 oder z.B. ?sin
  #i Befehlsvervollst�ndigung und Argumenthilfe durch Tab
  #i (): Argument�bergabe an Funktionen

  
### Vektoren oder Arrays
  v = 1:5
  v
  
  w = 9:5
  w
  
  #? Erzeuge einen Vektor mit den geraden Zahlen bis 10! Tipp: Funktion "seq"  
  #! q = seq(from = 2, to = 10, by = 2)
  q

  #erstes Element im Vektor ver�ndern
  v[1] = 1.5 
  #i []: Indizierung von Teilen eines Vektors   
  #? Gib die ersten drei Elemente aus v aus!
  #! v[1:3]  
  

  #i Befehle oder ganze Programme in Dateien speichern: Datei -> Neu
  #i Befehle aus History kopieren
  #i Workspace leeren und Skript-Datei �ber "Source" ausf�hren (Strg+Shift+Enter)
  #i auch Ausf�hren von Einzelzeilen oder markierten Passagen mit "Run" (Strg+Enter))
  #i Skript kann gespeichert und wieder geladen werden  
  #i (Workspace kann auch direkt gespeichert und geladen werden)
  

  # Rechnen mit Vektoren
  #alle Elemente in v um 1 erh�hen
  v = v + 1 
  
  #v und w elementweise addieren
  u = v + w 
  
  v+stadt
  #? Warn- und Fehlermeldungen helfen (meist). Was stimmt nicht?
  #! stadt ist keine Zahl, die man addieren kann.
  
  
  sum(u)   #Summe   aller Elemente
  mean(u)  #Mittel  aller Elemente
  max(u)   #Maximum aller Elemente
  #? Bestimme die Summe aller Elemente von u und v!
  #! sum(u) + sum(v)  



    
### Programmstrukturen
  tier = "Katze"
  
  #Benutze "==", nicht "=" f�r Vergleiche
  if (tier == "Katze")          
  { 
    print("Miau!")
  } else
  {  
    print("[anderes Ger�usch]")
  }
    
  #i {}: Umklammerung von Programmteilen / Codebl�cken
      
  #Schleife mit vorgegebener Anzahl an Iterationen
  for (counter in 1:10)
  {   #i alles innerhalb der geschweiften Klammern geh�rt zum Schleifenzyklus
    print(counter)
  }
  
  #? Z�hle bis 20 und schreibe "Gleich fertig!", wenn Du schon �ber 15 bist! 
  #!  for (counter in 1:20)
  #!  {
  #!    print(counter)
  #!    if (counter > 15 ==0) print("Gleich fertig!")
  #!  }
  
  

#### selbstdefinierte Funktionen - die Helfer im Alltag
 
  #einfache Funktion ohne Argumente und R�ckgabewert
  abwasch = function() #Funktion f�r den gesamten Abwasch definieren
  {
  print("Gl�ser sp�len")
  print("Teller sp�len")
  print("Besteck sp�len")
  } 
  
  abwasch() #Funktion aufrufen, d.h. benutzen
  
  #Funktion mit Argument
  abwasch2 = function(was_noch) #Funktion f�r den gesamten Abwasch definieren
  {
  print("Gl�ser sp�len")
  print("Teller sp�len")
  print("Besteck sp�len")
  print(paste0(was_noch, " sp�len"))
  } 
  
  #? Lass zus�tzlich noch die T�pfe absp�len! 
  #! abwasch2("T�pfe") #Funktion mit Argument benutzen
  
  #Funktion mit Argument und R�ckgabewert
  abwasch3 = function(was_noch) #Funktion f�r den gesamten Abwasch definieren
  {
  print("Gl�ser sp�len")
  print("Teller sp�len")
  print("Besteck sp�len")
  print(paste0(was_noch, " sp�len"))
  sauberkeit = runif(n=1, min = 1, max=10) #eine Zufallszahl zwischen 1 und 10
  return(sauberkeit)
  } 
  
  sauberkeit = abwasch3("T�pfe") #Funktion mit Argument benutzen, R�ckgabewert in Variable speichern
  print(sauberkeit) 
  
  #? Wasche ab, auch die Pfanne. Wenn die Sauberkeit unter 5 ist, gib die Meldung "Abwaschwasser wechseln!" aus,
  #? andernfalls melde "Fertig!"
  sauberkeit = abwasch3("Pfanne")
  #! if (sauberkeit < 5)
  #!{
  #! print("Abwaschwasser wechseln!")
  #!} else
  #!{
  #! print("Fertig!")
  #!} 
  


 
 
  
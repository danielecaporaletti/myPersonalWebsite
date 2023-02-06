# Il Mio Sito Internet
Creazione del mio Sito internet contennete il Portfolio

L’obiettivo del progetto è quello di creare un’istanza su GCP che serva da Virtual Host per la mia Web Page, avvicinandosi il più possibile a una IaaC.

La struttura può essere riassunta con questa immagine

<img src="https://github.com/danielecaporaletti/myPersonalWebsite/blob/master/Spiegazione/Progetto%20senza%20titolo.png" width="900px" height="500px" alt="Immagine esplicativa progetto">


Terraform: Il codice crea una istanza su GCP e esegue uno script di avvio. Esso installa e configura sulla stessa macchina sia Jenkins che Apache. 


Apache: Per configurare un Virtual Host su una macchina Ubuntu tramite Apache è necessario
creare la struttura della directory dove inseriremo la nostra pagina
concedere le autorizzazioni necessarie alla directory
clonare da git il repository per la pagina web
creare il file di configurazione per l’host virtuale 
abilitare il nuovo file dell’host virtuale (tramite a2ensite)
fare un restart del servizio apache2

Jenkins: Per configurare una pipeline Jenkins su una macchina ubuntu è necessario
accedere tramite browser all’istanza tramite la porta 8080
configurare e registrare il primo accesso a jenkins


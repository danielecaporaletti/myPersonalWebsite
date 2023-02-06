# Il Mio Sito Internet
<h3>Creazione del mio Sito internet contennete il Portfolio.</h3>
<h3>L’obiettivo del progetto è quello di creare un’istanza su GCP che serva da Virtual Host per la mia Web Page, avvicinandosi il più possibile a una IaaC.</h3>
<p align="center">
<img src="https://github.com/danielecaporaletti/myPersonalWebsite/blob/master/Spiegazione/Progetto%20senza%20titolo.png" width="800px" height="430px" alt="Immagine esplicativa progetto">
</p>



<h3><strong>Terraform</strong></h3>
Utilizzo del codice Terraform per creare una istanza E2-micro-2 su GCP ed esegue uno script di avvio per configurare Apache e Jenkins

<h3><strong>Bash Script</strong></h3>
<h3><strong>Apache</strong></h3>
Configurazione di un Virtual Host su macchina ubuntu server 20.04
<ol>
  <li>creare la directory dove si inserirà la pagina web
  <li>Concedere le autorizzazioni necessarie alla directory
  <li>Clonare da git il repository
  <li>Creare il file di configurazione per l’host virtuale 
  <li>Abilitare il nuovo file dell’host virtuale (tramite a2ensite)
  <li>Restart del servizio apache2
<ol>

<h3><strong>Jenkins</strong></h3>
Lo script installa il servizio JEnkins sulla macchina.
<ol>
  <li>Accedere tramite browser all’istanza tramite la porta 8080
  <li>configurare e registrare il primo accesso a jenkins


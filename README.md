<h1>Il Mio Sito Internet con portfolio</h1>
<h3>L’obiettivo del progetto è quello di creare un’istanza su GCP che serva da Virtual Host per la mia Web Page, avvicinandosi il più possibile a una IaaC.</h3>
<p align="center">
<img src="" width="666px" alt="Immagine esplicativa progetto">
</p>

<h2>Funzionamento</h2>
<p>
Jenkins rileva ogni cambiamento del codice nel remo master di GitHub e aggiorna la directory di hostring del mio sito web. In questo modo ho sempre un sito aggiornato ad ogni push.
</p>

<h2>Breve spiegazione</h2>
<p>
Utilizzo del codice Terraform per creare una istanza E2-micro-2 su GCP ed esegue uno script di avvio per configurare Apache e Jenkins. In seguito accedendo a Jenkins immetto il jenkinsfile per creare la pipeline.
</p>

<h2>Codice</h2>
<h4>Terraform</h4>
<ul>
  <li><a href="https://raw.githubusercontent.com/danielecaporaletti/myPersonalWebsite/master/IaaC/terraform/provider.tf">provider.tf</a>
  <li><a href="https://raw.githubusercontent.com/danielecaporaletti/myPersonalWebsite/master/IaaC/terraform/instance.tf">instance.tf</a>
</ul>
<h4>Jenkinsfile</h4>
<ul>
  <li><a href="https://raw.githubusercontent.com/danielecaporaletti/myPersonalWebsite/master/IaaC/jenkinsfile">jenkinsfile</a>
</ul>
<h4>Bash script</h4>
<ul>
  <li><a href="https://raw.githubusercontent.com/danielecaporaletti/myPersonalWebsite/master/IaaC/script.sh">script.sh</a>
</ul>

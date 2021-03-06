<h3>Skupina:</h3>
<ul>
<li>Jaroslav Urban</li>
<li>Ilja Larionov</li>
<li>Pavel Rudolf</li>
<li>Petr Svoboda</li>
</ul>

<h3>Postup pro spuštění:</h3>  
<ul>
<li>git clone https://github.com/JaroslavUrbann/OPS_Projekt.git</li>
<li>cd OPS_Projekt</li>
<li>vagrant up</li>
</ul>

<h3>Výsledek:</h3>  
<ul>
<li>Vytvořená databáze</li>
<li>Funkční DNS server</li>
<li>Funkční DHCP server</li>
  <ul>
    <li>Přiřazuje adresy od .20 do .99</li>
    <li>Návod na otestování:</li>
    <ul>
      <li>vagrant ssh client01</li>
      <li>ip addr show</li>
    </ul>
  </ul>
</ul>

<h3>Seznam použitých technologií:</h3>  
<ul>
<li>VirtualBox</li>
<li>Vagrant (pro správu virtuálních strojů a vytvoření virtuální sítě)</li>
<li>Ansible (pro nastavení a konfiguraci úloh pro instalaci)</li>
<li>PowerDNS</li>
<li>Mariadb</li>
</ul>
  
<h3>Adresy serverů:</h3>  
<ul>
<li>Databáze: 192.168.121.2/24</li>
<li>DNS: 192.168.121.3/24</li>
<li>DHCP: 192.168.121.5/24</li>
</ul>

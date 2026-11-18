# Verificació del projecte

Data: 18/11/2026.

## Comprovacions executades

- Cinc pàgines principals i una pàgina addicional de fonts; totes amb `lang="ca"` i un únic `h1`.
- 145 referències locals comprovades, sense fitxers o àncores absents en el moment de la revisió.
- 29 elements `img`, tots amb atribut `alt`.
- Sense atributs `style`, blocs `<style>`, scripts propis, gestors d’esdeveniments JavaScript ni CSS Grid.
- Sis animacions `@keyframes`, `prefers-reduced-motion`, `animation-play-state` i suport progressiu d’animacions de scroll.
- Navegació i disseny revisats al navegador integrat amb amplades de 1440, 390 i 320 píxels. Les cinc pàgines no produeixen desbordament horitzontal a 320 i 390 píxels després dels ajustos.
- Menú mòbil: obre i tanca amb el checkbox.
- Interruptor de pausa: l’animació del Hero passa a `paused`.
- Interruptor de reducció d’efectes: l’efecte de llum passa a opacitat zero i sense animació.
- Música: les pestanyes alternen cinc àlbums i dos senzills.
- Història: el carrusel canvia de diapositiva amb els controls de ràdio.
- Concerts: sis files amb Tots, cinc amb Pròxims i dues amb Esgotats.
- Formulari: nom numèric, telèfon alfabètic i correu incorrecte es detecten com a invàlids; tots els camps passen amb dades de prova vàlides.
- Confirmació del formulari visible amb `:target`, sense dades a la cadena de consulta ni enviament de correu.
- Control amb teclat comprovat: la tecla de cursor canvia la pestanya d’àlbums a senzills.
- Les cinc URL de Proxmox carreguen el títol correcte, la carpeta pública i els CSS. No s’han observat imatges carregades amb error.
- Comprovació addicional de càrrega i disseny de la portada a Google Chrome, a més del navegador integrat.

## Límits i comprovacions pendents

- Edge no estava disponible a l’eina de control. S’ha comprovat també la portada a Chrome natiu. Les proves detallades dels controls s’han fet al navegador integrat; tots dos utilitzen Chromium. És recomanable ampliar la prova a Firefox o Safari per comprovar un motor diferent.
- Les preferències del sistema de reducció de moviment es respecten en el CSS; no s’ha canviat la configuració del sistema per simular-les.
- Els reproductors i el mapa depenen de serveis externs, de la connexió i de les seves polítiques d’accés.
- La creació del repositori i les Issues requereix completar l’inici de sessió de GitHub. La col·laboració de Diego requereix el seu usuari.
- L’entrega a Moodle i les aportacions personals dels dos integrants estan pendents dels alumnes.

## Publicació

Ruta publicada i comprovada: https://ychen.ieti.site/jay-chou/

Es desplega en una subcarpeta pròpia del servidor de Yinhao. El lloc de Strata continua a l’arrel. Qualsevol versió prèvia de la subcarpeta de Jay Chou es conserva a `/home/super/deploy-backups/`.

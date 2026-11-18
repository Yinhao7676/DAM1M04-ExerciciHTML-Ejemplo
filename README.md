# Jay Chou · 周杰倫

Web musical en català creada per al treball d’HTML i CSS de DAM1 M04. Presenta la música, la trajectòria i l’univers visual de Jay Chou amb una identitat fosca, accents vermells i fotografies promocionals.

## Integrants

- Yinhao Chen · GitHub: `Yinhao7676`.
- Diego · pendent de confirmar l’usuari de GitHub i el cognom.

Implementació assistida amb IA. Les aportacions personals dels dos integrants s’han de fer amb els seus propis comptes; no es generen commits en nom del company.

## Publicació

- Proxmox: https://ychen.ieti.site/jay-chou/
- Repositori públic: https://github.com/Yinhao7676/DAM1M04-ExerciciHTML
- L’enunciat utilitza dos noms diferents. S’ha escollit **DAM1M04-ExerciciHTML**, el nom especificat a l’apartat final d’entrega.

## Pàgines

| Fitxer | Contingut |
| --- | --- |
| `index.html` | Hero, àlbum més recent, novetats i controls visuals. |
| `musica.html` | Cinc àlbums, dos senzills, pestanyes i reproductor Spotify. |
| `historia.html` | Biografia, sis fites i carrusel de tres imatges. |
| `concerts.html` | Sis concerts ficticis i filtres de dates i disponibilitat. |
| `contacte.html` | Dades fictícies, mapa i formulari amb validació HTML5. |

## Obrir el projecte

Obre la carpeta amb Visual Studio Code i utilitza Live Server sobre `index.html`. També pots servir la carpeta amb qualsevol servidor HTTP estàtic. No requereix npm, cap compilació ni dependències JavaScript.

## Implementació

- HTML5 semàntic, `lang="ca"`, enllaç per saltar al contingut, etiquetes de formulari i estat actiu de navegació.
- `css/base.css`: identitat visual, components, estructura compartida, animacions i accessibilitat.
- `css/pagines.css`: composicions i controls específics de cada pàgina.
- Flexbox i media queries a 1000 i 700 px; sense CSS Grid.
- Sense atributs `style`, blocs `<style>`, scripts ni gestors d’esdeveniments JavaScript.
- Tipografies de Google Fonts: Barlow Condensed, DM Sans i Noto Serif TC.
- Menú mòbil amb `checkbox` i `:checked`, transició d’obertura i controls accessibles per teclat.
- Pestanyes, carrusel i filtres amb `radio` i `:checked`. Els controls s’utilitzen amb Tab i les tecles de cursor pròpies dels botons de ràdio.
- Dos interruptors visuals: pausa d’animacions amb `animation-play-state` i reducció d’efectes.
- Animacions `@keyframes` per al vinil, la llum, els equalitzadors, l’ona SVG i l’entrada de seccions.
- Animacions vinculades al desplaçament amb `animation-timeline: view()` i `scroll(root)`, sota `@supports`. Als navegadors sense suport, el contingut es mostra sense aquesta animació.
- Preferència `prefers-reduced-motion` respectada.
- El formulari utilitza `required`, `type=email`, `pattern`, límits de longitud, `:valid`, `:invalid` i estats de focus. No té servidor de recepció: els camps no tenen atribut `name`, de manera que no s’envien els valors amb la navegació de demostració. La confirmació es mostra amb `:target`.
- Els reproductors externs de Spotify i Google Maps poden executar scripts dins dels seus propis iframes. La web no utilitza JavaScript propi per a cap interacció.

## Dades reals i contingut de demostració

La biografia, els àlbums i els anys es basen en JVR Music. El disc més recent comprovat el 18/11/2026 és **Children of the Sun (太陽之子)**, publicat digitalment el 25/03/2026.

L’agenda, l’estat de les entrades i el contacte són ficticis i estan identificats com a tals. El telèfon pertany al rang de números de ficció nord-americans `202-555-01xx` i el domini `.example` no és un correu de l’artista. TikTok enllaça una cerca, no un perfil oficial verificat. Vegeu [CREDITS.md](CREDITS.md) i [docs/fonts.html](docs/fonts.html).

## GitHub i treball en equip

L’organització de les quinze tasques és a [docs/TASQUES.md](docs/TASQUES.md). Les quinze Issues són a https://github.com/Yinhao7676/DAM1M04-ExerciciHTML/issues i les tasques tècniques es vinculen a una Pull Request d’integració. Branques:

- `main`: versió integrada.
- `yinhao/web-jay-chou`: implementació de Yinhao.
- `diego/revisio-continguts`: branca on Diego ha de fer les seves aportacions reals.

Cal afegir Diego com a col·laborador quan se’n conegui el nom d’usuari, i confirmar amb el professor que cap altre grup ha escollit Jay Chou. No s’ha enviat res al Moodle ni s’han simulat aportacions del company.

## Desplegar de nou

Des de WSL, dins de la carpeta del projecte:

```bash
bash scripts/publica-proxmox.sh
```

El desplegament utilitza `~/.ssh/id_rsa`, l’usuari d’accés `ychen` i el port SSH 20127. Publica exclusivament a `/home/super/nodejs_server/public/jay-chou`, amb una còpia prèvia si ja existeix. No cal reiniciar l’aplicació Express que serveix la carpeta pública.

## Entrega

Entrega les URL de GitHub i Proxmox al Moodle. Cada integrant ha d’entregar les mateixes dues URL i tenir aportacions pròpies al repositori. Consulta [docs/VERIFICACIO.md](docs/VERIFICACIO.md) per a l’estat real de les comprovacions.

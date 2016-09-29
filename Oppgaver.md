#Oppgaver <img align="right" src="http://www.applitude.no/static/img/banner.svg" height="45"></div>

Du må mest sannsynlig google en del for å løse mange av disse oppgavene. Vi oppfordrer deg faktisk sterkt til å gjøre det! Vi skal gå rundt, vi vil gjerne hjelpe deg med spørsmål som du måtte ha underveis :)

### Oppgave 1a

Endre slik at applikasjonen også laster inn en ny svadasetning når applikasjonen åpnes

Hint for iOS: endre viewDidLoad metoden
Hint for Android: flytt kode inn på ny metode

### Oppgave 1b

Endre tekstfargen og tekststørrelsen på svadageneratoren

Hint for iOS: Se i XCode sin GUI eller se på klassene UIColor og UIFont og egenskapene til en label
Hint for Android: activity_main.xml

### Oppgave 2a

Endre bakgrunnsfargen til applikasjonen

Hint for iOS: Dette kan gjøres grafisk eller i koden
Hint for Android: endre farge til relativelayout eller se i activity_main.xml

### Oppgave 2b

Endre fra oppgave 2a slik at bakgrunnsfargen endres til nye farger etterhvert som brukeren henter nye svadasetninger

Hint for iOS: Se på UIColor klassen og arc4random funksjonen
Hint for Android: import java.util.Random. Color.argb() kan også være nyttig.

### Oppgave 3a

Legg inn et app ikon. Vi har et utvalg av app ikoner i resursmappa vår på github som dere kan velge i fra. Gå i mappa Assets ved Svadageneratorfilene. Om du er nysgjerrig på stegene kan du se fasiten

### Oppgave 3b (vanskelig)

Endre applikasjonen slik at den husker hvilken setning (og evt bakgrunnsfarge) når applikasjonen terminerer
Det vil si at når brukeren åpner applikasjonen ETTER AT DEN ER TERMINERT så vil den ha samme setning og bakrgunnsfarge som da den terminerte

Hint for iOS: Se på klassen NSUserDefaults

### Oppgave 4 (kanskje noe vrien for nybegynnere)

Endre applikasjonen slik at når brukeren går ut og inn av applikasjonen genereres en ny setning

Hint for iOS: Ha en variabel i AppDelegateklassen som refererer til ViewControllerinstansen til det kjørende programmet.

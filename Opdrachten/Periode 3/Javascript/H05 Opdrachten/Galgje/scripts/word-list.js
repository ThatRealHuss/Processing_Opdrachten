const wordList = [
    {
        word: "gitaar",
        hint: "Een muziekinstrument met snaren."
    },
    {
        word: "zuurstof",
        hint: "Een kleurloos, geurloos gas dat essentieel is voor het leven."
    },
    {
        word: "berg",
        hint: "Een grote natuurlijke verhoging van het aardoppervlak."
    },
    {
        word: "schilderij",
        hint: "Een kunstvorm waarbij kleuren op een oppervlak worden gebruikt om afbeeldingen of expressie te creëren."
    },
    {
        word: "astronomie",
        hint: "De wetenschappelijke studie van hemellichamen en verschijnselen."
    },
    {
        word: "voetbal",
        hint: "Een populaire sport gespeeld met een bolvormige bal."
    },
    {
        word: "chocolade",
        hint: "Een zoete lekkernij gemaakt van cacaobonen."
    },
    {
        word: "vlinder",
        hint: "Een insect met kleurrijke vleugels en een slank lichaam."
    },
    {
        word: "geschiedenis",
        hint: "De studie van gebeurtenissen uit het verleden en de menselijke beschaving."
    },
    {
        word: "pizza",
        hint: "Een hartig gerecht bestaande uit een ronde, afgeplatte bodem met toppings."
    },
    {
        word: "jazz",
        hint: "Een muziekgenre dat wordt gekenmerkt door improvisatie en syncopen."
    },
    {
        word: "camera",
        hint: "Een apparaat dat wordt gebruikt om afbeeldingen of video's vast te leggen en op te nemen."
    },
    {
        word: "diamant",
        hint: "Een kostbare edelsteen die bekend staat om zijn schittering en hardheid."
    },
    {
        word: "avontuur",
        hint: "Een spannende of gewaagde ervaring."
    },
    {
        word: "wetenschap",
        hint: "De systematische studie van de structuur en het gedrag van de fysieke en natuurlijke wereld."
    },
    {
        word: "fiets",
        hint: "Een door mensen aangedreven voertuig met twee wielen."
    },
    {
        word: "zonsondergang",
        hint: "De dagelijkse verdwijning van de zon onder de horizon."
    },
    {
        word: "koffie",
        hint: "Een populaire cafeïnehoudende drank gemaakt van gebrande koffiebonen."
    },
    {
        word: "dans",
        hint: "Een ritmische beweging van het lichaam, vaak uitgevoerd op muziek."
    },
    {
        word: "melkweg",
        hint: "Een enorm systeem van sterren, gas en stof, bij elkaar gehouden door de zwaartekracht."
    },
    {
        word: "orkest",
        hint: "Een groot ensemble van muzikanten die verschillende instrumenten bespelen."
    },
    {
        word: "vulkaan",
        hint: "Een berg of heuvel met een ventilatieopening waardoorheen lava, rotsfragmenten, hete damp en gas worden uitgestoten."
    },
    {
        word: "roman",
        hint: "Een lang fictiewerk, meestal met een complexe plot en karakters."
    },
    {
        word: "architectuur",
        hint: "De kunst en wetenschap van het ontwerpen en bouwen van gebouwen."
    },
    {
        word: "ballet",
        hint: "Een klassieke dansvorm gekenmerkt door precieze en sierlijke bewegingen."
    },
    {
        word: "astronaut",
        hint: "Een persoon die is opgeleid om te reizen en in de ruimte te werken."
    },
    {
        word: "waterval",
        hint: "Een waterval van water dat van een hoogte valt."
    },
    {
        word: "technologie",
        hint: "De toepassing van wetenschappelijke kennis voor praktische doeleinden."
    },
    {
        word: "regenboog",
        hint: "Een meteorologisch fenomeen dat wordt veroorzaakt door reflectie, breking en verspreiding van licht."
    },
    {
        word: "universum",
        hint: "Alle bestaande materie, ruimte en tijd als geheel."
    },
    {
        word: "piano",
        hint: "Een muziekinstrument dat wordt bespeeld door het indrukken van toetsen die ervoor zorgen dat hamers op de snaren slaan."
    },
    {
        word: "vakantie",
        hint: "Een periode gewijd aan plezier, rust of ontspanning."
    },
    {
        word: "regenwoud",
        hint: "Een dicht bos dat wordt gekenmerkt door veel regenval en biodiversiteit."
    },
    {
        word: "theater",
        hint: "Een gebouw of buitenruimte waarin toneelstukken, films of andere uitvoeringen worden opgevoerd."
    },
    {
        word: "telefoon",
        hint: "Een apparaat dat wordt gebruikt om geluid over lange afstanden te verzenden."
    },
    {
        word: "taal",
        hint: "Een communicatiesysteem dat bestaat uit woorden, gebaren en syntaxis."
    },
    {
        word: "woestijn",
        hint: "Een dor of dor land met weinig of geen neerslag."
    },
    {
        word: "zonnebloem",
        hint: "Een hoge plant met een groot geel bloemhoofd."
    },
    {
        word: "fantasie",
        hint: "Een genre van fantasierijke fictie met magische en bovennatuurlijke elementen."
    },
    {
        word: "telescoop",
        hint: "Een optisch instrument dat wordt gebruikt om verre objecten in de ruimte te bekijken."
    },
    {
        word: "wind",
        hint: "Een zachte wind."
    },
    {
        word: "oase",
        hint: "Een vruchtbare plek in een woestijn waar water wordt gevonden."
    },
    {
        word: "fotografie",
        hint: "De kunst, het proces of de praktijk van het creëren van beelden door licht of andere elektromagnetische straling op te nemen."
    },
    {
        word: "safari",
        hint: "Een expeditie of reis, meestal om dieren in het wild in hun natuurlijke habitat te observeren."
    },
    {
        word: "planeet",
        hint: "Een hemellichaam dat rond een ster draait en zelf geen licht produceert."
    },
    {
        word: "rivier",
        hint: "Een grote natuurlijke stroom water die in een kanaal naar de zee, een meer of een andere soortgelijke stroom stroomt."
    },
    {
        word: "tropisch",
        hint: "Met betrekking tot of gelegen in het gebied tussen de Kreeftskeerkring en de Steenbokskeerkring."
    },
    {
        word: "mysterieus",
        hint: "Moeilijk of onmogelijk te begrijpen, uit te leggen of te identificeren."
    },
    {
        word: "enigma",
        hint: "Iets dat mysterieus, raadselachtig of moeilijk te begrijpen is."
    },
    {
        word: "paradox",
        hint: "Een verklaring of situatie die zichzelf tegenspreekt of de intuïtie tart."
    },
    {
        word: "puzzel",
        hint: "Een spel, speelgoed of probleem dat is ontworpen om vindingrijkheid of kennis te testen."
    },
    {
        word: "fluisteren",
        hint: "Om heel zacht of rustig te spreken, vaak op een geheimzinnige manier."
    },
    {
        word: "schaduw",
        hint: "Een donker gebied of vorm geproduceerd door een object dat het licht blokkeert."
    },
    {
        word: "geheim",
        hint: "Iets dat verborgen of onbekend blijft voor anderen."
    },
    {
        word: "nieuwsgierigheid",
        hint: "Een sterk verlangen om iets te weten of te leren."
    },
    {
        word: "onvoorspelbaar",
        hint: "Niet vooraf te voorzien of bekend; onzeker."
    },
    {
        word: "verduisteren",
        hint: "Om iemand te verwarren of te verbijsteren; om iets onduidelijk of moeilijk begrijpelijk te maken."
    },
    {
        word: "onthullen",
        hint: "Om iets voorheen geheim of onbekend bekend te maken of te onthullen."
    },
    {
        word: "illusie",
        hint: "Een valse perceptie of overtuiging; een bedrieglijke schijn of indruk."
    },
    {
        word: "maanlicht",
        hint: "Het licht van de maan."
    },
    {
        word: "levendig",
        hint: "Vol energie, helderheid en leven."
    },
    {
        word: "nostalgie",
        hint: "Een sentimenteel verlangen of weemoedige genegenheid voor het verleden."
    },
    {
        word: "briljant",
        hint: "Buitengewoon slim, getalenteerd of indrukwekkend."
    },
];
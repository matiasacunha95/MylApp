import 'package:cloud_firestore/cloud_firestore.dart';

List<Map<String, dynamic>> x = [
  {
    "id": "9224",
    "edid": "237",
    "slug": "cleopatra_vii",
    "name": "cleopatra vll",
    "rarity": "4",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "3",
    "ability":
        "Única. Cuando Cleopatra Vll entra en juego, nombra una raza, los Aliados de esa raza pierden su habilidad mientras Cleopatra Vll esté en juego.",
    "flavour":
        "Su belleza salvó al reino de los invasores, ni César resistió su poder. Sin embargo, Roma es un animal cruel y los fuegos de la historia jamás muestran piedad.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9225",
    "edid": "238",
    "slug": "ptolomeo_ii",
    "name": "ptolomeo ii",
    "rarity": "4",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "Paga 4 Oros para prevenir que una de tus cartas en juego sea afectada por una habilidad oponente.",
    "flavour":
        "Yo tomaré la obra de Alejandro y la llevaré hasta las estrellas. Nadie podrá olvidar esta sagrada tierra, Egipto ha de vivir por siempre.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9226",
    "edid": "239",
    "slug": "cleomenes_de_naukratis",
    "name": "cleomenes de naukratis",
    "rarity": "4",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "6",
    "ability":
        "Puede atacar el turno en que entra en juego. En la Fase Final debes subir Cleomenes de Naukratis a tu Mano.",
    "flavour":
        "Un general Macedonio protegerá el reino, nada de Egipto ha de caeren manos del enemigo. Atrás han quedado las calles de Arenas, ahora su camino será egipcio, en la sangre, en el alma, en el acero.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9227",
    "edid": "240",
    "slug": "marco_antonio",
    "name": "marco antonio",
    "rarity": "4",
    "race": "0",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "3",
    "ability":
        "Única. Tus demás Aliados de raza Héroe ganan 1 a la fuerza. No se pueden jugar Talismanes.",
    "flavour":
        "César Augusto, yo te desafío. No tendré piedad contigo, entraré en Roma, seré emperador, seré el heredero justo de César. Las legiones tan sólo aguardan mi comando.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9228",
    "edid": "241",
    "slug": "alejandro_ii",
    "name": "alejandro ll",
    "rarity": "4",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "3",
    "ability": "Indestructible. No puede ser anulado.",
    "flavour":
        "Soy el vencedor de la guerra más cruda, no una que se batalle con armas y caballeros. Una que se combate en el alma del pueblo; soy un Faraón, un rey y un griego. Pero el Nilo y su gente son mi responsabilidad, aunque sé que ellos han de matarme un día.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9229",
    "edid": "242",
    "slug": "neferite_i",
    "name": "neferite i",
    "rarity": "4",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "Única. En tu Fase de Vigilia, sólo una vez por turno, puedes desterrar tantas cartas de tu Cementerio como coste tenga una carta en juego para desterrarla.",
    "flavour":
        "No quedan muchos para seguir mi camino, pero mi pueblo debe seguir existiendo, viviendo en su propio país. Nunca dejaré a los persas entrar mientras viva.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9230",
    "edid": "243",
    "slug": "dario_el_grande",
    "name": "dario el grande",
    "rarity": "4",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "3",
    "ability":
        "Imbloqueable. Puede atacar el turno que entra en juego. En la Fase Final debes subir Darío el Grande a tu Mano.",
    "flavour":
        "Dario lll, hijo de Persia, enemigo del pueblo, amigo del acero, hermano de los caballos, asesino de griegos y egipcios por igual. Sólo un hombre ha de hacerte frente, el gran Alejandro Magno.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9231",
    "edid": "244",
    "slug": "haquika",
    "name": "haquika",
    "rarity": "4",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "Indestructible. Cuando Haquita entra en juego, puedes elegir un Aliado oponente y ponerlo en tu Línea de Defensa. Si Haquika sale del juego, el Aliado vuelve a la Línea de Defensa oponente.",
    "flavour":
        "Nadie será más bella, más dulce, ni más traicionada... Sí hermana mía, nadie ha de ver el rostro de la hermosa Haquika, no mientras Amón esté en el cielo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9232",
    "edid": "245",
    "slug": "oseye",
    "name": "oseye",
    "rarity": "4",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "3",
    "ability":
        "Oseye no puede ser anulado. Puede atacar el turno que entra en juego. Puedes pagar el coste de Oseye para prevenir que sea destruido o desterrado y subirlo a tu Mano.",
    "flavour":
        "La felicidad de mi pueblo, depende de mí, nadie más sabe donde y como los secretos de Amón y los antepasados de Egipto.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9233",
    "edid": "246",
    "slug": "bengay",
    "name": "bengay",
    "rarity": "4",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "3",
    "ability":
        "Los demás Aliados en juego no pueden ser afectados por Talismanes y no pueden perder sus habilidades.",
    "flavour":
        "¡Te invoco Apophis! ¡Ven a mi! Acaba con el perro invasor, borra al persa, al griego y al sirio.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9234",
    "edid": "247",
    "slug": "demoledor_de_amon",
    "name": "demoledor de amon",
    "rarity": "4",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "5",
    "damage": "5",
    "ability":
        "Talismanes oponentes que afecten a Demoledor de Amon cuestan 2 Oros adicionales. En respuesta a que Demoledor de Amon sea declarado atacante, puedes elegir un Aliado oponente en Línea de Defensa para que bloquee a Demoledor de Amón,hasta la Fase Final ese Aliado pierde su habilidad y pierde 1 a la fuerza.",
    "flavour":
        "¿Qué los Sacerdotes no saben defenderse? Mira lo que las antiguas artes me han entregado, soy el guerrero Amón. Es un placer el conocerte, ahora, prepárate para morir.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9235",
    "edid": "248",
    "slug": "iuwlot",
    "name": "iuwlot",
    "rarity": "4",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability":
        "Los Tótem no pueden ser afectados por habilidades de cartas oponentes.",
    "flavour":
        "No soy un Sacerdote, no te confundas, yo pretendo traerte algo más oscuro. Ven príncipe persa, entra en mi humilde morada y te mostraré porqué llaman a ésta la tierra eterna.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9236",
    "edid": "249",
    "slug": "nuh",
    "name": "nuh",
    "rarity": "4",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "En tu Fase de Vigilia, sólo una vez por turno, puedes buscar un Arma en tu Mazo Castillo o Cementerio y ponerla en un Aliado que esté en tu Línea de Defensa sin pagar su coste.",
    "flavour":
        "Tebas tenía su ritmo, su razón de ser, pero Alejandría es el hogar de quienes queremos aprender, no seré un simple Sacerdote, algún día me llamarán sabio.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9237",
    "edid": "250",
    "slug": "zazamoukh",
    "name": "zazamoukh",
    "rarity": "4",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "En respuesta a que tu oponente juegue una habilidad que afecte a uno de tus Aliados, puedes dirigir esa habilidad a Zazamoukh. En tu Fase de Vigilia, si Zazamoukh está en tu Cementerio, puedes pagar 3 Oros para ponerlo en juego sin pagar su coste.",
    "flavour":
        "Si los dioses pisarán la tierra, no tendríamos que luchar. Pero ellos están lejos, Osiris me perdone, pero sólo los hombres ayudamos a los hombres. La piedad es algo del día a día.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9238",
    "edid": "251",
    "slug": "aker",
    "name": "aker",
    "rarity": "4",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "5",
    "damage": "2",
    "ability":
        "Única. En tu Fase de Vigilia, sólo una vez por turno, puedes pagar 3 Oros para copiar la habilidad de un Aliado en juego hasta la Fase Final.",
    "flavour":
        "El dios del más allá tiene un secreto, sólo los seres infernales verán su rostro. El mismo Anubis tendrá miedo de preguntarlo, pero la verdad es que el punto más oscuro del averno sigue siendo el amor.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9239",
    "edid": "252",
    "slug": "ament",
    "name": "ament",
    "rarity": "4",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "No se pueden barajar cartas del Cementerio en el Mazo Castillo.",
    "flavour":
        "Mi misión es seguir a Aker, limpiaré las lágrimas de aquel que ha caido, incluso los muertos necesitan consuelo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9240",
    "edid": "253",
    "slug": "oraculo_de_botu",
    "name": "oraculo de botu",
    "rarity": "4",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "2",
    "ability":
        "Sólo una vez por turno, puedes pagar 1 Oro para agrupar uno de tus Oros.",
    "flavour":
        "Soy la protectora de la familia real, nadie negará el poder del Faraón mientras el poder de la vida corra por mis venas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9241",
    "edid": "254",
    "slug": "baal_-_zaphon",
    "name": "baal-zaphon",
    "rarity": "4",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "1",
    "damage": "1",
    "ability":
        "Indestructible. Indesterrable. Sólo puedes tener un Baal-zaphon en juego. En su Fase de Vigilia, sólo una vez por turno, cada jugador puede barajar 3 cartas de su Cementerio en su Mazo Castillo.",
    "flavour":
        "El rugido de Siria se escuchó en los cielos, su gente trajo a Baal, el dios del trueno y la destrucción. Sus templos están por todo Canaan.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9242",
    "edid": "255",
    "slug": "mafedet",
    "name": "mafedet",
    "rarity": "4",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability": "Los Aliados en la Línea de Defensa son Indestructibles.",
    "flavour":
        "Soy la reina del veneno y del dolor. A cambio de tu amor, de tu devoción, he de entregarte protección y sanación.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9243",
    "edid": "256",
    "slug": "reshep",
    "name": "reshep",
    "rarity": "4",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "4",
    "ability":
        "Reshep puede atacar cuando entra en juego. Mientras Reshep esté en juego, todos los Aliados que puedan atacar deben hacerlo.",
    "flavour":
        "Soy el caos y la violencia, el destructor de miles, amo de Siria y Nubia. Dueño de tus caminos, de tus sueños, de tu esperanzas y el consumidor de tu sangre.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9244",
    "edid": "257",
    "slug": "shay",
    "name": "shay",
    "rarity": "4",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability":
        "En tu Fase de Vigilia, sólo una vez por turno, puedes mirar las 3 cartas inferiores de tu Mazo Castillo y devolverlas en el orden que quieras. Sólo puedes robar de la parte inferior de tu Mazo Castillo.",
    "flavour":
        "Todo lo conozco, no es fácil hermano, no es algo simple ser el dador de destinos; si llego a pestañar, miles morirán. ¿Quieres ese peso en tu vida? ¿Quieres ser el brazo protector de los dioses?.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9245",
    "edid": "258",
    "slug": "cadena_espiritual",
    "name": "cadena espiritual",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Envía todas las cartas desde tu Zona de Destierro hacia tu Cementerio.",
    "flavour":
        "Ahora estamos unidos Faraón, no lo olvides, aunque Egipto se venga abajo, tú serás mi hermano, mis ojos en la tierra y el lider de mis legiones.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9246",
    "edid": "259",
    "slug": "festin_impio",
    "name": "festin impio",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability":
        "Tu oponente destierra las tres cartas superiores de su mazo Castillo. Luego, destierra Festín Impío.",
    "flavour":
        "Los oscuros Sacerdotes persas celebran en nuestras fechas más sagradas, comiendo animales prohibidos,engordando en la época de mostrar piedad. Sé que el destino les mostrará lo alto de su pecado.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9247",
    "edid": "260",
    "slug": "aullido_de_furia",
    "name": "aullido de furia",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "6",
    "damage": "0",
    "ability":
        "Única. Aullido de Furia no puede ser anulado. Tus Aliados pierden su raza, su habilidad y ganan 3 a la fuerza hasta la Fase Final.",
    "flavour":
        "¿Escuchaste eso, dulce Ptolomeo? Este país tiene muchos secretos, y no todos son lo suficientemente fuertes como para resistir el llamado de la furia infernal.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9248",
    "edid": "261",
    "slug": "invocar_chacales",
    "name": "invocar chacales",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "0",
    "damage": "0",
    "ability": "Única. Anula una carta que anule una de tus cartas.",
    "flavour":
        "Los chacales del desierto obedecen mi llamado, no lo olvides. Recuerda que puedo hacer un glorioso festín con tu carne.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9249",
    "edid": "262",
    "slug": "vuelta_a_lo_primordial",
    "name": "vuelta a lo primordial",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "5",
    "damage": "0",
    "ability":
        "Única. Todos los jugadores eligen una carta de cada tipo que tengan en juego, todas las demás cartas pierden su habilidad y son barajadas. Cada jugador roba o descarta cartas de su Mano hasta tener 8 cartas.",
    "flavour":
        "¿No era eso lo que buscabas? ¿Descubrir el origen, el principio de todo? Pues bien, ahí está. Eres parte del barro prímigenio de la vida.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9250",
    "edid": "263",
    "slug": "jugar_con_las_llamas",
    "name": "jugar con las llamas",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "No se puede buscar cartas en cualquier Mazo Castillo por el resto del juego.",
    "flavour":
        "El fuego no me quema, ni me daña,soy el h¡jo de la luna y la niebla. Hermano del Nilo y el Tigris, amo de los elementos.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9251",
    "edid": "264",
    "slug": "cobra_de_cripta",
    "name": "cobra de cripta",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability": "Prevén que una de tus cartas salga del juego.",
    "flavour":
        "Ella guarda el recuerdo de nuestros ancestros: Persa, Griegos y Romanos querrán lo que fue de los hijos del Ken.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9252",
    "edid": "265",
    "slug": "adios_belleza",
    "name": "adios belleza",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "1",
    "damage": "0",
    "ability":
        "Una carta en juego y todas sus copias pierden su habilidad hasta la fase final",
    "flavour":
        "Cleopatra ha dejado este mundo, su belleza eterna será el recuerdo mas preciado del mundo antiguo. Que sus negros ojos sean nuestra guía para un dulce mañana.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9253",
    "edid": "266",
    "slug": "hienas_asesinas",
    "name": "hienas asesinas",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "0",
    "damage": "0",
    "ability": "Cancela todos los efectos permanentes hasta la Fase Final.",
    "flavour":
        "Sus risas te llaman al abismo, son las grandes predadoras de esta llanura. Ni siquiera los grandes ejércitos se salvan de su ataque, por las noches son peores que el acero.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9254",
    "edid": "267",
    "slug": "destrozar_la_mente",
    "name": "destrozar la mente",
    "rarity": "4",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "1",
    "damage": "0",
    "ability":
        "Mira la mano de tu oponente para elegir una carta que no sea Oro, ésta y todas sus copias no pueden ser jugadas en el próximo turno.",
    "flavour":
        "El monje Ishatita abrió el cofre, se le dijo que Bastet no admitía intrusos, pero nadie escucha las viejas historias. Su mente es ahora parte del pantano más oscuro.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9255",
    "edid": "268",
    "slug": "islas_filas",
    "name": "islas filas",
    "rarity": "4",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability": "Única. Sólo se puede robar en la Fase Final.",
    "flavour":
        "Construido en los últimos días de la dinastía Prolemaica, representa a la vieja división entre Nubia y el alto Egipto.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9256",
    "edid": "269",
    "slug": "kabasha",
    "name": "kabasha",
    "rarity": "4",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Única. En su Fase de Vigilia, sólo una vez por turno, cada jugador puede desterrar uno de sus Aliados en juego para robar tantas cartas como fuerza tenga ese Aliado.",
    "flavour":
        "Los romanos levantaron este hermoso templo, ¿crees que es muy complicado mantener al pueblo contento? Pues no, Adriano sabe como hacer las cosas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9257",
    "edid": "270",
    "slug": "dakka",
    "name": "dakka",
    "rarity": "4",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability":
        "Las Armas no pueden ser anuladas ni afectadas por habilidades oponentes.",
    "flavour":
        "Prolomeo ll construyó este templo para honrar al gran rey Etiope Arkamani. Finalmente Augusto lo terminaría y le daría su gloria eterna.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9258",
    "edid": "271",
    "slug": "wadi_-_el_sabua",
    "name": "wadi-el sabua",
    "rarity": "4",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability": "Única. El Daño Directo se reduce en 2.",
    "flavour":
        "\"El valle de los Leones\", construido por el gran Amenofis III, es una de las construcciones más poderosas del Egipto antiguo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9259",
    "edid": "272",
    "slug": "kom_ombo",
    "name": "kom ombo",
    "rarity": "4",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability": "Única. El Daño Directo aumenta en 1.",
    "flavour":
        "Grecia tocó a Egipto con la sutileza de un beso, mientras que Egipto tocó a Grecia como un huracán.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9260",
    "edid": "273",
    "slug": "mandoble_de_horus",
    "name": "mandoble de horus",
    "rarity": "4",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "1",
    "damage": "0",
    "ability":
        "El portador de Mandoble de Horus no puede recibir modificadores de fuerza. El daño de combate hecho por el portador de Mandoble de Horus al Mazo Castillo oponente debe ser desterrado.",
    "flavour":
        "Te he dado esta arma para cegar al mal, debes estar seguro de que jamás la levantarás contra el pueblo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9261",
    "edid": "274",
    "slug": "sedienta",
    "name": "sedienta",
    "rarity": "4",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability":
        "El portador de Sedienta pierde su habilidad y no puede recibir modificadores de fuerza.",
    "flavour":
        "Mi arma esta hecha de los huesos de un antiguo dios Etiope, la robé y ahora obedece mi comando. No olvides mi nombre: Dario, el conquistador.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9262",
    "edid": "275",
    "slug": "yelmo_alejandrino",
    "name": "yelmo alejandrino",
    "rarity": "4",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "El portador de Yelmo Alejandrino no puede ser afectado por habilidades oponentes.",
    "flavour":
        "Similar al casco griego, este feroz yelmo busca rescatar la vieja fuerza de Aquiles, el poderoso héroe Griego.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9263",
    "edid": "276",
    "slug": "hacha_guardiana",
    "name": "hacha guardiana",
    "rarity": "4",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "En respuesta a que el portador de Hacha Guardiana sea bloqueado, puedes elegir que haga daño al Mazo Castillo oponente como si no hubiera sido bloqueado.",
    "flavour":
        "Te protegeré padre Faraón, madre Isis, los templos están seguros mientras yo esté aquí.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9264",
    "edid": "277",
    "slug": "escudo_de_la_tormenta",
    "name": "escudo de la tormenta",
    "rarity": "4",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "El portador de Escudo de Tormenta gana 2 a la fuerza. En respuesta a que el portador salga del juego, barájalo en tu Mazo Castillo.",
    "flavour":
        "Confeccionado a partir de una lágrima de Ra, barrerá con la escoria invasora y protegerá a los hijos del Ken, como lo hubiese hecho el mismo Ra.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9265",
    "edid": "278",
    "slug": "ojo_udyat",
    "name": "ojo udyat",
    "rarity": "4",
    "race": "0",
    "type": "5",
    "keywords": "None",
    "cost": "0",
    "damage": "0",
    "ability":
        "En respuesta a que tu oponente juegue una carta, si Ojo Udyat está en tu Reserva de Oro, puedes desterrarlo para buscar una carta de Tótem o de Orbe en tu Mazo Castillo y ponerlo en juego sin pagar su coste.",
    "flavour":
        "El ojo que lo ve todo, atribuido a Ra y a Horus. Es el poder que brilla en todas las cosas y controla la vida, tanto su comienzo como su fin, nada escapa a su mirar.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9266",
    "edid": "279",
    "slug": "biblioteca_eterna",
    "name": "biblioteca eterna",
    "rarity": "4",
    "race": "0",
    "type": "5",
    "keywords": "None",
    "cost": "0",
    "damage": "0",
    "ability":
        "En tu Fase de Vigilia, si Biblioteca Eterna está en tu Reserva de Oro, puedes desterrarla para robar 2 cartas.",
    "flavour":
        "El conocimiento del mundo en un solo lugar, los sabios vienen de todas partes a aprender. La enseñanza es dejada a los dioses que gobiernan a las letras.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9267",
    "edid": "280",
    "slug": "tocador",
    "name": "tocador",
    "rarity": "4",
    "race": "0",
    "type": "5",
    "keywords": "None",
    "cost": "0",
    "damage": "0",
    "ability":
        "En respuesta a botar cartas de tu Mazo Castillo por una habilidad oponente, puedes destruir a Tocador para que tu oponente bote el mismo número de cartas.",
    "flavour":
        "La vanidad era dueña de la nobleza, no solamente de la egipcia, los griegos y romanos cayeron ante las caricias del nilo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9268",
    "edid": "281",
    "slug": "amyrteos",
    "name": "amyrteos",
    "rarity": "5",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "1",
    "ability":
        "Si Amyrteos sale del juego, puedes buscar un Oro en tu Mazo Castillo y ponerlo en juego.",
    "flavour":
        "Salvador de Egipto, nunca mires el futuro, sólo hoy es importante: salva al pueblo, mañana otros tendrán que tomar tu camino.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9269",
    "edid": "282",
    "slug": "guerrero_etiope",
    "name": "guerrero etiope",
    "rarity": "5",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "2",
    "ability":
        "Guerrero Etiope puede atacar el turno que entra en juego, si lo hace gana 2 a la fuerza y debe ser destruido en la Fase Final.",
    "flavour":
        "Del centro de la madre Africa han llegado, son imparables, indestructibles y fieles a su lider, como leones han de combatir al persa enemigo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9270",
    "edid": "283",
    "slug": "capitan_de_guardia",
    "name": "capitan de guardia",
    "rarity": "5",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "2",
    "ability":
        "Cuando Capitán de Guardia entra en juego, puedes elegir un Aliado para que pierda su habilidad hasta la Fase Final.",
    "flavour":
        "Los hombres de Prolomeo respetaban a todos los habitantes de Alejandría, nadie olvidará jamás que hay una ley sobre los hombres.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9271",
    "edid": "284",
    "slug": "hijo_de_amon",
    "name": "hijo de amon",
    "rarity": "5",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability": "Cuando entra en juego, puedes botar 2 cartas para barajar 3.",
    "flavour":
        "Es importante que el hijo de Amón no sea atrapado por los tiranos. Ellos acabarían con la única esperanza del pueblo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9272",
    "edid": "285",
    "slug": "cambyses",
    "name": "cambyses",
    "rarity": "5",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability": "Cambyses gana 2 a la fuerza por cada Arma en juego.",
    "flavour":
        "El cruel persa dominó con garra de acero, pero la locura consumió su mente. Nadie puede imponerse en Egipto sin ser devorado por sus espectros.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9273",
    "edid": "286",
    "slug": "euergeter_l",
    "name": "euergeter l",
    "rarity": "5",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "3",
    "ability":
        "En tu Fase de Vigilia, puedes pagar 1 Oro para que Euergeter 1 sea Imbloqueable hasta la Fase Final.",
    "flavour":
        "El campeón de Egipto, tomaría el puerto más importante de Siria. Nadie dudaría de la grandeza de su estirpe.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9274",
    "edid": "287",
    "slug": "philometor",
    "name": "philometor",
    "rarity": "5",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "Puedes destruir a Philometor para subir a la Mano uno de tus Aliados.",
    "flavour":
        "Ptolomeo VI dejó Egipto disfrazado de mendigo, vivió como un trabajador en Roma hasta que su pueblo le rogó que retomara el poder.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9275",
    "edid": "288",
    "slug": "airlea",
    "name": "airlea",
    "rarity": "5",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "Cuando Airlea entra en juego, puedes barajar hasta 4 cartas de Tótem de tu Cementerio en tu Mazo Castillo.",
    "flavour":
        "Estás muy lejos de Macedonia dulce princesa, sé que amas a tu diosas, ¿pero no sabes que peregrinar sola es peligroso?.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9276",
    "edid": "289",
    "slug": "aldara",
    "name": "aldara",
    "rarity": "5",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "En tu Fase de Vigilia, puedes desterrar a Aldara para buscar 2 Talismanes en el Mazo Castillo oponente y desterrarlos.",
    "flavour":
        "He consumido los poderes de muchos libros sagrados, desde Esparta hasta Chipre, desde el cruel mundo de Nubia, hasta la gentil Alejandría. No habrá quién se compare a mi poder: soy la descendiente del viejo oráculo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9277",
    "edid": "290",
    "slug": "absalon",
    "name": "absalon",
    "rarity": "5",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "5",
    "damage": "2",
    "ability":
        "Mientras Absalon esté en tu Línea de Defensa, en respuesta a que juegues un Talismán que no sea de anulación o en respuesta, barájalo en tu Mazo Castillo.",
    "flavour":
        "El sabio cabalista guarda sus secretos en la gran biblioteca. Sólo sus aprendices saben leer sus misteriosos escritos.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9278",
    "edid": "291",
    "slug": "chanoch",
    "name": "chanoch",
    "rarity": "5",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "2",
    "ability": "Cuando Chanoch entra en juego, destruye un Arma oponente.",
    "flavour":
        "Muchos fuimos los traductores, ahora el conocimiento del mundo conocido está en un solo lugar. Esta es la obra de dios, no de un hombre.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9279",
    "edid": "292",
    "slug": "ayu",
    "name": "ayu",
    "rarity": "5",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability":
        "En respuesta a que Ayu sea declarado atacante, tu oponente debe botar 1 carta de su Mazo Castillo por cada Tótem que tengas en juego.",
    "flavour":
        "Del sudán ha llegado uno de los más extraños Sacerdotes, ha jurado lealtad a Amón, pero sus palabras son tan oscuras como lo es su piel. Aún así es un embajador de respeto. Alejandría no ha de cerrarse para nadie.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9280",
    "edid": "293",
    "slug": "ksathra",
    "name": "ksathra",
    "rarity": "5",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "5",
    "damage": "2",
    "ability":
        "En tu Fase de Vigilia, sólo una vez por turno, puedes nombrar una carta oponente en juego y pagar 3 Oros para que tu oponente bote tantas cartas como coste tenga la carta nombrada.",
    "flavour":
        "El látigo de este hijo de Persia era fuerte y sus palabras eran de fuego: el mismo Seth se hubiese intimidado de su poder.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9281",
    "edid": "294",
    "slug": "adolfo",
    "name": "adolfo",
    "rarity": "5",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability":
        "En respuesta a que Adolfo sea bloqueado, gana 2 a la fuerza y no puede ser afectado por Talismanes hasta la Fase Final.",
    "flavour":
        "Mi nombre significa peleador, mientras yo siga vivo, apoyaré a mi pueblo. Nadie pisará las esperanzas de los inocentes. Lo juro por Horus, que está en el infinito.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9282",
    "edid": "295",
    "slug": "qetesh",
    "name": "qetesh",
    "rarity": "5",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "5",
    "damage": "2",
    "ability":
        "El turno en que Qetesh entra en juego, los Aliados en juego no pueden ser afectados por habilidades de cartas oponentes.",
    "flavour":
        "La hermosa diosa de la belleza esconde su sonrisa de quien no la merece, muchos han cruzado desiertos para contemplar el rostro de la perfección.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9283",
    "edid": "296",
    "slug": "min",
    "name": "min",
    "rarity": "5",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "5",
    "damage": "3",
    "ability":
        "En tu Fase de Vigilia, sólo una vez por turno, puedes pagar 3 Oros y descartar una carta al azar de tu Mano para que barajes tantas cartas como coste tenga esa carta.",
    "flavour":
        "El poderoso dios de la virilidad acompaña a los hombres desde su nacimiento hasta su final. En Egipto la belleza masculina es tan importante como la femenina.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9284",
    "edid": "297",
    "slug": "nefertum",
    "name": "nefertum",
    "rarity": "5",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability":
        "Cuando Nefertum salga del juego, cancela una habilidad que afecte a una de tus cartas en juego, por el resto del juego.",
    "flavour":
        "Desprecio la Corona de dios, prefiero a la flor de loto. La poesía del mundo ha atrapado al jovial hijo del universo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9285",
    "edid": "298",
    "slug": "serapis",
    "name": "serapis",
    "rarity": "5",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "1",
    "ability":
        "Cuando Serapis entra en juego, mira la Mano de tu oponente y elige una carta para que deba ponerla en la parte superior de su Mazo Castillo.",
    "flavour":
        "Los Ptolemaicos han creado a su propio dios, como consorte de Isis y protector de la siguiente vida.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9286",
    "edid": "299",
    "slug": "aesma_daeva",
    "name": "aesma daeva",
    "rarity": "5",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability":
        "Cuando Aesma Daeva entra en juego, elige un Oro en juego para que éste pierda su habilidad mientras Aesma Daeva esté en juego.",
    "flavour":
        "El demonio del conflicto y el dolor, amo de la destrucción. Acompañó a los grandes generales persas en sus conquistas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9287",
    "edid": "300",
    "slug": "asto_vidatu",
    "name": "asto vidatu",
    "rarity": "5",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "5",
    "damage": "2",
    "ability":
        "En respuesta a un ataque oponente, puedes barajar a Asto Vidatu para cancelarlo, tu oponente destruye uno de sus Aliados que haya atacado.",
    "flavour":
        "Soy la muerte final hermano mío, nadie escapa. He viajado desde la hermosa Persia con un solo objetivo, barrer con la sombra de los mediocres.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9288",
    "edid": "301",
    "slug": "rashnu",
    "name": "rashnu",
    "rarity": "5",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability": "Cuando Rashnu salga del juego, destruye un Arma o Tótem.",
    "flavour":
        "Soy el defensor de la justicia, el ángel que cuidará a la dinastía de los Darios. Ningún extranjero se salvará de los poderes de su espada.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9289",
    "edid": "302",
    "slug": "anillo_de_rashnu",
    "name": "anillo de rashnu",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Sólo puedes jugar Anillo de Rashnu en la Fase de Asignación de Daño. Un Aliado en juego no puede ser agrupado por el resto del juego.",
    "flavour":
        "Los Darios portan este anillo, es la única manera de asegurar el control sobre el mundo conocido. Los malditos griegos jamás deben saber su secreto.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9290",
    "edid": "303",
    "slug": "usar_el_viento_este",
    "name": "usar el viento este",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability": "Un Aliado duplica su fuerza hasta la Fase Final.",
    "flavour":
        "¡Shu amo de los vientos! ¡Eolo amo de los vientos! Escuchen mi llamado, soplen a mi favor, eliminen a la escoria que amenaza Egipto.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9291",
    "edid": "304",
    "slug": "muerte_roja",
    "name": "muerte roja",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Todos los Aliados declarados atacantes pierden su habilidad hasta la Fase Final.",
    "flavour":
        "Levántate y obedece dama de la muerte, destruye a mis enemigos, protege a mi Faraón.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9292",
    "edid": "305",
    "slug": "usar_la_vision",
    "name": "usar la vision",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Mira las 5 primeras cartas del Mazo Castillo, oponente y devuélvelas en el orden que quieras.",
    "flavour":
        "Veo un ejército de mil hombres, hijos de hierro, uno de ellos usan la armadura de Aquiles y responde al nombre de Alejandro. Ellos pondrán fin a la era de los Dorios y sus crueles lacayos.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9293",
    "edid": "306",
    "slug": "levantar_las_aguas",
    "name": "levantar las aguas",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "Elige un Oro en juego, éste y todas sus copias pierden su habilidad por el resto del juego.",
    "flavour":
        "Mi Ka revienta con fuerza cuando ve a mi pueblo morir de hambre y a los invasores creerse amos de la tierra.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9294",
    "edid": "307",
    "slug": "muro_de_espinas",
    "name": "muro de espinas",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability":
        "En respuesta a que un Aliado entre en juego, su propietario debe pagar 2 Oros, si no lo hace debe devolver ese Aliado a su Mano.",
    "flavour":
        "Los espinos del desierto escuchan mi llamado, no dejarán que escapes, maldito persa. Ahora conocerás el poder de un verdadero mago.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9295",
    "edid": "308",
    "slug": "limpiar_conjuro",
    "name": "limpiar conjuro",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Cancela la habilidad de un Tótem o Arma que esté afectando a una de tus cartas en juego, por el resto del juego.",
    "flavour":
        "Fuera maleficios, maldiciones y dolores. Adiós a la enfermedad y la peste ¡Que los demonios vuelen lejos de mí!.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9296",
    "edid": "309",
    "slug": "langostas",
    "name": "langostas",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability":
        "Sólo se puede jugar en la Declaración de Bloqueo. Puedes tomar un Arma en juego y considerarla un Aliado bloqueador de fuerza igual a su coste, es Indestructible y en la Fase Final vuelve a su portador.",
    "flavour":
        "La plaga destroza la esperanza del campesino y arruina la riqueza de los países. El Nilo es testigo de las peores plagas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9297",
    "edid": "310",
    "slug": "furia_irracional",
    "name": "furia irracional",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "5",
    "damage": "0",
    "ability":
        "Uno de tus Aliados gana 3 a la fuerza y es Indestructible por el resto del juego.",
    "flavour":
        "El Faraón estalló en ira, nadie podría escapar de su hoja, ni de su fuerza. Un hombre puede ser la peor máquina de guerra que la Tierra haya contemplado.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9298",
    "edid": "311",
    "slug": "arrancar_el_alma",
    "name": "arrancar el alma",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability":
        "Cancela la habilidad de una carta en juego que no sea Oro hasta la Fase Final a menos que tu oponente bote 3 cartas.",
    "flavour":
        "Puedo hacer con tu alma lo que yo quiera. Separarla de tu miserable cuerpo es lo primero, pero has de temblar cuando pienses qué le pasará en mi reino. Cuando sea acariciada por los demonios del inframundo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9299",
    "edid": "312",
    "slug": "corromper_campeon",
    "name": "corromper campeon",
    "rarity": "5",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "En respuesta a la declaración de ataque oponente, puedes tomar el Aliado de mayor fuerza oponente y barajarlo en el Mazo Castillo oponente.",
    "flavour":
        "Tu alma me pertenece campeón, ahora trabaja para mí. Soy el dios de la decepción, has llegado por tu propia voluntad a mi reino, nadie te ha obligado a rendirte.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9300",
    "edid": "313",
    "slug": "templo_de_amon",
    "name": "templo de amon",
    "rarity": "5",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "Puedes destruir Templo de Amón para buscar una carta en tu Mazo Castillo y ponerla en tu Mano.",
    "flavour":
        "Muchos templos se levantaron en Alejandría, una maniobra interesante si se quiere ganar el pueblo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9301",
    "edid": "314",
    "slug": "totem_del_sudan",
    "name": "totem del sudan",
    "rarity": "5",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "En tu Fase Final, si no declaraste ataque, destruye uno de tus Aliados de mayor fuerza. En tu Fase de Vigilia, puedes pagar 2 Oros para que un Aliado oponente deba ser declarado bloqueador este turno.",
    "flavour":
        "Los feroces guerreros queman incienso a su poderoso dios, nadie les asegura un descanso eterno. La virtud de la guerra y la virtud de la paz son la misma, si eres puro de alma conocerás el rostro de Dios.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9302",
    "edid": "315",
    "slug": "santuario_de_hapi",
    "name": "santuario de hapi",
    "rarity": "5",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability":
        "Sólo puedes tener un Santuario de Hapi en juego. El coste de las Armas se reduce en 1.",
    "flavour":
        "Las ofrendas eran traidas de todo Egipto, sólo los egoístas y tacaños de espíritu hubiesen dejado de hacer su donación.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9303",
    "edid": "316",
    "slug": "piramide_curvada",
    "name": "piramide curvada",
    "rarity": "5",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "Sólo puedes tener una Pirámide Curvada en juego. En tu Fase de Vigilia, sólo una vez por turno, puedes mostrar una carta de tu Cementerio a tu oponente para ponerla en la parte inferior de tu Mazo Castillo.",
    "flavour":
        "Es una de las rarezas más grandes de Egipto, pero el misterio es quienes yacen en esas grandes tumbas, cómo era su vida, su muerte y cuáles eran sus esperanzas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9304",
    "edid": "317",
    "slug": "jardin_sagrado",
    "name": "jardin sagrado",
    "rarity": "5",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "En vez de robar una carta, puedes desterrar 4 cartas de tu Cementerio para tomar una carta de tu Cementerio y ponerla en tu Mano.",
    "flavour":
        "Los templos del antiguo Egipto tenían hermosos jardínes, donde podías encontrar las más hermosas especies botánicas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9305",
    "edid": "318",
    "slug": "lanza_del_caos",
    "name": "lanza del caos",
    "rarity": "5",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "El portador es Imbloqueable. Cuando Lanza del Caos entra en juego, tu oponente debe botar 1 carta.",
    "flavour":
        "Todo caerá víctima de mi lanza, soy el hijo de Seth, el llamado a aniquilar a los enemigos de esta sagrada tierra.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9306",
    "edid": "319",
    "slug": "daga_de_bote",
    "name": "daga de bote",
    "rarity": "5",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "1",
    "damage": "0",
    "ability":
        "Puedes subir Daga de Bote a tu Mano para prevenir que el portador sea destruido o desterrado.",
    "flavour":
        "Solamente aquellos que conocen las enseñanzas de Ra podrán utilizar esta hermosa daga, recuerda que debe ser usada para hacer la voluntad de los dioses y no la tuya.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9307",
    "edid": "320",
    "slug": "arco_persa",
    "name": "arco persa",
    "rarity": "5",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Cuando Arco Persa entra en juego, puedes robar una carta. En respuesta a que el portador haga daño al Mazo Castillo, sube a la Mano oponente uno de sus Aliados.",
    "flavour":
        "La caballería Persa arrasó nuestras defensas, sus flechas destrozaban a nuestras fuerzas, su ocupación no tuvo nada de honorable, y sí mucho de cruel.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9308",
    "edid": "321",
    "slug": "espada_colosal",
    "name": "espada colosal",
    "rarity": "5",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "El portador no puede ser agrupado a menos que tenga fuerza superior a 5. El Aliado que bloquee al portador tiene fuerza 1.",
    "flavour":
        "Es una hoja doble, hecha para cortar a jinete y montura, pocos fueron sus usuarias, aun menos quienes se salvaron de su filo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9309",
    "edid": "322",
    "slug": "corcel_egipcio",
    "name": "corcel egipcio",
    "rarity": "5",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "En tu Fase de Vigilia, puedes pagar 2 Oros para que el portador tenga la habilidad de una carta en juego que no sea Oro hasta la Fase Final.",
    "flavour":
        "De todas partes pedían estos magníficos ejemplares. Más que un animal, eran hijos del viento encarnados en la mejor criatura del mediterráneo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9310",
    "edid": "323",
    "slug": "taharqa",
    "name": "taharqa",
    "rarity": "6",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "1",
    "ability":
        "Puedes pagar 1 Oro para cambiar la fuerza de Tahara por su coste hasta la Fase Final.",
    "flavour":
        "El Faraón fue herido por los asirios, que se robaron a su familia y esposa. Pero sobrevivir no es imposible cuando los dioses están de tu lado, la venganza es un placer exclusivo de reyes y emperadores.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9311",
    "edid": "324",
    "slug": "kush",
    "name": "kush",
    "rarity": "6",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability": "Tus Armas son Indestructibles e Indesterrables.",
    "flavour":
        "El rey de Etiopía soportó el ataque Asirio y decidió destrozar a sus antiguos tiranos. Es hora que tiemblen los poderosos.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9312",
    "edid": "325",
    "slug": "teo",
    "name": "teo",
    "rarity": "6",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "En tu Fase de Vigilia, sólo una vez por turno, puedes destruir uno de tus Aliados para que uno de tus Aliados sea Imbloqueable hasta la Fase Final.",
    "flavour":
        "Quizás el enemigo más poderoso no sea el que viene del oriente, quizás seamos nosotros nuestras propias Némesis.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9313",
    "edid": "326",
    "slug": "pedubaste_i",
    "name": "pedubaste i",
    "rarity": "6",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability":
        "Cuando entra en juego, tus Aliados ganan 1 a la fuerza hasta la Fase Final. Si es destruido, súbelo a tu Mano.",
    "flavour":
        "Hijo de una sacerdotisa y de un general, era amado por ambos mundos, pero Amón no sonrie todos los días de la misma manera ni siquiera para sus hijos más amados.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9314",
    "edid": "327",
    "slug": "lathyros",
    "name": "lathyros",
    "rarity": "6",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "2",
    "ability":
        "Si Lathyros sale del juego puedes elegir un Aliado para que pierda su habilidad hasta la Fase Final.",
    "flavour":
        "Gracias a los Ptolomeos se recuerdan cosas de siglos cubiertos por la niebla, pero controlar el imperio que alguna vez tuvo Alejandro, resultaba imposible. Los brazos de un rey no pueden abarcar al mundo entero.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9315",
    "edid": "328",
    "slug": "cleopatra_berenis",
    "name": "cleopatra berenis",
    "rarity": "6",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "5",
    "damage": "1",
    "ability":
        "Cuando entra en juego cambia su fuerza por la de un Aliado en juego por el resto del juego.",
    "flavour":
        "Gobernó un año después de su padre, pero fue obligada a casarse con el hombre que habría de asesinarla.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9316",
    "edid": "329",
    "slug": "neos_dionisios",
    "name": "neos dionisios",
    "rarity": "6",
    "race": "16",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "5",
    "ability":
        "Para declarar a Neos Dionisios atacante o bloqueador debes pagar 2 Oros.",
    "flavour":
        "El poderoso monarca fue el primer Prolomeo en tener que lidiar con la presencia de un nuevo cónsul romano, llamado Cayo Julio César.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9317",
    "edid": "330",
    "slug": "olabisi",
    "name": "olabisi",
    "rarity": "6",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "4",
    "ability":
        "Olabisi no puede ser declarado atacante. En respuesta a la Fase de Asignación de Daño, destruye Olabisi para barajar 4 cartas.",
    "flavour":
        "Quisiera saber qué debo hacer para alcanzar la felicidad, cuando veo a mi pueblo en una tristeza tan grande. Soy la suma sacerdotisa de Isis, debo tener una respuesta antes que lleguen las tormentas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9318",
    "edid": "331",
    "slug": "oad",
    "name": "oad",
    "rarity": "6",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability":
        "En tu Fase de Vigilia, sólo una vez por turno y si tienes 6 o más Oros en juego, puedes barajar 2 cartas.",
    "flavour":
        "Soy hija del camino, por dinero puedo curar tu dolor, pero quien me quisiera amarrar ha de ganarse mi corazón, luego tendrá mis poderes.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9319",
    "edid": "332",
    "slug": "las_zesiro",
    "name": "las zesiro",
    "rarity": "6",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "2",
    "ability":
        "Cuando entra en juego, buscar una copia de Las Sesiro en tu Mazo Castillo y ponerla en tu Mano. En respuesta a un ataque oponente, puedes desterrar a Las Zesiro para cancelarlo.",
    "flavour":
        "Las gemelas han de mostrarte lo más dulce de este mundo, pero si traicionas su confianza, morirás como un esbirro de la sombra.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9320",
    "edid": "333",
    "slug": "urbi",
    "name": "urbi",
    "rarity": "6",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "3",
    "ability":
        "En tu Fase de Vigilia, sólo una vez por turno, puedes barajar una carta de tu Mano para robar 1 carta.",
    "flavour":
        "Noble es saza de tus ancestros, por ahora trata de sonreir a los griegos, mañana vendrá el amanecer de Egipto, y Amón estará ahí para celebrarlo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9321",
    "edid": "334",
    "slug": "tirano_de_las_arenas",
    "name": "tirano de las arenas",
    "rarity": "6",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "3",
    "ability":
        "No puede ser anulado. En respuesta a que sea declarado atacante, puedes pagar 3 Oros para que gane 1 a la fuerza hasta la Fase Final.",
    "flavour":
        "El templo persa fue instalado en las cercanías Nubias, nadie fue capaz de contener la ira del sumo Sacerdote. Ruamen el Fallaz fue su nombre y el fuego, su único amor.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9322",
    "edid": "335",
    "slug": "neema",
    "name": "neema",
    "rarity": "6",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "4",
    "damage": "1",
    "ability":
        "Si Neema es declarado bloqueador gana 1 a la fuerzas por cada Oro que tengas en juego.",
    "flavour":
        "La hija de los mercaderes más ricos, ahora es una virgen del templo de Isis. Quizás el corazón de los hombres jamás encuentre la paz, pero ella está dispuesta a comenzar su búsqueda.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9323",
    "edid": "336",
    "slug": "chike_de_la_sombra",
    "name": "chike de la sombra",
    "rarity": "6",
    "race": "10",
    "type": "1",
    "keywords": "None",
    "cost": "1",
    "damage": "1",
    "ability":
        "Si Chike de la Sombra está en tu Cementerio, puedes pagar 1 Oro y ponerlo en juego sin pagar su coste.",
    "flavour":
        "No morir, no vivir, no existir. Abrazar la entropía es el destino de la humanidad, en las montañas romanas,. En las bellas costas de Grecia, en el desierto de mi Egipto natal, el humano debe desaparecer.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9324",
    "edid": "337",
    "slug": "as_el_halcon",
    "name": "as el halcon",
    "rarity": "6",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "1",
    "damage": "1",
    "ability": "As el Halcón gana 2 a la fuerza cuando bloquea.",
    "flavour":
        "Sonrio al recordar la cara que pusiste cuando las arenas tragaban tu cuerpo, nada es verdad cuando entras en mis mortales desiertos. Seth estará complacido con tu muerte.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9325",
    "edid": "338",
    "slug": "patise_y_pihor",
    "name": "patise y pihor",
    "rarity": "6",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "1",
    "ability":
        "En respuesta a que uno de tus Aliados sea destruido, puedes destruir Patise Y Pihor para destruir un Aliado oponente.",
    "flavour":
        "Los héroes de Nubia fueron adorados como dioses, el valor es mejor que cualquier poder sobrenatural, eso no será negado ni por las hojas romanas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9326",
    "edid": "339",
    "slug": "heret_-_kau",
    "name": "heret-kau",
    "rarity": "6",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "3",
    "ability": "La carta que anule a Heret-Kau debe ser desterrado.",
    "flavour":
        "Ella vive sobre los espíritus, sobre las mentes y sobre la magia, el corazón mismo del Ken tiene su rostro.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9327",
    "edid": "340",
    "slug": "ihy",
    "name": "ihy",
    "rarity": "6",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "1",
    "ability":
        "Cuando Ihy entra en juego, puedes buscar en el Mazo Castillo 3 cartas y ponerlas en la parte superior.",
    "flavour":
        "El dios niño sabe que viene en nuestras vidas, pero el silencio ha sido eternamente abrazado por su alma.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9328",
    "edid": "341",
    "slug": "mehen",
    "name": "mehen",
    "rarity": "6",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "3",
    "ability":
        "Si Mehen es anulado o afectado por una habilidad en respuesta, tu oponente debe destruir uno de sus Aliados.",
    "flavour":
        "Te destruiré si intentas entrar en este bote sin ser invitado, soy el protector de Ra, y nadie me ha derrotado jamás.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9329",
    "edid": "342",
    "slug": "ta_-_bitjet",
    "name": "ta-bitjet",
    "rarity": "6",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "3",
    "damage": "5",
    "ability":
        "Ta-Bitjet sólo puede ser declarado atacante si tienes 6 o más Oros en juego.",
    "flavour":
        "La esposa de Horus duerme en una cama de ébano, pero es una poderosa guerrera y una amante gloriosa. Quizás el veneno que corre por su sangre sea la razón de su inmenso poder.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9330",
    "edid": "343",
    "slug": "weneg_alma_de_ra",
    "name": "weneg alma de ra",
    "rarity": "6",
    "race": "3",
    "type": "1",
    "keywords": "None",
    "cost": "2",
    "damage": "2",
    "ability":
        "En respuesta a que tu oponente bote cartas por Daño Directo, destruye Weneg Alma de Ra para que tu oponente bote 2 cartas.",
    "flavour":
        "El caos muere cuando abro mi corazón a la eternidad, soy el poderoso hijo de Ra y nada escapa a mi lanza.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9331",
    "edid": "344",
    "slug": "llamar_avispas",
    "name": "llamar avispas",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "Tus Aliados de raza Sacerdote no pueden ser afectados por habilidades oponentes hasta la Fase Final.",
    "flavour":
        "Las hijas de Nubia son violentas, no perdonarán a quienes se opongan al gran As, seguidor de Seth.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9332",
    "edid": "345",
    "slug": "aves_de_la_noche",
    "name": "aves de la noche",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "5",
    "damage": "0",
    "ability":
        "Elige uno de tus Aliados en juego para que tu oponente bote tantas cartas como coste tenga.",
    "flavour":
        "Los pájaros sombra dejan caer su poder sobre los tristes mortales, sólo los oscuros dioses de Siria pueden dominar sus fatidicas canciones.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9333",
    "edid": "346",
    "slug": "amor_o_traicion",
    "name": "amor o traicion",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability":
        "Bota 3 cartas de tu Mazo Castillo para que uno de tus Aliados gane 3 a la fuerza hata la Fase Final.",
    "flavour":
        "Destruí a mi hermano, dejé atrás a los sirios y a los persas. Aun así seré quien salve a la Tierra de los Prolomeos... Si he de amar a César, lo haré.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9334",
    "edid": "347",
    "slug": "guia_espiritual",
    "name": "guia espiritual",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "5",
    "damage": "0",
    "ability":
        "Tus Aliados de raza Faraón pueden portar un Arma extra por el resto del juego.",
    "flavour":
        "Sin pensar, sin dudar, sin temor. Deja que el alma de la tierra mande tus movimientos, es la única forma de triunfar en este mundo de sombras.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9335",
    "edid": "348",
    "slug": "llamar_al_gran_canibal",
    "name": "llamar al gran canibal",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "1",
    "damage": "0",
    "ability": "Baraja un Aliado de raza Eterno.",
    "flavour":
        "El viento del sur puede cortar tu carne. No dudes, no todos los demonios están en el inframundo.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9336",
    "edid": "349",
    "slug": "migraciones_beduinas",
    "name": "migraciones beduinas",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Si hay un Tótem en juego tus Aliados ganan 1 a la fuerza hasta la Fase Final.",
    "flavour":
        "Muchos llegaron a Egipto desde la lejana Asia, algunos eran comerciantes, otros sólo refugiados, hijos de las guerras Persas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9337",
    "edid": "350",
    "slug": "pastores_del_nilo",
    "name": "pastores del nilo",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "6",
    "damage": "0",
    "ability":
        "Si tienes dos cuartas iguales en juego puedes buscar una copia en el Mazo Castillo y ponerla en juego sin pagar su coste.",
    "flavour":
        "Inocente, cuida a tus animales, que te importen gobiernos y guerras, debes ser puro como el sol que da vida a la tierra del Ken.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9338",
    "edid": "351",
    "slug": "gatos_sagrados",
    "name": "gatos sagrados",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "Si tu oponente juega una habilidad que afecte unos de tus Tótem en juego, cancela esta habilidad y pon el Tótem en tu Línea de Defensa considéralo uno de tus Aliados de igual fuerza que su coste por el resto del juego.",
    "flavour":
        "El templo de Budasti estaba lleno de ellos, los mismos romanos aprendieron a amar a estos pequeños felinos.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9339",
    "edid": "352",
    "slug": "los_ojos_de_la_muerte",
    "name": "los ojos de la muerte",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Cancela una habilidad que afecte uno de tus Aliados, debes barajar ese Aliado.",
    "flavour":
        "Mira directo a mis ojos pequeño, mira cómo morirás y cómo has de fracasar. Te hago el favor de decirte esto: desaparece, no levantes tu espada, ya has sido derrotado.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9340",
    "edid": "353",
    "slug": "caricia_inmortal",
    "name": "caricia inmortal",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Sólo puedes jugar Caricia Inmortal en la Fase de Declaración de Bloqueo. Uno de tus Aliados bloqueadores no puede salir del juego hasta la Fase Final.",
    "flavour":
        "Te elijo como compañero, ahora tú debes cargar con el temple de un reino y el poder de un imperio.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9341",
    "edid": "354",
    "slug": "expulsar_sacerdotes",
    "name": "expulsar sacerdotes",
    "rarity": "6",
    "race": "0",
    "type": "2",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "En respuesta a que un Aliado active su habilidad, debe ser barajado.",
    "flavour":
        "¡Nadie se opone a Alejandro! Mucho menos una secta como ésta! ¡Seth es peor que Hades y más peligroso que los malditos Titanes! No habrá otro dios que el consagrado por el Emperador.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9342",
    "edid": "355",
    "slug": "necropolis_popular",
    "name": "necropolis popular",
    "rarity": "6",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "2",
    "damage": "0",
    "ability":
        "En tu Fase de Vigilia, puedes desterrar 3 cartas de Aliado en tu Cementerio para poner una carta de Aliado de tu Cementerio en tu Mano.",
    "flavour":
        "¿qué los ricos sólo van a la Tierra Sagrada? ¡Basura!Osiris escucha a todos y a todos recibe por igual. Si algo bueno han traido los griegos es el sentido de heroísmo, somos señores de nuestra existencia.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9343",
    "edid": "356",
    "slug": "templo_a_ptolomeo",
    "name": "templo a ptolomeo",
    "rarity": "6",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "En tu Fase de Vigilia, puedes destruir Templo de Ptolomeo y descartar tu Mano para robar 3 cartas.",
    "flavour":
        "El griego conquistó el corazón de un pueblo, ahora será adoptado como amo del mundo intelectual, así como espiritual del mundo entero.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9344",
    "edid": "357",
    "slug": "qsar_ibrim",
    "name": "qsar ibrim",
    "rarity": "6",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "En tu Fase de Vigilia, puedes destruir Qsar Ibrim para poner una carta de tu Cementerio en tu Mano.",
    "flavour":
        "Un pequeño fuerte ha detenido a mil enemigos, las hormigas son poderosas contra elefante, si éstas se transforman en un solo ser.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9345",
    "edid": "358",
    "slug": "meidum",
    "name": "meidum",
    "rarity": "6",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Puededs destruir a Meidum para subir a tu Mano una de tus cartas que va a ser destruida.",
    "flavour":
        "Si los misterios se pudiesen explicar, seguramente perderíamos nuestra alma, somos parte de ellos, las preguntas nos transforman en dioses.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9346",
    "edid": "359",
    "slug": "esna",
    "name": "esna",
    "rarity": "6",
    "race": "0",
    "type": "4",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Siempre que juegues una carta de Aliado, puedes robar una carta.",
    "flavour":
        "Dedicado a los grandes dioses de Egipto, nadie negará el legado dejado por sus seguidores. Sus huellas son heridas en nuestra memoria.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9347",
    "edid": "360",
    "slug": "baston_de_aker",
    "name": "baston de aker",
    "rarity": "6",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "Cuando Bastón de Aker entra en juego, puedes descartar dos cartas de tu Mano para poner una carta de tu Cementerio en tu Mano. El portador gana 1 a la fuerza.",
    "flavour":
        "Los hombres del templo sonrieron, mientras el maestro preparaba la pira fúnebre. Aker sonreía en el mundo de las nieblas.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9348",
    "edid": "361",
    "slug": "mandoble_de_tifon",
    "name": "mandoble de tifon",
    "rarity": "6",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "3",
    "damage": "0",
    "ability":
        "El portador de Mandoble de Tifón gana 2 a la fuerza cuando ataca. Si el portador de Mandoble de Tifón ataca y no es destruido, barájalo en el Mazo Castillo en la Fase Final.",
    "flavour":
        "Los griegos igualaron a Tifón con Seth y construyeron esta preciosa arma, que acabaría con la vida de diez mil invasores.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9349",
    "edid": "362",
    "slug": "lagrima",
    "name": "lagrima",
    "rarity": "6",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability": "El portador pierde su habilidad y gana 2 a la fuerza.",
    "flavour":
        "Esta hoja no te fallará, lo prometo hermano, el mismo Ptolomeo defendió Asiria con ella.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9350",
    "edid": "363",
    "slug": "escudo_ptolemaico",
    "name": "escudo ptolemaico",
    "rarity": "6",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability": "El portador no puede ser barajado.",
    "flavour": "None",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  },
  {
    "id": "9351",
    "edid": "364",
    "slug": "cimitarra_persa",
    "name": "cimitarra persa",
    "rarity": "6",
    "race": "0",
    "type": "3",
    "keywords": "None",
    "cost": "4",
    "damage": "0",
    "ability":
        "Cuando Cimitarra Persa entra en juego, puedes buscar una copia de esta carta y ponerla en juego sin pagar su coste. El Portador gana 2 a la fuerza.",
    "flavour":
        "Esta hoja es moderna y sólida, el futuro llegará desde el oriente.",
    "ed_edid": "47",
    "ed_slug": "encrucijada"
  }
];

class SenderProvider {
  CollectionReference races =
      FirebaseFirestore.instance.collection('encrucijada');

  addUrl() {
    for (var item in x) {
      races
          .doc(item['edid'])
          .set({
            'id': item['id'],
            'edid': item['edid'],
            'slug': item['slug'],
            'name': item['name'],
            'race': item['race'],
            'keywords': item['keywords'],
            'type': item['type'],
            'cost': item['cost'],
            'damage': item['damage'],
            'ability': item['ability'],
            'flavour': item['flavour'],
            'ed_edid': item['ed_edid'],
            'ed_slug': item['ed_slug'],
          })
          .then((value) => print("Url Added"))
          .catchError((error) => print("Failed to add Url: $error"));
    }
  }
}

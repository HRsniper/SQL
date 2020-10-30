DROP TABLE IF EXISTS Usuarios;
    -- DROP TABLE `Usuarios`;

CREATE TABLE Usuarios (
    -- CREATE TABLE `Usuarios` (
    id     INTEGER       PRIMARY KEY AUTOINCREMENT NOT NULL,
        -- `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    nome   VARCHAR (255) NOT NULL,
        -- `nome` varchar(255) default NULL,
    email  VARCHAR (255) UNIQUE NOT NULL,
        -- `email` varchar(255) UNIQUE NOT NULL,
    pais   VARCHAR (100) NOT NULL,
        -- `pais` varchar(100) NOT NULL
    numero VARCHAR (13)
    --   `numero` varchar(13) NOT NULL,
);

    INSERT INTO `Usuarios` (`nome`,`email`,`pais`,`numero`) VALUES ("DEV","DEV@DEV.com","BRASIL","91234-5678");

INSERT INTO Usuarios (nome, email, pais, numero) VALUES ('DEV1', 'DEV1@DEV.com', 'BRASIL', '91234-5678');
INSERT INTO Usuarios (nome, email, pais, numero) VALUES ('DEV2', 'DEV2@DEV.com', 'BRASIL', '91234-5678');
INSERT INTO Usuarios (nome, email, pais, numero) VALUES ('DEV3', 'DEV3@DEV.com', 'BRASIL', '91234-5678');
INSERT INTO Usuarios (nome, email, pais, numero) VALUES ('DEV4', 'DEV4@DEV.com', 'BRASIL', '91234-5678');
INSERT INTO Usuarios (nome, email, pais, numero) VALUES ('DEV5', 'DEV5@DEV.com', 'BRASIL', '91234-5678');

INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Kato","faucibus.orci@Duis.co.uk","Venezuela","16300718 -2656");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Emma","magna.a@DonecestNunc.co.uk","Gibraltar","16231113 -0591");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Keane","Phasellus@odiosagittis.com","Spain","16821126 -7151");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Hilel","ultrices.posuere@Aeneanegetmagna.com","Panama","16920227 -9619");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Sebastian","consequat@risus.org","Cyprus","16870912 -6620");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Odette","sagittis.augue@necenimNunc.ca","Bahamas","16630926 -0757");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Yoko","Fusce.mi@Crasvehiculaaliquet.co.uk","Brunei","16570401 -7317");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Rooney","et@dictummi.org","Venezuela","16680107 -7139");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Melyssa","accumsan.interdum.libero@Nullaeu.edu","Virgin Islands, British","16350325 -0361");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Hoyt","ultricies@Duis.co.uk","Burkina Faso","16760330 -9282");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Upton","malesuada.id.erat@pharetrafelis.edu","Greenland","16000210 -6284");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("May","posuere.cubilia.Curae@tristiquealiquetPhasellus.com","Madagascar","16231130 -4519");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Graham","sodales.elit.erat@non.ca","Russian Federation","16510801 -2849");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Wallace","in.felis@Etiamimperdiet.co.uk","Namibia","16440629 -2070");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Brynn","et.magnis.dis@erosProinultrices.org","Iraq","16660503 -5432");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Dalton","arcu@at.net","Lebanon","16580618 -4270");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Merritt","sociis.natoque.penatibus@egestasFusce.net","Turkmenistan","16180112 -6903");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Mollie","hendrerit.consectetuer@ut.ca","Jersey","16420115 -2776");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Vernon","imperdiet.nec@Etiamligula.net","Uruguay","16060120 -7483");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Mark","Nulla.facilisi@felis.com","Hungary","16090318 -8217");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Byron","Donec.nibh@semperegestas.edu","Singapore","16000906 -5079");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Lunea","augue.eu@dictumultriciesligula.org","Saint Vincent and The Grenadines","16150530 -7775");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Imogene","et@in.co.uk","Bermuda","16141217 -5174");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Blair","vestibulum@Sedauctorodio.edu","San Marino","16800913 -3763");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Moses","nec.tellus@feugiattelluslorem.co.uk","Dominican Republic","16171228 -3272");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Rudyard","dolor@lectusrutrumurna.net","Cook Islands","16420524 -9776");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Nayda","vitae@Suspendisseeleifend.ca","United States","16680213 -2214");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Celeste","posuere@etpede.com","Panama","16780404 -1874");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Beck","ante.Maecenas@ipsumac.ca","Seychelles","16630501 -9017");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Keelie","Mauris.vel@infelisNulla.co.uk","Gambia","16711207 -7768");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Kiayada","ullamcorper.Duis@montesnasceturridiculus.org","Uruguay","16520603 -7102");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Walter","tristique@Utnec.co.uk","Jordan","16370301 -1415");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Martin","dolor.quam.elementum@aliquetmetus.org","United Kingdom (Great Britain)","16860708 -0838");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Preston","sem.semper@magnased.co.uk","Singapore","16420418 -8157");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Adria","arcu@ametornarelectus.ca","Zimbabwe","16750705 -7888");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Bernard","nec.luctus.felis@Donecdignissim.org","Virgin Islands, British","16471106 -2960");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Paula","tellus@libero.net","Trinidad and Tobago","16510209 -8109");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Jocelyn","Curabitur@pharetra.edu","Bolivia","16710119 -4798");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Camille","montes@cursusvestibulum.org","Antigua and Barbuda","16870108 -4272");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("David","lacus.Cras.interdum@aliquetdiamSed.ca","Niue","16440920 -9659");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Gabriel","aliquam@Nuncsedorci.ca","United Arab Emirates","16030812 -4379");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Hunter","non@nequeIn.ca","Uruguay","16190727 -3112");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Kaitlin","aliquam@Curabitursed.ca","Bahrain","16010621 -0412");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Delilah","placerat.orci.lacus@magnisdis.ca","Ecuador","16911107 -0729");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Linus","in.consectetuer.ipsum@Aliquamgravida.ca","Chad","16440806 -0137");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Rooney","fringilla@anteiaculisnec.edu","Isle of Man","16370722 -2968");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Regina","congue.In.scelerisque@utnulla.org","Lesotho","16980524 -3590");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Evangeline","Morbi@inceptoshymenaeosMauris.ca","Nicaragua","16411016 -2957");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Honorato","Cras.eu@estvitae.edu","Guinea-Bissau","16531225 -7065");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Vladimir","in.dolor.Fusce@Donectempuslorem.ca","Sudan","16031216 -1292");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Shea","ac.arcu.Nunc@Nullam.edu","Guinea-Bissau","16210210 -3625");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Lev","elit.Aliquam.auctor@dui.net","Virgin Islands, United States","16680706 -8413");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Gage","gravida.nunc.sed@rhoncusNullam.net","Tanzania","16950220 -7898");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Dolan","elit@quis.ca","Angola","16550528 -3738");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Oscar","Curabitur.egestas.nunc@pellentesquea.net","Maldives","16850927 -2251");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Jolie","habitant.morbi.tristique@blandit.ca","United States","16531015 -6624");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Ali","elementum.purus.accumsan@vulputateeu.co.uk","Montenegro","16911203 -0607");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Ginger","a.aliquet.vel@utaliquam.net","Malta","16100520 -6337");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Quincy","pede.Cum@interdumfeugiat.co.uk","Micronesia","16900727 -6216");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Scarlett","In@ultrices.com","Ecuador","16720709 -9529");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Aurora","Suspendisse@diamatpretium.ca","Iran","16780829 -4099");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Gabriel","quam.quis.diam@iaculisodio.com","China","16040726 -7251");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Sharon","pellentesque.Sed.dictum@nullavulputate.ca","Vanuatu","16080725 -8371");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Gisela","odio.Etiam@maurisMorbi.net","Curaçao","16140805 -8491");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Alea","eu@QuisquevariusNam.ca","Côte D'Ivoire (Ivory Coast)","16080714 -3300");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Irma","In.faucibus.Morbi@Proinvelarcu.org","Sudan","16080622 -0117");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Darrel","auctor.velit@adipiscing.com","Faroe Islands","16110706 -5144");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Carter","habitant.morbi.tristique@sitamet.ca","Palau","16050827 -7241");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Keane","sed@adipiscing.com","French Guiana","16891030 -4560");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Shannon","ante.ipsum.primis@vitaeorciPhasellus.net","Philippines","16810610 -8387");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Joel","facilisis.facilisis.magna@Proin.org","Sint Maarten","16790321 -8274");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("TaShya","Nulla@porttitor.org","Cook Islands","16501108 -6294");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Barry","ante.blandit.viverra@sagittisNullam.co.uk","Zambia","16940912 -8502");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Carissa","pede@egestasAliquam.net","Russian Federation","16981222 -5960");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Vielka","sed.dolor@blanditcongueIn.com","Ukraine","16521016 -6426");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Jescie","Etiam.imperdiet@Phasellusataugue.net","Nicaragua","16170210 -8067");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Warren","ornare.lectus@acfacilisis.edu","Burundi","16350712 -1238");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Jerry","Aliquam@ametconsectetueradipiscing.co.uk","Zimbabwe","16581110 -7837");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Randall","at.fringilla@eumetusIn.edu","Anguilla","16450920 -2323");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Macon","rutrum.non.hendrerit@aliquetProinvelit.com","Nigeria","16540327 -2502");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Kaden","dui.nec.tempus@tincidunttempusrisus.ca","Mongolia","16720430 -4641");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Macon","urna.Nullam@ut.com","Venezuela","16730628 -5136");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Steel","cursus.a@Nuncut.com","Belize","16531121 -5635");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Kenyon","mauris.blandit.mattis@sitamet.com","Andorra","16560524 -6965");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Dara","vel.pede.blandit@parturientmontes.edu","Sudan","16660703 -1132");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Uta","lacinia.Sed.congue@aliquet.edu","Latvia","16600114 -7518");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Honorato","lorem@lacusQuisquepurus.net","Saint Helena, Ascension and Tristan da Cunha","16160803 -0134");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Elmo","commodo@Phasellusliberomauris.co.uk","Macedonia","16120713 -5508");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Jarrod","ac.tellus@cursuspurus.net","Kiribati","16010417 -0980");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Chava","viverra@Maecenasmalesuadafringilla.co.uk","Cuba","16980120 -1253");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Nash","amet.dapibus.id@ut.net","India","16710909 -8264");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Melodie","a.dui@cursus.net","Bhutan","16340811 -7392");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Debra","cursus@Pellentesquehabitant.com","Korea, South","16160930 -5097");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Pamela","lacinia.at@eu.org","Gabon","16590829 -0744");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Deirdre","inceptos.hymenaeos@euismod.ca","Italy","16600817 -0273");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Shelley","leo.Vivamus.nibh@Phasellusnulla.org","Latvia","16341208 -0131");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Zeus","feugiat.Sed.nec@ultricies.edu","Greenland","16140328 -4373");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Audrey","nec.mauris.blandit@vitaepurus.net","Argentina","16031029 -6389");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Hayfa","non.quam@commodo.co.uk","Bosnia and Herzegovina","16990127 -4093");
INSERT INTO Usuarios (nome,email,pais,numero) VALUES ("Isabella","Cras.vehicula.aliquet@arcu.com","Svalbard and Jan Mayen Islands","16411115 -0761");

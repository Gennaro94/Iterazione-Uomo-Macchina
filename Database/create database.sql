CREATE DATABASE `coreshirt2`;
CREATE TABLE `articolo` (
  `idarticolo` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `categoria` varchar(15) NOT NULL,
  `prezzo` decimal(10,0) DEFAULT '12',
  `quantita` int(10) NOT NULL,
  PRIMARY KEY (`idarticolo`)
);
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `recapito` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
);
CREATE TABLE `composizioneordine` (
  `idordine` int(11) NOT NULL,
  `idtshirt` int(11) NOT NULL,
  `pezzi` int(11) NOT NULL,
  PRIMARY KEY (`idordine`,`idtshirt`)
);

CREATE TABLE `composizionerifornimento` (
  `idrifornimento` int(11) NOT NULL,
  `idtshirt` int(11) NOT NULL,
  `pezzi` int(11) NOT NULL,
  PRIMARY KEY (`idrifornimento`,`idtshirt`)
);

CREATE TABLE `dipendente` (
  `idDipendente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `codicefiscale` varchar(16) NOT NULL,
  `stipendio` double DEFAULT '900',
  `tipo` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`idDipendente`)
);

CREATE TABLE `fattura` (
  `idfattura` int(11) NOT NULL AUTO_INCREMENT,
  `idordine` int(11) DEFAULT NULL,
  `indirizzoSpedizione` varchar(100) DEFAULT NULL,
  `totale` decimal(10,0) NOT NULL,
  `iva` varchar(4) DEFAULT '22%',
  PRIMARY KEY (`idfattura`)
);

CREATE TABLE `ordine` (
  `idordine` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `stato` varchar(20) DEFAULT 'inevaso',
  `data` date NOT NULL,
  `indirizzoSpedizione` varchar(100) NOT NULL,
  `totale` decimal(10,0) NOT NULL,
  `CAP` char(5) DEFAULT NULL,
  `metodoP` varchar(15) DEFAULT NULL,
  `pagamento` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idordine`)
);

CREATE TABLE `rifornimento` (
  `idrifornimento` int(11) NOT NULL AUTO_INCREMENT,
  `idDipendente` int(11) DEFAULT NULL,
  `dataRichiesta` date NOT NULL,
  `dataEffettuazione` date NOT NULL,
  `dataConsegnaPrevista` date NOT NULL,
  `stato` varchar(20) DEFAULT 'inevaso',
  `totale` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idrifornimento`)
);

CREATE TABLE `spesa` (
  `idspesa` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(500) NOT NULL,
  `data` date NOT NULL,
  `ammontare` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idspesa`)
);

CREATE TABLE `stipendipagati` (
  `idDipendente` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`idDipendente`,`data`)
);

CREATE TABLE `totale` (
  `totale` decimal(10,0) NOT NULL DEFAULT '10000',
  `anno` int(11) NOT NULL,
  PRIMARY KEY (`anno`)
);

CREATE TABLE `tshirt` (
  `idtshirt` int(11) NOT NULL AUTO_INCREMENT,
  `articolo` int(11) DEFAULT NULL,
  `sesso` varchar(1) NOT NULL,
  `taglia` varchar(3) NOT NULL,
  `colore` char(10) NOT NULL,
  `quantita` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtshirt`)
);

CREATE TABLE Cidade(
	Ccodigo INT NOT NULL PRIMARY KEY,
  Cnome VARCHAR(30) NOT NULL,
  Cestado VARCHAR(30) NOT NULL,
  Cpais VARCHAR(30) NOT NULL
);

CREATE TABLE Aeroporto(
	Acodigo VARCHAR(10) NOT NULL PRIMARY KEY,
  Ccodigo INT NOT NULL,
  FOREIGN KEY(Ccodigo) REFERENCES Cidade(Ccodigo)
);

CREATE TABLE TipoAeronave(
	TAcodigo INT NOT NULL PRIMARY KEY,
  descricao VARCHAR(255)
);

CREATE TABLE Horario(
	HdiaSemana VARCHAR(10) NOT NULL PRIMARY KEY,
  HorarioPartida VARCHAR(30) NOT NULL,
  HorarioChegada VARCHAR(30) NOT NULL
);

CREATE TABLE Passageiro(
	Pcodigo INT NOT NULL PRIMARY KEY,
  Pnome VARCHAR(30) NOT NULL
);

CREATE TABLE Reserva(
	Rcodigo INT NOT NULL PRIMARY KEY,
  Pcodigo INT NOT NULL,
  dataReserva VARCHAR(30) NOT NULL,
  prazoValidade VARCHAR(30) NOT NULL,
  FOREIGN KEY (Pcodigo) REFERENCES Passageiro(Pcodigo)
);

CREATE TABLE Voo(
	Vcodigo INT NOT NULL PRIMARY KEY
);

CREATE TABLE Assento(
	Ascodigo INT NOT NULL PRIMARY KEY,
  numero INT NOT NULL,
  classe VARCHAR(5) NOT NULL
);

CREATE TABLE Trecho(
	Tcodigo INT NOT NULL PRIMARY KEY,
  HdiaSemana VARCHAR(10) NOT NULL,
  Vcodigo INT NOT NULL,
  TAcodigo INT NOT NULL,
  AcodigoPartida VARCHAR(10) NOT NULL,
  AcodigoChegada VARCHAR(10) NOT NULL,
  FOREIGN KEY(HdiaSemana) REFERENCES Horario(HdiaSemana),
  FOREIGN KEY(Vcodigo) REFERENCES Voo(Vcodigo),
  FOREIGN KEY(TAcodigo) REFERENCES TipoAeronave(TAcodigo),
  FOREIGN KEY(AcodigoPartida) REFERENCES Aeroporto(Acodigo),
  FOREIGN KEY(AcodigoChegada) REFERENCES Aeroporto(Acodigo)
);

CREATE TABLE ReservaTrecho(
  RTcodigo INT NOT NULL PRIMARY KEY,
  Rcodigo INT NOT NULL,
  Tcodigo INT NOT NULL,
  Ascodigo INT NOT NULL,
  FOREIGN KEY(Rcodigo) REFERENCES Reserva(Rcodigo),
  FOREIGN KEY(Tcodigo) REFERENCES Trecho(Tcodigo),
  FOREIGN KEY(Ascodigo) REFERENCES Assento(Ascodigo)
);


